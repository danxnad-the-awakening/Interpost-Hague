SUBSYSTEM_DEF(persistence)
	name = "Persistence"
	init_order = SS_INIT_MISC_LATE
	flags = SS_NO_FIRE | SS_NEEDS_SHUTDOWN
	var/list/tracking_values = list()
	var/list/persistence_datums = list()

/datum/controller/subsystem/persistence/Initialize()
	. = ..()
	for(var/thing in subtypesof(/datum/persistent))
		var/datum/persistent/P = new thing
		persistence_datums[thing] = P
		P.Initialize()

/datum/controller/subsystem/persistence/Shutdown()
	for(var/thing in persistence_datums)
		var/datum/persistent/P = persistence_datums[thing]
		P.Shutdown()

/datum/controller/subsystem/persistence/proc/track_value(var/atom/value, var/track_type)
	var/turf/T = get_turf(value)
	if(!T)
		return

	if(!(T.z in GLOB.using_map.station_levels))
		return

	if(!tracking_values[track_type])
		tracking_values[track_type] = list()
	tracking_values[track_type] |= value

/datum/controller/subsystem/persistence/proc/forget_value(var/atom/value, var/track_type)
	if(tracking_values[track_type])
		tracking_values[track_type] -= value
