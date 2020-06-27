//church outfits
/decl/hierarchy/outfit/job/arbiter
	name = OUTFIT_JOB_NAME("Arbiter")
	head = /obj/item/clothing/head/helmet/arbiter
	uniform = /obj/item/clothing/under/rank/arbiter
	shoes = /obj/item/clothing/shoes/jackboots
	l_ear = /obj/item/device/radio/headset/inquision
	suit = /obj/item/clothing/suit/storage/vest/arbiter
	gloves = /obj/item/clothing/gloves/guards
	id_type = /obj/item/weapon/card/id/arbiter
	pda_type = /obj/item/device/pda/lawyer
	belt = /obj/item/weapon/melee/baton/loaded//So they at least start off with some kind of weapon to defend themselves.
	pda_slot = slot_l_store //So they don't lose their PDA.


/decl/hierarchy/outfit/job/supreme_arbiter
	name = OUTFIT_JOB_NAME("Supreme Arbiter")
	head = /obj/item/clothing/head/helmet/arbiter/supreme
	uniform = /obj/item/clothing/under/rank/arbiter
	shoes = /obj/item/clothing/shoes/jackboots
	l_ear = /obj/item/device/radio/headset/inquision
	suit = /obj/item/clothing/suit/storage/vest/cowl
	gloves = /obj/item/clothing/gloves/guards
	id_type = /obj/item/weapon/card/id/arbiter
	pda_type = /obj/item/device/pda/lawyer

/decl/hierarchy/outfit/job/medical/doctor/undertaker
	name = OUTFIT_JOB_NAME("Undertaker")
	uniform = /obj/item/clothing/under/rank/undertaker
	suit = /obj/item/clothing/suit/undertaker
	shoes = /obj/item/clothing/shoes/undertaker
	gloves = /obj/item/clothing/gloves/undertaker
	mask = /obj/item/clothing/mask/gas/undertaker
	l_hand = null
	r_pocket = /obj/item/device/flashlight/pen
	id_type = /obj/item/weapon/card/id/medical