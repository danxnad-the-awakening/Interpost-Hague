/datum
	var/tmp/gc_destroyed //Time when this object was destroyed.
	var/tmp/is_processing = FALSE
	var/list/active_timers  //for SStimer
	var/list/datum_components //for /datum/components

	var/list/comp_lookup
	/// Lazy associated list in the structure of `signals:proctype` that are run when the datum receives that signal
	var/list/list/datum/callback/signal_procs
	/**
	  * Is this datum capable of sending signals?
	  *
	  * Set to true when a signal has been registered
	  */
	var/signal_enabled = FALSE

	/// Datum level flags
	var/datum_flags = null

#ifdef TESTING
	var/tmp/running_find_references
	var/tmp/last_find_references = 0
#endif

// The following vars cannot be edited by anyone
/datum/VV_static()
	return ..() + list("gc_destroyed", "is_processing")

// Default implementation of clean-up code.
// This should be overridden to remove all references pointing to the object being destroyed.
// Return the appropriate QDEL_HINT; in most cases this is QDEL_HINT_QUEUE.
/datum/proc/Destroy(force=FALSE)
	tag = null
	SSnano && SSnano.close_uis(src)
	weakref = null // Clear this reference to ensure it's kept for as brief duration as possible.

	//nano && nano.close_uis(src)

/*
	var/list/timers = active_timers
	active_timers = null
	for(var/thing in timers)
		var/datum/timedevent/timer = thing
		if (timer.spent)
			continue
		qdel(timer)
*/

	if(extensions)
		for(var/expansion_key in extensions)
			var/list/extension = extensions[expansion_key]
			if(islist(extension))
				extension.Cut()
			else
				qdel(extension)
		extensions = null

	if (!isturf(src))	// Not great, but the 'correct' way to do it would add overhead for little benefit.
		cleanup_events(src)

	GLOB.destroyed_event && GLOB.destroyed_event.raise_event(src)

	return QDEL_HINT_QUEUE

/datum/proc/Process()
	set waitfor = 0
	return PROCESS_KILL
