/datum/job/aborigine
	title = "Aborigine"
	faction = MAP_FACTION
	latejoin_only = FALSE
	total_positions = -1
	spawn_positions = 4
	department = DEPARTMENT_NONSTATION
	supervisors = "nobody! Enjoy your time off"
	selection_color = "#9b633e"
//	minimal_access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/aborigine

	stat_modifiers = list(
		STAT_ROB = 13,
		STAT_TGH = 13,
		STAT_BIO = 13,
		STAT_MEC = 13,
		STAT_VIG = 13,
		STAT_COG = 13
	)

	description = "Вы абориген и ваша единственная задача - выжить на планете. Данная профессия не лицензия на гриф, вы не умеете использовать оружие, но если на вас нападают - можете убивать.<br>\
	Вы когда-то были одним из членов колонии, но вас изгнали за какие-то нарушения. Как вам сказали, если вы подойдете в колонию, вас немедленно расстреляют. Будьте осторожны."

/obj/landmark/join/start/aborigine
	name = "Aborigine"
	icon_state = "player-grey"
	join_tag = /datum/job/aborigine
