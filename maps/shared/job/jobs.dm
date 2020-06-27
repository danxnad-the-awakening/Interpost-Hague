/datum/map/frontier
	allowed_jobs = list(
						/datum/job/captain,
						/datum/job/countess,
						/datum/job/hop,
						/datum/job/supreme_arbiter,
						/datum/job/arbiter,
						///datum/job/medassist
						/datum/job/hos,
						/datum/job/officer,
						/datum/job/detective,
						/datum/job/doctor,
						/datum/job/doctor/undertaker,
						/datum/job/rd,
						/datum/job/scientist,
						/datum/job/qm,
						/datum/job/cargo_tech,
						/datum/job/cargo_tech/machinist,
						/datum/job/mining,
						/datum/job/chef,
						/datum/job/bartender,
						/datum/job/hydro,
						/datum/job/janitor,
						/datum/job/engineer,
						/datum/job/chaplain,
						/datum/job/jester
						///datum/job/assistant,
						///datum/job/cadet
						///datum/job/ouvrier
						///datum/job/jr_upkeep
						///datum/job/raider
						///datum/job/raider/leader
						///datum/job/chaplain,
						)

/datum/map/utopia
	allowed_jobs = list(
						/datum/job/captain,
						/datum/job/countess,
						/datum/job/hop,
						/datum/job/supreme_arbiter,
						/datum/job/arbiter,
						///datum/job/medassist
						/datum/job/hos,
						/datum/job/officer,
						/datum/job/detective,
						/datum/job/doctor,
						/datum/job/doctor/undertaker,
						///datum/job/rd,
						///datum/job/scientist,
						/datum/job/qm,
						/datum/job/cargo_tech,
						/datum/job/cargo_tech/machinist,
						/datum/job/mining,
						/datum/job/chef,
						/datum/job/bartender,
						/datum/job/hydro,
						/datum/job/janitor,
						/datum/job/engineer,
						/datum/job/jester
						///datum/job/assistant,
						///datum/job/cadet
						///datum/job/ouvrier
						///datum/job/jr_upkeep
						///datum/job/raider
						///datum/job/raider/leader
						///datum/job/chaplain,
						)


/datum/map/dreyfus
	allowed_jobs = list(
						/datum/job/captain,
						/datum/job/countess,
						/datum/job/hop,
						/datum/job/supreme_arbiter,
						/datum/job/arbiter,
						///datum/job/medassist
						/datum/job/hos,
						/datum/job/officer,
						/datum/job/detective,
						/datum/job/doctor,
						/datum/job/doctor/undertaker,
						/datum/job/rd,
						/datum/job/scientist,
						/datum/job/qm,
						/datum/job/cargo_tech,
						/datum/job/cargo_tech/machinist,
						/datum/job/mining,
						/datum/job/chef,
						/datum/job/bartender,
						/datum/job/hydro,
						/datum/job/janitor,
						/datum/job/engineer,
						/datum/job/jester
						///datum/job/assistant,
						///datum/job/cadet
						///datum/job/ouvrier
						///datum/job/jr_upkeep
						///datum/job/raider
						///datum/job/raider/leader
						///datum/job/chaplain,
						)

/datum/map/alpha
	allowed_jobs = list(
						/datum/job/captain,
						/datum/job/countess,
						/datum/job/hop,
						/datum/job/supreme_arbiter,
						/datum/job/arbiter,
						///datum/job/medassist
						/datum/job/hos,
						/datum/job/officer,
						/datum/job/detective,
						/datum/job/doctor,
						/datum/job/doctor/undertaker,
						/datum/job/rd,
						/datum/job/scientist,
						/datum/job/qm,
						/datum/job/cargo_tech,
						/datum/job/cargo_tech/machinist,
						/datum/job/mining,
						/datum/job/chef,
						/datum/job/hydro,
						/datum/job/janitor,
						/datum/job/engineer,
						/datum/job/jester
						///datum/job/assistant,
						///datum/job/cadet
						///datum/job/ouvrier
						///datum/job/jr_upkeep
						///datum/job/raider
						///datum/job/raider/leader
						///datum/job/chaplain,
						)

