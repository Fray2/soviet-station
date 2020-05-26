/datum/job/assistant
	title = "Freelancer"
	flag = ASSISTANT
	department = DEPARTMENT_CIVILIAN
	department_flag = CIVILIAN
	faction = MAP_FACTION
	total_positions = -1
	spawn_positions = -1
	supervisors = "anyone who pays you"
	difficulty = "Very Easy."
	selection_color = "#dddddd"
	initial_balance	= 100
	wage = WAGE_NONE //Get a job ya lazy bum
	//alt_titles = list("Visitor", "Refugee","Guild Novice","Soteria Intern","Lonestar Intern")
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5)

	access = list(access_maint_tunnels)
	outfit_type = /decl/hierarchy/outfit/job/assistant

	stat_modifiers = list(
		STAT_ROB = 13,
		STAT_TGH = 13,
		STAT_BIO = 13,
		STAT_MEC = 13,
		STAT_VIG = 13,
		STAT_COG = 13
	)

	description = "Убить огромного паука? Выполнить заказ на человека при полном штате службы безопасности? Достать из каюты премьера уникальный лазерный пистолет? Или может просто отправиться за стену и включить солнечные панели? Деньги не пахнут. Найди работу или работай сам на себя. Кради и обналичивай карты, продавай наркотики, торгуй информацией, берись за дело если за него достаточно хорошо платят, стань лучшим и не попадись. По тому что простое пребывание тут не оплачивается, а нарушение законов - дорогое удовольствие. И запомни, что купить можно всё и всех, вопрос лишь в цене."

/obj/landmark/join/start/assistant
	name = "Colonist"
	icon_state = "player-grey"
	join_tag = /datum/job/assistant

/datum/job/trainee
	title = "Trainee"
	flag = ASSISTANT
	faction = ""
	total_positions = -1
	spawn_positions = -1
	difficulty = "Very Easy."
	//latejoin_only = TRUE
	initial_balance	= 1000
	wage = WAGE_LABOUR_DUMB
	also_known_languages = list(LANGUAGE_CYRILLIC = 15, LANGUAGE_SERBIAN = 5)
	outfit_type = /decl/hierarchy/outfit/job/assistant
	supervisors = "anyone from your department"

/datum/job/trainee/blackbuckler				//Blackshield Cadet
	title = "Blackbuckler"
	department = DEPARTMENT_SECURITY
	department_flag = SECURITY
	faction = MAP_FACTION
	description = "Чёрный щит младший. Учитесь у бойцов рангом выше держать стул на кпп тёплым."
	selection_color = "#a7bbc6"
	access = list(access_security, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	outfit_type = /decl/hierarchy/outfit/job/security/blackbuckler
	stat_modifiers = list(
		STAT_ROB = 12,
		STAT_TGH = 10,
		STAT_VIG = 12,
	)

/datum/job/trainee/medical_intern			//Soteria Medical Intern
	title = "Soteria Medical Intern"
	department = DEPARTMENT_MEDICAL
	department_flag = MEDICAL
	faction = MAP_FACTION
	description = "Накладывайте пластыри, мажьте ожоги кремом. Если повезёт - вам доверят вымыть пол в операционной."
	selection_color = "#a8b69a"
	outfit_type = /decl/hierarchy/outfit/job/medical/medical_intern
	access = list(
		access_moebius, access_medical_equip, access_morgue, access_surgery, access_maint_tunnels,
		access_external_airlocks)
	stat_modifiers = list(
		STAT_BIO = 20,
		STAT_COG = 5
	)

/datum/job/trainee/marshal_cadet			//Marshal Cadet
	title = "Marshal Cadet"
	department = DEPARTMENT_SECURITY
	department_flag = SECURITY
	faction = MAP_FACTION
	description = "Вы приставлены к офицеру обучаться поддерживать правопорядок. Следите, чтобы его не убили фрилансеры."
	selection_color = "#a7bbc6"
	outfit_type = /decl/hierarchy/outfit/job/security/marshal_cadet
	access = list(access_security, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	stat_modifiers = list(
		STAT_ROB = 12,
		STAT_TGH = 12,
		STAT_VIG = 10,
	)

/datum/job/trainee/soteria_jr				//Sorteria Junior Researcher
	title = "Sorteria Junior Researcher"
	department = DEPARTMENT_SCIENCE
	department_flag = SCIENCE
	faction = MAP_FACTION
	description = "Корм для слизней, подопытный в вирусологии, тот самый парень, который пойдёт проверить неразорвавшуюся бомбу. Почувствуйте науку всем телом."
	selection_color = "#bdb1bb"
	outfit_type = /decl/hierarchy/outfit/job/science/soteria_jr
	access = list(access_robotics, access_moebius, access_research_equipment, access_external_airlocks, access_maint_tunnels)
	stat_modifiers = list(
		STAT_MEC = 10,
		STAT_COG = 15,
		STAT_BIO = 10,
	)

/datum/job/trainee/guild_novice				//Guild Novice
	title = "Guild Novice"
	department = DEPARTMENT_ENGINEERING
	department_flag = ENGINEERING
	faction = MAP_FACTION
	description = "Чините стены и кофеварки, пока старшие не доверят вам что-то серьёзнее. Не трогайте суперматерию, серьезно."
	access = list(
		access_eva, access_engine_equip, access_maint_tunnels,
		access_external_airlocks, access_construction, access_atmospherics)
	selection_color = "#d5c88f"
	outfit_type = /decl/hierarchy/outfit/job/engineering/guild_novice
	stat_modifiers = list(
		STAT_MEC = 15,
		STAT_COG = 7,
		STAT_TGH = 5,
		STAT_VIG = 5,
	)

/datum/job/trainee/church_novitiate			//Church Novitiate
	title = "Church Novitiate"
	department = DEPARTMENT_CHURCH
	department_flag = CHURCH
	setup_restricted = TRUE
	faction = MAP_FACTION
	description = "Зазывайте прихожан и торгуйте библиями, чтобы накопить на свою. Будьте избиты вектором за невыученные литании."
	access = list(access_maint_tunnels, access_hydroponics, access_nt_disciple)
	selection_color = "#ecd37d"
	outfit_type = /decl/hierarchy/outfit/job/church
	stat_modifiers = list(
	STAT_MEC = 12,
	STAT_BIO = 5,
	STAT_VIG = 5,
	STAT_TGH = 2,
	)

/datum/job/trainee/lss_junkrat				//Lonestar Junkrat
	title = "Lonestar Junkrat"
	department = DEPARTMENT_LSS
	department_flag = LSS
	faction = MAP_FACTION
	description = "Помогайте лонстару отыскивать сокровища в кучах хлама. Сделайте первый шаг к построению мусорной империи или будьте подмастерьем шахтёра."
	access = list(access_maint_tunnels, access_cargo, access_mining, access_mining_station)
	outfit_type = /decl/hierarchy/outfit/job/cargo/junkrat
	stat_modifiers = list(
		STAT_ROB = 5,
		STAT_TGH = 5,
		STAT_VIG = 5,
	)