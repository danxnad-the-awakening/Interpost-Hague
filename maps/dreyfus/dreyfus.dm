#if !defined(using_map_DATUM)

	#include "../shared/exodus_torch/_include.dm"

	#include "dreyfus_announcements.dm"
	#include "dreyfus_areas.dm"
	#include "dreyfus_elevator.dm"
	//#include "dreyfus_ranks.dm"
	#include "dreyfus_presets.dm"
	#include "dreyfus_shuttles.dm"
	#include "dreyfus_effects.dm"


	//CONTENT
	#include "../shared/job/jobs.dm"
	#include "../shared/datums/uniforms.dm"
	#include "../shared/items/cards_ids.dm"
	#include "../shared/items/clothing.dm"

	#include "dreyfus_gamemodes.dm"

	#include "dreyfus-01.dmm" // - Abandonné - IA(?), traitement des déchets
	#include "dreyfus-02.dmm" // - Ingénierie - Moteur. Lifesupport.
	#include "dreyfus-03.dmm" // - Cargo - Ouvrier, Production et logistique
	#include "dreyfus-04.dmm" // - Résidentiel - Clinique, bar et good vibes
	#include "dreyfus-05.dmm" // - Bureaux - Personnel administratif et direction
	#include "dreyfus-06.dmm" // - Coupole - Jardin, réception des invités
	#include "dreyfus-07.dmm"
	#include "dreyfus-08.dmm"

	#include "../shared/exodus_torch/_include.dm"

	#include "../../code/modules/lobby_music/generic_songs.dm"

	#define using_map_DATUM /datum/map/dreyfus

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Dreyfus
#endif