/datum/job/assistant
	title = "Assistant"
	supervisors = "everyone"
	minimal_player_age = 14
	economic_modifier = 1
	ideal_character_age = 21
	alt_titles = null
	social_class = SOCIAL_CLASS_MIN
	total_positions = 0
	department_flag = CIV
	spawn_positions = 1
	access = list(access_maint_tunnels)
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,11), rand(9,11), rand(7,10))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","melee","cleaning","mining"))

/datum/job/captain
	title = "Count"
	supervisors = "your own wits, boredom, the King"
	minimal_player_age = 41
	economic_modifier = 10
	ideal_character_age = 65
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/magistrate
	social_class = SOCIAL_CLASS_MAX
	department_flag = SPT
	sex_lock = MALE


	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(6,9), rand(9,11), rand(10,12))
		H.generate_stats(STAT_HT)
		H.generate_skills()

/datum/job/countess
	title = "Countess"
	supervisors = "your other ruler, the Count"
	minimal_player_age = 41
	economic_modifier = 10
	ideal_character_age = 55
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/countess
	social_class = SOCIAL_CLASS_MAX
	department_flag = SPT
	sex_lock = FEMALE


	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(6,9), rand(9,11), rand(10,12))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("medical","cleaning"))
		to_chat(H, "<span class='warning'>Be wary, as you are not respected as much as the Count. Try to find a guard for yourself.</span>")


/datum/job/hop
	title = "Viscount"
	supervisors = "the Count"
	minimal_player_age = 31
	economic_modifier = 5
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/adjoint
	department_flag = SPT
	social_class = SOCIAL_CLASS_HIGH
	sex_lock = MALE

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(6,9), rand(9,11), rand(10,12))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("melee","ranged","medical"))

/datum/job/rd
	selection_color = "#0055A1"
	title = "Court Magus"
	supervisors = "the Count"
	minimal_player_age = 21
	economic_modifier = 9
	ideal_character_age = 40
	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/science/superviseur
	social_class = SOCIAL_CLASS_HIGH
	sex_lock = MALE
	department_flag = SCI
	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery, access_RC_announce,
			access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_maint_tunnels, access_external_airlocks,
			access_tox_storage, access_teleporter, access_sec_doors,
			access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network, access_rd, access_research, access_medical, access_morgue, access_medical_equip)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery, access_RC_announce,
			access_keycard_auth, access_sec_doors, access_psychiatrist, access_eva, access_maint_tunnels, access_external_airlocks,
			access_tox_storage, access_teleporter, access_sec_doors,
			access_research, access_robotics, access_xenobiology, access_ai_upload, access_tech_storage,
			access_RC_announce, access_keycard_auth, access_tcomsat, access_gateway, access_xenoarch, access_network, access_rd, access_research, access_medical, access_morgue, access_medical_equip)

	equip(var/mob/living/carbon/human/H)
		H.set_species("Machine")
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		..()
		//H.add_stats(rand(5,7), rand(5,8), rand(12,15))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("science","medical", "crafting"))

/datum/job/scientist
	selection_color = "#006BCA"
	title = "Technology Researcher"
	supervisors = "the Court Magus"
	minimal_player_age = 19
	economic_modifier = 2
	ideal_character_age = 30
	total_positions = 1
	spawn_positions = 3
	department_flag = SCI
	access = list(access_robotics, access_tox, access_tox_storage, access_research, access_xenobiology, access_xenoarch, access_robotics)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenoarch, access_robotics)

	equip(var/mob/living/carbon/human/H)
		//H.set_species("Machine") //rd only for now - 08.03
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		..()
		//H.add_stats(rand(5,7), rand(5,8), rand(10,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("science","medical", "crafting"))

