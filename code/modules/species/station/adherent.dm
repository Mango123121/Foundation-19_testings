/datum/species/adherent
	name = SPECIES_ADHERENT
	name_plural = "Adherents"

	description = "The Vigil is a relatively loose association of machine-servitors, Adherents, \
	built by an extinct culture. They are devoted to the memory of their long-dead Creators, \
	whose home system and burgeoning stellar empire was scoured to bedrock by a solar flare. \
	Physically, they are large, floating, squidlike machines that made of a crystalline composite."
	hidden_from_codex = FALSE
	silent_steps = TRUE

	meat_type = null
	bone_material = null
	skin_material = null

	genders =                 list(PLURAL)
	cyborg_noun =             null

	icon_template =           'icons/mob/human_races/species/adherent/template.dmi'
	icobase =                 'icons/mob/human_races/species/adherent/body.dmi'
	deform =                  'icons/mob/human_races/species/adherent/body.dmi'
	preview_icon =            'icons/mob/human_races/species/adherent/preview.dmi'
	damage_overlays =         'icons/mob/human_races/species/adherent/damage_overlay.dmi'
	damage_mask =             'icons/mob/human_races/species/adherent/damage_mask.dmi'
	blood_mask =              'icons/mob/human_races/species/adherent/blood_mask.dmi'

	siemens_coefficient =     0
	rarity_value =            6
	min_age =                 8000
	max_age =                 12000
	antaghud_offset_y =       14
	warning_low_pressure =    50
	hazard_low_pressure =     -1
	mob_size =                MOB_LARGE
	strength =                STR_HIGH

	speech_sounds = list('sounds/voice/chime.ogg')
	speech_chance = 25

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_PAIN | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_MINOR_CUT | SPECIES_FLAG_NO_DISEASE
	spawn_flags =   SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN

	appearance_flags = HAS_EYE_COLOR | HAS_BASE_SKIN_COLOURS
	blood_color = "#2de00d"
	flesh_color = "#90edeb"
	slowdown = -1
	hud_type = /datum/hud_data/adherent

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_OTHER
		)
	)

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest/crystal),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin/crystal),
		BP_HEAD =   list("path" = /obj/item/organ/external/head/crystal),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm/crystal),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right/crystal),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/crystal),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/crystal),
		BP_L_LEG =  list("path" = /obj/item/organ/external/tendril),
		BP_R_LEG =  list("path" = /obj/item/organ/external/tendril/two),
		BP_L_FOOT = list("path" = /obj/item/organ/external/tendril/three),
		BP_R_FOOT = list("path" = /obj/item/organ/external/tendril/four)
	)

	has_organ = list(
		BP_BRAIN =        /obj/item/organ/internal/brain/adherent,
		BP_EYES =         /obj/item/organ/internal/eyes/adherent,
		BP_JETS =         /obj/item/organ/internal/powered/jets,
		BP_FLOAT =        /obj/item/organ/internal/powered/float,
		BP_CELL =         /obj/item/organ/internal/cell/adherent,
		BP_COOLING_FINS = /obj/item/organ/internal/powered/cooling_fins
		)
	move_trail = /obj/effect/decal/cleanable/blood/tracks/snake
	max_players = 3

	base_skin_colours = list(
		"Turquoise"   = "",
		"Emerald"     = "_green",
		"Amethyst"    = "_purple",
		"Sapphire"    = "_blue",
		"Ruby"        = "_red",
		"Topaz"       = "_yellow",
		"Quartz"      = "_white",
		"Jet"         = "_black"
	)

/datum/species/adherent/New()
	equip_adjust = list(
		"[slot_l_hand_str]" = list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14)),
		"[slot_r_hand_str]" = list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14)),
		"[slot_back_str]" =   list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14)),
		"[slot_belt_str]" =   list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14)),
		"[slot_head_str]" =   list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 3, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = -3, "y" = 14)),
		"[slot_l_ear_str]" =  list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14)),
		"[slot_r_ear_str]" =  list("[NORTH]" = list("x" = 0, "y" = 14), "[EAST]" = list("x" = 0, "y" = 14), "[SOUTH]" = list("x" = 0, "y" = 14), "[WEST]" = list("x" = 0,  "y" = 14))
	)
	..()

/datum/species/adherent/can_overcome_gravity(mob/living/carbon/human/H)
	. = FALSE
	if (H?.stat == CONSCIOUS)
		for (var/obj/item/organ/internal/powered/float/float in H.internal_organs)
			if (float.active && float.is_usable())
				. = TRUE
				break

/datum/species/adherent/can_fall(mob/living/carbon/human/H)
	. = !can_overcome_gravity(H)

/datum/species/adherent/can_float(mob/living/carbon/human/H)
	return FALSE

/datum/species/adherent/get_slowdown(mob/living/carbon/human/H)
	return slowdown

/datum/species/adherent/handle_fall_special(mob/living/carbon/human/H, turf/landing)
	var/float_is_usable = FALSE
	if (H?.stat == CONSCIOUS)
		for (var/obj/item/organ/internal/powered/float/float in H.internal_organs)
			if (float.is_usable())
				float_is_usable = TRUE
				break
	if (float_is_usable)
		if (istype(landing, /turf/simulated/open))
			H.visible_message("\The [H] descends from \the [landing].", "You descend regally.")
		else
			H.visible_message("\The [H] floats gracefully down from \the [landing].", "You land gently on \the [landing].")
		return TRUE
	return FALSE

/datum/species/adherent/get_blood_name()
	return "coolant"

/datum/species/adherent/skills_from_age(age)
	switch(age)
		if (0 to 1000)    . = -4
		if (1000 to 2000) . =  0
		if (2000 to 8000) . =  4
		else             . =  8

/datum/species/adherent/get_additional_examine_text(mob/living/carbon/human/H)
	if(can_overcome_gravity(H))
		return SPAN_NOTICE("<i>[H.p_they(TRUE)] [H.p_are()] floating on a cloud of shimmering distortion.</i>")

/datum/species/adherent/post_organ_rejuvenate(obj/item/organ/org, mob/living/carbon/human/H)
	org.status |= (ORGAN_BRITTLE|ORGAN_CRYSTAL|ORGAN_ROBOTIC)
