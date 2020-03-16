Config = {}

Config.Animations = {

	{
		name  = 'festives',
		label = 'Festivos',
		items = {
			{label = "Fumar un cigarro", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING"}},
			{label = "Tocar múscia", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
			{label = "Dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
			{label = "Abrir cerveza", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
			{label = "Beber", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
			{label = "Guitarra en el aire", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
			{label = "Air Shagging", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
			-- {label = "Fumer un joint", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
			{label = "Rellenos en el lugar", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "Vómito en coche", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
		}
	},

	{
		name  = 'greetings',
		label = 'Saludos',
		items = {
			{label = "Saludar", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "apretón de manos", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "comprobar", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "Hola gángster", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Saludo militar", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = 'Trabajo',
		items = {
			{label = "Sospechoso: ir a la policia.", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "pescador", type = "scenario", data = {anim = "world_human_stand_fishing"}},
			{label = "Policía: investigar", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
			{label = "Policía: hablar en la radio.", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
			{label = "Policía : circulación", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
			{label = "Policía: binoculares", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
			{label = "Agricultura: cosecha", type = "scenario", data = {anim = "world_human_gardener_plant"}},
			{label = "Tienda de conveniencia: reparar el motor.", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
			{label = "Médico : observar", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
			{label = "Taxi: hablar con el cliente.", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
			{label = "Taxi : dar factura", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
			{label = "Tendero: dar las compras", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
			{label = "Barman : servir chupito", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
			{label = "Reportero: Saca una foto", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
			{label = "Todos los oficios: tomar notas", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
			{label = "Todos los comercios: golpe de martillo.", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
			{label = "Vagabundo: Haciendo la ronda", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
			{label = "Vagabundo: Haz la estatua.", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = 'Humor',
		items = {
			{label = "Felicidad", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
			{label = "Super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "usted", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
			{label = "uno", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
			{label = "Keskya ?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "A moi", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "Je le savais, putain", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			{label = "Etre épuisé", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
			{label = "Je suis dans la merde", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
			{label = "Tortazo", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
			{label = "Cálmate", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "qué he hecho?", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
			{label = "Tener miedo", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "Peleamos?", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
			{label = "No es posible !", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "abrazar", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "Dedo de honor", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "gilipollas", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
			{label = "Bola en la cabeza", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = 'Deportes',
		items = {
			{label = "Muestra tus musculos", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
			{label = "Barra de peso", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
			{label = "Hacer sentadillas", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
			{label = "Hacer abdominales", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
			{label = "Yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
		}
	},

	{
		name  = 'misc',
		label = 'Varios',
		items = {
			{label = "Beber café", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
			{label = "Sentarse", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			{label = "Esperar contra una pared", type = "scenario", data = {anim = "world_human_leaning"}},
			{label = "Acostado sobre la espalda", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "Acostado sobre su estomago", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
			{label = "Limpiar algo", type = "scenario", data = {anim = "world_human_maid_clean"}},
			{label = "Preparar la comida", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
			{label = "Posicion de busqueda", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
			{label = "Toma un selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
			{label = "Escuchar una puerta", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},

	{
		name  = 'attitudem',
		label = 'Actitudes',
		items = {
			{label = "Normal M", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
			{label = "Normal F", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
			{label = "Depresivo", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "Depresivo Fatal", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "Negocios", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Determinante", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "Casual", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
			{label = "Empachado", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "Dolido", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "Intimidar", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "Obrero", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "Malherido", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "Musculo", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "Choque", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "Sombra", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "Fatiga", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "Prensa", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "Fiero", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "Petite course", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "Mangeuse d'homme", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "Impertinente", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "Arrogante", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
		}
	},
	{
		name  = 'porn',
		label = '+18',
		items = {
			{label = "Follar en el coche", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
			{label = "Mujer haciendo una juerga en coche", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
			{label = "Hombre besándose ** en coche", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
			{label = "Mujer follada ** en coche", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
			{label = "Rascarse las pelotas", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "Hacer encanto", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "Michto posa", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "Mostrar pecho", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "Stip Tease al sol", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
		}
	}
}