/datum/job/doctor
	selection_color = "#633d63"
	title = "Lifebringer"
	department_flag = MED
	supervisors = "the Undertaker"
	minimal_player_age = 19
	economic_modifier = 2
	ideal_character_age = 30
	total_positions = 3
	spawn_positions = 3
	access = list(access_medical, access_medical_equip, access_genetics, access_tox,
			access_chemistry, access_virology, access_surgery)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_tox,
			access_chemistry, access_virology, access_surgery)
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(5,7), rand(5,8), rand(10,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("medical","cleaning", "surgery"))

/datum/job/doctor/undertaker
	title = "Undertaker"
	department = "Medical"
	department_flag = MED

	total_positions = 1
	spawn_positions = 1
	outfit_type = /decl/hierarchy/outfit/job/medical/doctor/undertaker
	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox, access_chemistry, access_virology, access_cmo, access_surgery, access_maint_tunnels)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox, access_chemistry, access_virology, access_cmo, access_surgery, access_maint_tunnels)
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("medical","cleaning", "surgery"))

/datum/job/hos
	title = "Enforcer Chief"
	supervisors = "the Count"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	selection_color = "#601c1c"
	economic_modifier = 5
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/head_peacekeeper
	social_class = SOCIAL_CLASS_HIGH

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(12,18), rand(10,16), rand(8,12))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


/datum/job/officer
	title = "Loyaler Enforcer"
	department = "Security"
	department_flag = SEC
	total_positions = 3
	spawn_positions = 4
	economic_modifier = 3
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/peacekeeper

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


/datum/job/detective
	title = "Detective"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 3
	sex_lock = MALE
	access = list(access_security, access_eva, access_sec_doors, access_maint_tunnels, access_morgue, access_external_airlocks, access_detoffice)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_maint_tunnels, access_external_airlocks, access_detoffice)
	minimal_player_age = 0
	outfit_type = /decl/hierarchy/outfit/job/security/detective

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


/datum/job/qm
	selection_color = "#3d3315"
	title = "Cargo Overseer"
	supervisors = "the Viscount"
	minimal_player_age = 21
	economic_modifier = 3
	ideal_character_age = 30
	total_positions = 1
	spawn_positions = 2
	department_flag = SUP

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(8,12), rand(9,12), rand(7,10))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","engineering", "mining"))

/datum/job/engineer
	title = "Station Maintainer"
	supervisors = "the Viscount"
	minimal_player_age = 16
	economic_modifier = 3
	ideal_character_age = 21
	total_positions = 3
	spawn_positions = 3
	//alt_titles = null
	sex_lock = MALE
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dreyfus/inge/inge
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(10,15), rand(7,10), rand(9,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("crafting","engineering"))

/datum/job/mining
	selection_color = "#7c6a2e"
	title = "Excavation Officer"
	supervisors = "the Cargo Overseer and the Court Magus"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = SUP
	sex_lock = MALE
	access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station, access_xenoarch)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station, access_xenoarch)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,16), rand(9,12), rand(6,9))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("crafting","engineering", "mining"))

/datum/job/cargo_tech
	selection_color = "#7c6a2e"
	title = "Cargo Worker"
	supervisors = "the Cargo Overseer"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)

	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,12), rand(9,12), rand(6,9))
		H.generate_stats(STAT_DX)
		H.generate_skills(list("crafting","engineering", "mining"))

/datum/job/cargo_tech/machinist
	title = "Machinist"
	total_positions = 1
	spawn_positions = 1
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(10,15), rand(7,10), rand(9,14))
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("crafting","engineering"))

//kid roles
/datum/job/ouvrier
	selection_color = "#7c6a2e"
	title = "Cargo Assistant"
	supervisors = "the Cargo Overseer"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = SUP
	department = "Supply"
	access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_manufacturing, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	outfit_type = /decl/hierarchy/outfit/job/cargo_kid
	social_class = SOCIAL_CLASS_MIN

	equip(var/mob/living/carbon/human/H)
		H.set_species("Child")//Actually makes them a child. Called before ..() so they can get their clothes.
		H.add_stats(rand(3,6), rand(12,16), rand(6,9))
		..()


/datum/job/chef
	title = "Chef"
	supervisors = "the Viscount"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	minimal_access = list(access_bar, access_kitchen, access_hydroponics)
	department_flag = SRV
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cooking","melee"))

/datum/job/bartender
	title = "Barkeeper"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Viscount"
	selection_color = "#515151"
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_bar)
	outfit_type = /decl/hierarchy/outfit/job/service/bartender
	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cooking","ranged"))

/datum/job/chaplain
	title = "Priest"
	supervisors = "the Arbiters and Verina"
	minimal_player_age = 21
	economic_modifier = 3
	ideal_character_age = 30
	total_positions = 1
	spawn_positions = 1

	equip(var/mob/living/carbon/human/H)
		..()
		if(!H.religion_is_legal())//Heretical priests would be weird.
			H.religion = LEGAL_RELIGION
		H.generate_stats(STAT_IQ)
		H.generate_skills(list("melee"))
// religion skills in the future maybe...HAHAHA No.

/datum/job/janitor
	title = "Sanitation Technician"
	supervisors = "the Viscount"
	minimal_player_age = 16
	economic_modifier = 1
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = SRV
	equip(var/mob/living/carbon/human/H)
		..()
		//H.add_stats(rand(9,12), rand(9,12), rand(5,9))
		H.generate_stats(STAT_HT)
		H.generate_skills(list("cleaning"))

/datum/job/hydro
	title = "Botanic"
	department = "Service"
	department_flag = SRV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Viscount"
	selection_color = "#515151"
	minimal_access = list(access_bar, access_kitchen, access_hydroponics)
//	alt_titles = list("Hydroponicist")
	outfit_type = /decl/hierarchy/outfit/job/service/gardener

	equip(var/mob/living/carbon/human/H)
		..()
		H.generate_stats(STAT_HT)
		H.generate_skills(list("gardening","cooking"))

/datum/job/jester
	title = "Jester"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "The Viscount"
	selection_color = "#852639"
	minimal_access = list()
	outfit_type = /decl/hierarchy/outfit/job/jester

	equip(var/mob/living/carbon/human/H)
		..()
		//H.generate_stats(STAT_DX)
		H.add_stats(rand(2,18), rand(2,18), rand(2,18), rand(2,18))
		H.generate_skills(list("melee"))


//CHURCH JOBS
//The inquisitor, aka the supreme arbiter.
/datum/job/supreme_arbiter
	title = "Supreme Arbiter"
	department = "Civilian"
	supervisors = "our glorious God, Verina"
	department_flag = CRH
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 5
	selection_color = "#6161aa"
	sex_lock = MALE
	access = list(access_maint_tunnels, access_chapel_office)
	minimal_access = list(access_maint_tunnels, access_chapel_office)
	outfit_type = /decl/hierarchy/outfit/job/supreme_arbiter
	social_class = SOCIAL_CLASS_HIGH

	equip(var/mob/living/carbon/human/H)//Still weaker than the Head Peacekeeper.
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(9,14), rand(8,12), rand(12,16))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))

/datum/job/arbiter
	title = "Inquisitor"
	department = "Civilian"
	supervisors = "the Supreme Arbiter and Verina"
	department_flag = CRH
	total_positions = 2
	spawn_positions = 2
	economic_modifier = 3
	selection_color = "#6161aa"
	sex_lock = MALE
	access = list(access_maint_tunnels, access_chapel_office)
	minimal_access = list(access_maint_tunnels, access_chapel_office)
	outfit_type = /decl/hierarchy/outfit/job/arbiter
	social_class = SOCIAL_CLASS_HIGH

	equip(var/mob/living/carbon/human/H)//Peacekeeper stats.
		..()
		if(!H.religion_is_legal())//So that they can't be heretics.
			H.religion = LEGAL_RELIGION
		//H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills(list("melee","ranged"))


/datum/job/medassist
	selection_color = "#633d63"
	title = "Medical Assistant"
	supervisors = "the Undertaker"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = MED
	department = "Medical"
	access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery)
	minimal_access = list(access_medical, access_medical_equip, access_morgue, access_genetics, access_heads, access_tox,
			access_chemistry, access_virology, access_cmo, access_surgery)
	outfit_type = /decl/hierarchy/outfit/job/medassist.

	equip(var/mob/living/carbon/human/H)
		H.set_species("Child")//Actually makes them a child. Called before ..() so they can get their clothes.
		H.add_stats(rand(3,6), rand(12,16), rand(6,9))
		H.generate_skills(list("medical","cleaning", "surgery"))
		..()

/* Children roles.  They were too buggy, need TODO later
/datum/job/cadet
	selection_color = "#633d63"
	title = "Security Cadet"
	supervisors = "the officers"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = SEC
	department = "Security"
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/cadet

	equip(var/mob/living/carbon/human/H)
		H.set_species("Child")
		H.add_stats(rand(3,6), rand(12,16), rand(6,9))
		H.generate_skills("melee")
		..()

/datum/job/jr_upkeep
	selection_color = "#633d63"
	title = "Junior Engineer"
	supervisors = "the engineers"
	minimal_player_age = 16
	economic_modifier = 2
	ideal_character_age = 21
	total_positions = 2
	spawn_positions = 2
	department_flag = SEC
	department = "Security"
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	minimal_access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_emergency_storage, access_tcomsat)
	outfit_type = /decl/hierarchy/outfit/job/jr_upkeep

	equip(var/mob/living/carbon/human/H)
		H.set_species("Child")
		H.add_stats(rand(3,6), rand(12,16), rand(6,9))
		H.generate_skills("cleaning")
		..()

*/
/*
//OFF STATION JOBS

/datum/job/raider
	title = "Raider"
	department = "Civilian"
	department_flag = CIV
	total_positions = 5
	spawn_positions = 5
	create_record = 0
	account_allowed = 0
	has_email = 0
	//no_late_join = 1
	selection_color = "#6161aa"
	outfit_type = /decl/hierarchy/outfit/shipraiders
	social_class = SOCIAL_CLASS_MIN

	equip(var/mob/living/carbon/human/H)
		..()
		H.real_name = "[get_random_raider_name()]"//Give them a random raider nickname.
		H.name = H.real_name

		//Peacekeeper setup.
		//H.add_stats(rand(11,18), rand(10,14), rand(7,10))
		H.generate_stats(STAT_ST)
		H.generate_skills("ranged")

		//Some dumb if shit.
		if(prob(50))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/shotgun/pump/boltaction/shitty/bayonet(H),slot_back)
		else if(prob(50))
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/shotgun/pump/boltaction/shitty(H),slot_back)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/gun/projectile/shotgun/pump/shitty(H),slot_back)

		if(prob(50))
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas(H),slot_wear_mask)

		//H.religion = ILLEGAL_RELIGION//Their raiders they believe in the raider religion.

/datum/job/raider/leader
	title = "Lead Raider"
	total_positions = 1
	spawn_positions = 1

	equip(var/mob/living/carbon/human/H)
		..()
		H.real_name = "The Leader"
		H.name = H.real_name

//Stupid random names for them.
/datum/job/proc/get_random_raider_name()
	return "[pick("Spook", "Big", "Big Boy", "Big Girl", "Cheese", "Artist", "Greasy", "Dick", "Weasel", "Small", "Dixon", "Dixy", "Rat", "Knot", "Suffering", "Slick", "Scars", "Old Guy", "Heel", "Nine Lives", "Two Fingers", "Poet", "Dash", "Angel", "Bug", "Beast", "Enema", "Animal", "Oz", "Cinnamon", "Heavy", "Echo", "Cannon", "Under", "Smokes", "Joe", "Pig")]"

/obj/item/clothing/under/ert/raider
	name = "raiders uniform"
*/
