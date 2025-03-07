// Security Drobes

/obj/machinery/vending/wardrobe/sec_wardrobe //(RED) // ARK STATION EDIT || REDSEC
	name = "\improper SecDrobe"
	desc = "A vending machine stocked with \"Security\" package, including standardized uniforms and general equipment."
	// icon = 'modular_nova/modules/sec_haul/icons/vending/vending.dmi'
	// light_mask = "sec-light-mask"
	// icon_state = "peace"
	product_ads = "Beat perps in style!;The stains wash right out!;You have the right to be fashionable!;Now you can be the fashion police you always wanted to be!"
	vend_reply = "Good luck, Officer!"
	products = list(/obj/item/clothing/suit/hooded/wintercoat/security = 5,
					/obj/item/clothing/suit/toggle/jacket/sec = 5,
					/obj/item/clothing/suit/armor/vest/peacekeeper/brit = 5,
					/obj/item/clothing/neck/security_cape = 5,
					/obj/item/clothing/neck/security_cape/armplate = 5,
					/obj/item/storage/backpack/security = 5,
					/obj/item/storage/backpack/satchel/sec = 5,
					/obj/item/storage/backpack/duffelbag/sec = 5,
					/obj/item/storage/backpack/duffelbag/sec = 5,
					/obj/item/clothing/under/rank/security/officer = 10,
					/obj/item/clothing/under/rank/security/officer/skirt = 10,
					/obj/item/clothing/under/rank/security/peacekeeper = 10,
					/obj/item/clothing/under/rank/security/skyrat/utility = 3,
					/obj/item/clothing/under/rank/security/officer/metropolice = 3,
					/obj/item/clothing/head/helmet/sec/metropolice = 3,
					/obj/item/clothing/shoes/jackboots/sec = 10,
					/obj/item/clothing/head/beret/sec = 5,
					/obj/item/clothing/head/beret/sec/peacekeeper = 5,
					/obj/item/clothing/head/helmet/sec/sol = 5,
					/obj/item/clothing/head/hats/warden/police/patrol = 5,
					/obj/item/clothing/head/costume/ushanka/sec = 10,
					/obj/item/clothing/gloves/color/black = 10,
					/obj/item/clothing/shoes/jackboots/black = 3,
					/obj/item/clothing/shoes/jackboots/tall = 3,
					/obj/item/clothing/mask/balaclava/breath/redscarf = 2,
					/obj/item/clothing/under/rank/security/russobluecamo = 3,
					/obj/item/clothing/under/rank/security/tacticool = 3,
					)
	premium = list( /obj/item/clothing/under/rank/security/officer/formal = 3,
					/obj/item/clothing/suit/jacket/officer/blue = 3,
					/obj/item/clothing/mask/gas/sechailer/syndicate = 2,
					/obj/item/clothing/mask/balaclava = 2,
					/obj/item/clothing/mask/gas/syndicate/ds = 2,
					/obj/item/clothing/mask/gas/syndicate/ds/wide = 2,
					/obj/item/clothing/mask/gas/syndicate/ds/mouth = 2,
					/obj/item/clothing/mask/gas/syndicate/ds/coif = 2,
					/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn = 2,
					/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn/green = 2,
					/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn/tan = 2,
					/obj/item/clothing/under/rank/security/officer/hecu = 3,
					/obj/item/storage/backpack/rucksack = 2,
					/obj/item/storage/backpack/hipbag = 2,
					/obj/item/clothing/mask/gas/sechailer/swat = 1,
					/obj/item/clothing/head/beret/sec/navyofficer = 3,
					)
	refill_canister = /obj/item/vending_refill/wardrobe/sec_wardrobe
	payment_department = ACCOUNT_SEC
	light_color = COLOR_DARK_RED

/obj/machinery/vending/security
	name = "\improper SecTech Equipment Vendor"
	desc = "An Armadyne peacekeeper equipment vendor."
	product_ads = "Crack capitalist skulls!;Beat some heads in!;Don't forget - harm is good!;Your weapons are right here.;Handcuffs!;Freeze, scumbag!;Don't tase me bro!;Tase them, bro.;Why not have a donut?"
	//icon = 'modular_nova/modules/sec_haul/icons/vending/vending.dmi'
	products = list(
		/obj/item/restraints/handcuffs = 8,
		/obj/item/restraints/handcuffs/cable/zipties = 12,
		/obj/item/grenade/flashbang = 6,
		/obj/item/assembly/flash/handheld = 8,
		/obj/item/food/donut/plain = 12,
		/obj/item/storage/box/evidence = 6,
		/obj/item/flashlight/seclite = 6,
		/obj/item/restraints/legcuffs/bola/energy = 10,
		/obj/item/clothing/mask/gas/sechailer = 5,
		/obj/item/armorkit/security = 2,
		/obj/item/armorkit/security/helmet =2,
	)
	premium = list(
		/obj/item/storage/belt/security/webbing = 4,
		/obj/item/storage/belt/security/webbing/peacekeeper = 4,
		/obj/item/coin/antagtoken = 1,
		/obj/item/clothing/head/helmet/blueshirt = 3,
		/obj/item/clothing/suit/armor/vest/blueshirt = 3,
		/obj/item/clothing/gloves/tackler/security = 5,
		/obj/item/grenade/stingbang = 5,
		/obj/item/watertank/pepperspray = 2,
		/obj/item/clothing/suit/armor/vest/alt/sec/metropolice = 3,
	)
	refill_canister = /obj/item/vending_refill/security


/// EngiDrobe

/obj/machinery/vending/wardrobe/engi_wardrobe
	name = "EngiDrobe"
	desc = "A vending machine renowned for vending industrial grade clothing."
	icon_state = "engidrobe"
	product_ads = "Guaranteed to protect your feet from industrial accidents!;Afraid of radiation? Then wear yellow!"
	vend_reply = "Thank you for using the EngiDrobe!"
	products = list(
		/obj/item/clothing/accessory/pocketprotector = 3,
		/obj/item/clothing/head/utility/hardhat = 3,
		/obj/item/clothing/head/utility/hardhat/welding = 3,
		/obj/item/clothing/head/beret/engi = 3,
		/obj/item/clothing/mask/bandana/striped/engineering = 3,
		/obj/item/clothing/under/rank/engineering/engineer = 3,
		/obj/item/clothing/under/rank/engineering/engineer/skirt = 3,
		/obj/item/clothing/under/rank/engineering/engineer/hazard = 3,
		/obj/item/clothing/suit/hazardvest = 3,
		/obj/item/clothing/suit/hooded/wintercoat/engineering = 3,
		/obj/item/clothing/shoes/workboots = 3,
		/obj/item/storage/backpack/industrial = 3,
		/obj/item/storage/backpack/satchel/eng = 3,
		/obj/item/storage/backpack/duffelbag/engineering = 3,
		/obj/item/storage/backpack/messenger/eng = 3,
		/obj/item/clothing/shoes/workboots/toeless = 5,
	)
	refill_canister = /obj/item/vending_refill/wardrobe/engi_wardrobe
	payment_department = ACCOUNT_ENG
	light_color = COLOR_VIVID_YELLOW

// DetDrobe

/obj/machinery/vending/wardrobe/det_wardrobe
	name = "\improper DetDrobe"
	desc = "A machine for all your detective needs, as long as you need clothes."
	icon_state = "detdrobe"
	product_ads = "Apply your brilliant deductive methods in style!"
	vend_reply = "Thank you for using the DetDrobe!"
	products = list(
		/obj/item/clothing/head/fedora/det_hat = 2,
		/obj/item/clothing/under/rank/security/detective = 2,
		/obj/item/clothing/under/rank/security/detective/skirt = 2,
		/obj/item/clothing/suit/jacket/det_suit = 2,
		/obj/item/clothing/shoes/sneakers/brown = 2,
		/obj/item/clothing/gloves/latex = 2,
		/obj/item/clothing/gloves/color/black = 2,
		/obj/item/clothing/accessory/waistcoat = 2,
		/obj/item/clothing/under/rank/security/detective/noir = 2,
		/obj/item/clothing/under/rank/security/detective/noir/skirt = 2,
		/obj/item/clothing/shoes/laceup = 2,
		/obj/item/clothing/head/fedora = 2,
		/obj/item/clothing/suit/jacket/det_suit/dark = 1,
		/obj/item/clothing/suit/jacket/det_suit/noir = 1,
		/obj/item/clothing/neck/tie/disco = 1,
		/obj/item/clothing/under/rank/security/detective/disco = 1,
		/obj/item/clothing/suit/jacket/det_suit/disco = 1,
		/obj/item/clothing/shoes/discoshoes = 1,
		/obj/item/clothing/glasses/regular/kim = 1,
		/obj/item/clothing/under/rank/security/detective/kim = 1,
		/obj/item/clothing/suit/jacket/det_suit/kim = 1,
		/obj/item/clothing/gloves/kim = 1,
		/obj/item/clothing/shoes/kim = 1,
		/obj/item/reagent_containers/cup/glass/flask/det = 2,
		/obj/item/storage/fancy/cigarettes = 5,
		/obj/item/storage/fancy/cigarettes/cigpack_candy = 5,
	)
	premium = list(
		/obj/item/clothing/head/flatcap = 1,
		/obj/item/clothing/suit/jacket/det_suit/fore_blue = 2,
		/obj/item/clothing/suit/jacket/det_suit/fore_blue/fore_red = 2,
		/obj/item/clothing/suit/jacket/det_suit/fore_blue/fore_blue_trench = 2,
		/obj/item/clothing/suit/jacket/det_suit/fore_blue/fore_red_trench = 2,
	)
	refill_canister = /obj/item/vending_refill/wardrobe/det_wardrobe
	extra_price = PAYCHECK_COMMAND * 1.75
	payment_department = ACCOUNT_SEC


/// DeusVend

/obj/machinery/vending/wardrobe/chap_wardrobe
	name = "DeusVend"
	desc = "God wills your purchase."
	icon_state = "chapdrobe"
	product_ads = "Are you being bothered by cultists or pesky revenants? Then come and dress like the holy man!;Clothes for men of the cloth!"
	vend_reply = "Thank you for using the DeusVend!"
	products = list(
		/obj/item/choice_beacon/holy = 1,
		/obj/item/clothing/accessory/pocketprotector/cosmetology = 1,
		/obj/item/clothing/under/rank/civilian/chaplain = 1,
		/obj/item/clothing/under/rank/civilian/chaplain/skirt = 2,
		/obj/item/clothing/shoes/sneakers/black = 1,
		/obj/item/clothing/suit/chaplainsuit/nun = 1,
		/obj/item/clothing/head/chaplain/nun_hood = 1,
		/obj/item/clothing/suit/chaplainsuit/holidaypriest = 1,
		/obj/item/clothing/suit/hooded/chaplainsuit/monkhabit = 1,
		/obj/item/clothing/head/chaplain/kippah = 3,
		/obj/item/clothing/suit/chaplainsuit/whiterobe = 1,
		/obj/item/clothing/head/chaplain/taqiyah/white = 1,
		/obj/item/clothing/head/chaplain/taqiyah/red = 3,
		/obj/item/clothing/suit/chaplainsuit/monkrobeeast = 1,
		/obj/item/clothing/head/rasta = 1,
		/obj/item/clothing/suit/chaplainsuit/shrinehand = 1,
		/obj/item/storage/backpack/cultpack = 1,
		/obj/item/storage/fancy/candle_box = 2,
		/obj/item/radio/headset/headset_srv = 2,
		/obj/item/clothing/suit/chaplainsuit/habit = 1,
		/obj/item/clothing/head/chaplain/habit_veil = 1,
		/obj/item/clothing/neck/cross = 8,
		/obj/item/clothing/neck/bandagewraps = 3,
	)
	contraband = list(
		/obj/item/toy/plush/ratplush = 1,
		/obj/item/toy/plush/narplush = 1,
	)
	premium = list(
		/obj/item/clothing/head/chaplain/bishopmitre = 1,
		/obj/item/clothing/suit/chaplainsuit/bishoprobe = 1,
		/obj/item/clothing/head/chaplain/medievaljewhat = 3,
		/obj/item/clothing/head/chaplain/clownmitre = 1,
		/obj/item/clothing/suit/chaplainsuit/clownpriest = 1,
	)
	refill_canister = /obj/item/vending_refill/wardrobe/chap_wardrobe
	payment_department = ACCOUNT_SRV

/// Medidrobe

/obj/machinery/vending/wardrobe/medi_wardrobe
	name = "\improper MediDrobe"
	desc = "A vending machine rumoured to be capable of dispensing clothing for medical personnel."
	icon_state = "medidrobe"
	product_ads = "Make those blood stains look fashionable!!"
	vend_reply = "Thank you for using the MediDrobe!"
	products = list(
		/obj/item/clothing/accessory/pocketprotector = 4,
		/obj/item/clothing/head/costume/nursehat = 4,
		/obj/item/clothing/head/beret/medical = 4,
		/obj/item/clothing/head/utility/surgerycap = 4,
		/obj/item/clothing/head/utility/surgerycap/purple = 4,
		/obj/item/clothing/head/utility/surgerycap/green = 4,
		/obj/item/clothing/head/beret/medical/paramedic = 4,
		/obj/item/clothing/head/soft/paramedic = 4,
		/obj/item/clothing/head/utility/head_mirror = 4,
		/obj/item/clothing/mask/bandana/striped/medical = 4,
		/obj/item/clothing/mask/surgical = 4,
		/obj/item/clothing/under/rank/medical/doctor = 4,
		/obj/item/clothing/under/rank/medical/doctor/skirt = 4,
		/obj/item/clothing/under/rank/medical/scrubs/blue = 4,
		/obj/item/clothing/under/rank/medical/scrubs/green = 4,
		/obj/item/clothing/under/rank/medical/scrubs/purple = 4,
		/obj/item/clothing/under/rank/medical/paramedic = 4,
		/obj/item/clothing/under/rank/medical/paramedic/skirt = 4,
		/obj/item/clothing/suit/toggle/labcoat = 4,
		/obj/item/clothing/suit/toggle/labcoat/paramedic = 4,
		/obj/item/clothing/suit/apron/surgical = 4,
		/obj/item/clothing/suit/hooded/wintercoat/medical = 4,
		/obj/item/clothing/suit/hooded/wintercoat/medical/paramedic = 4,
		/obj/item/clothing/shoes/sneakers/white = 4,
		/obj/item/clothing/shoes/sneakers/blue = 4,
		/obj/item/clothing/gloves/latex/nitrile = 4,
		/obj/item/clothing/gloves/latex = 4,
		/obj/item/storage/backpack/duffelbag/med = 4,
		/obj/item/storage/backpack/medic = 4,
		/obj/item/storage/backpack/satchel/med = 4,
		/obj/item/storage/backpack/messenger/med = 4,
		/obj/item/radio/headset/headset_med = 4,
		/obj/item/clothing/suit/toggle/labcoat/paramedic/red = 3,
		/obj/item/clothing/suit/toggle/labcoat/paramedic/red/highvis = 2,
		/obj/item/clothing/suit/toggle/labcoat/paramedic/red/paramedic_vest = 3,
	)
	refill_canister = /obj/item/vending_refill/wardrobe/medi_wardrobe
	payment_department = ACCOUNT_MED

// Generic Clothes mate

/obj/machinery/vending/clothing
	name = "ClothesMate"
	desc = "A vending machine for clothing."
	icon_state = "clothes"
	icon_deny = "clothes-deny"
	panel_type = "panel15"
	product_slogans = "Dress for success!;Prepare to look swagalicious!;Look at all this swag!;Why leave style up to fate? Use the ClothesMate!"
	vend_reply = "Thank you for using the ClothesMate!"
	product_categories = list(
		list(
			"name" = "Head",
			"icon" = "hat-cowboy",
			"products" = list(
				/obj/item/clothing/head/wig/natural = 4,
				/obj/item/clothing/head/costume/fancy = 4,
				/obj/item/clothing/head/beanie = 8,
				/obj/item/clothing/head/beret = 10,
				/obj/item/clothing/mask/bandana = 3,
				/obj/item/clothing/mask/bandana/striped = 3,
				/obj/item/clothing/mask/bandana/skull = 3,
				/obj/item/clothing/neck/scarf = 6,
				/obj/item/clothing/neck/large_scarf = 6,
				/obj/item/clothing/neck/large_scarf/red = 6,
				/obj/item/clothing/neck/large_scarf/green = 6,
				/obj/item/clothing/neck/large_scarf/blue = 6,
				/obj/item/clothing/neck/infinity_scarf = 6,
				/obj/item/clothing/neck/tie = 6,
				/obj/item/clothing/neck/bowtie = 6,
				/obj/item/clothing/head/rasta = 3,
				/obj/item/clothing/head/chaplain/kippah = 3,
				/obj/item/clothing/head/chaplain/taqiyah/red = 3,
				/obj/item/clothing/head/hats/tophat = 3,
				/obj/item/clothing/head/fedora = 3,
				/obj/item/clothing/head/hats/bowler = 3,
				/obj/item/clothing/head/cowboy/white = 1,
				/obj/item/clothing/head/cowboy/grey = 1,
				/obj/item/clothing/head/costume/sombrero/green = 1,
				/obj/item/clothing/head/costume/nightcap/blue = 2,
				/obj/item/clothing/head/costume/nightcap/red = 2,
			),
		),

		list(
			"name" = "Accessories",
			"icon" = "glasses",
			"products" = list(
				/obj/item/clothing/accessory/pride = 15,
				/obj/item/clothing/accessory/waistcoat = 4,
				/obj/item/clothing/suit/toggle/suspenders = 4,
				/obj/item/clothing/neck/tie/horrible = 3,
				/obj/item/clothing/glasses/regular = 2,
				/obj/item/clothing/glasses/regular/jamjar = 1,
				/obj/item/clothing/glasses/orange = 1,
				/obj/item/clothing/glasses/red = 1,
				/obj/item/clothing/glasses/monocle = 1,
				/obj/item/clothing/gloves/fingerless = 2,
				/obj/item/storage/belt/fannypack = 3,
				/obj/item/storage/belt/fannypack/blue = 3,
				/obj/item/storage/belt/fannypack/red = 3,
			),
		),

		list(
			"name" = "Under",
			"icon" = "shirt",
			"products" = list(
				/obj/item/clothing/under/pants/slacks = 5,
				/obj/item/clothing/under/shorts = 5,
				/obj/item/clothing/under/pants/jeans = 5,
				/obj/item/clothing/under/shorts/jeanshorts = 5,
				/obj/item/clothing/under/costume/buttondown/slacks = 4,
				/obj/item/clothing/under/costume/buttondown/shorts = 4,
				/obj/item/clothing/under/costume/buttondown/skirt = 4,
				/obj/item/clothing/under/dress/sundress = 2,
				/obj/item/clothing/under/dress/tango = 2,
				/obj/item/clothing/under/dress/skirt/plaid = 4,
				/obj/item/clothing/under/dress/skirt/turtleskirt = 4,
				/obj/item/clothing/under/misc/overalls = 2,
				/obj/item/clothing/under/pants/camo = 2,
				/obj/item/clothing/under/pants/track = 2,
				/obj/item/clothing/under/costume/kilt = 1,
				/obj/item/clothing/under/dress/striped = 1,
				/obj/item/clothing/under/dress/sailor = 1,
				/obj/item/clothing/under/dress/redeveninggown = 1,
				/obj/item/clothing/under/misc/pj/blue = 2,
				/obj/item/clothing/under/misc/pj/red = 2,
			),
		),

		list(
			"name" = "Suits & Skirts",
			"icon" = "vest",
			"products" = list(
				/obj/item/clothing/suit/toggle/jacket/sweater = 4,
				/obj/item/clothing/suit/jacket/oversized = 4,
				/obj/item/clothing/suit/jacket/fancy = 4,
				/obj/item/clothing/suit/toggle/lawyer/greyscale = 4,
				/obj/item/clothing/suit/hooded/wintercoat/custom = 2,
				/obj/item/clothing/suit/hooded/wintercoat = 2,
				/obj/item/clothing/under/suit/navy = 1,
				/obj/item/clothing/under/suit/black_really = 1,
				/obj/item/clothing/under/suit/burgundy = 1,
				/obj/item/clothing/under/suit/charcoal = 1,
				/obj/item/clothing/under/suit/white = 1,
				/obj/item/clothing/under/costume/buttondown/slacks/service = 4,
				/obj/item/clothing/under/costume/buttondown/skirt/service = 4,
				/obj/item/clothing/suit/jacket/bomber = 2,
				/obj/item/clothing/suit/jacket/puffer/vest = 2,
				/obj/item/clothing/suit/jacket/puffer = 2,
				/obj/item/clothing/suit/jacket/letterman = 2,
				/obj/item/clothing/suit/jacket/letterman_red = 2,
				/obj/item/clothing/suit/costume/hawaiian = 4,
				/obj/item/clothing/suit/costume/poncho = 1,
				/obj/item/clothing/under/dress/skirt = 2,
				/obj/item/clothing/under/suit/white/skirt = 2,
				/obj/item/clothing/under/rank/captain/suit/skirt = 2,
				/obj/item/clothing/under/rank/civilian/head_of_personnel/suit/skirt = 2,
				/obj/item/clothing/under/rank/civilian/purple_bartender = 2,
				/obj/item/clothing/suit/jacket/miljacket = 1,
				/obj/item/clothing/suit/apron/overalls = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/graphic = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/graphic/ian = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/wornout = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/wornout/graphic = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/wornout/graphic/ian = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/messy = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/messy/graphic = 2,
				/obj/item/clothing/suit/costume/wellworn_shirt/messy/graphic/ian = 2,
			),
		),

		list(
			"name" = "Shoes",
			"icon" = "socks",
			"products" = list(
				/obj/item/clothing/shoes/sneakers/black = 4,
				/obj/item/clothing/shoes/sneakers/white = 4,
				/obj/item/clothing/shoes/sandal = 2,
				/obj/item/clothing/shoes/laceup = 2,
				/obj/item/clothing/shoes/winterboots = 2,
				/obj/item/clothing/shoes/glow = 2,
				/obj/item/clothing/shoes/cowboy = 2,
				/obj/item/clothing/shoes/cowboy/white = 2,
				/obj/item/clothing/shoes/cowboy/black = 2,
				/obj/item/clothing/shoes/jackboots/sec = 4, // Ark Station 13 Edit
			),
		),

		list(
			"name" = "Special",
			"icon" = "star",
			"products" = list(
				/obj/item/clothing/head/costume/football_helmet = 6,
				/obj/item/clothing/under/costume/football_suit = 6,
				/obj/item/clothing/suit/costume/football_armor = 6,

				/obj/item/clothing/suit/mothcoat = 3,
				/obj/item/clothing/suit/mothcoat/winter = 3,
				/obj/item/clothing/head/mothcap = 3,

				/obj/item/clothing/suit/hooded/ethereal_raincoat = 3,
				/obj/item/clothing/under/ethereal_tunic = 3,

				/obj/item/clothing/suit/costume/wellworn_shirt/graphic/ian = 1,
				/obj/item/clothing/suit/costume/irs = 20,
				/obj/item/clothing/head/costume/irs = 20,
				/obj/item/clothing/head/costume/tmc = 20,
				/obj/item/clothing/head/costume/deckers = 20,
				/obj/item/clothing/head/costume/yuri = 20,
				/obj/item/clothing/head/costume/allies = 20,
				/obj/item/clothing/glasses/osi = 20,
				/obj/item/clothing/glasses/phantom = 20,
				/obj/item/clothing/mask/gas/driscoll = 20,
				/obj/item/clothing/under/costume/yuri = 20,
				/obj/item/clothing/under/costume/dutch = 20,
				/obj/item/clothing/under/costume/osi = 20,
				/obj/item/clothing/under/costume/tmc = 20,
				/obj/item/clothing/suit/costume/deckers = 20,
				/obj/item/clothing/suit/costume/soviet = 20,
				/obj/item/clothing/suit/costume/yuri = 20,
				/obj/item/clothing/suit/costume/tmc = 20,
				/obj/item/clothing/suit/costume/pg = 20,
				/obj/item/clothing/shoes/jackbros = 20,
				/obj/item/clothing/shoes/saints = 20,
			),
		),

		list(
			"name" = "Sky Clothes",
			"icon" = "cloud-rain",
			"products" = list(
				/obj/item/clothing/under/syndicate/tacticool = 2,
				/obj/item/clothing/under/syndicate/tacticool/skirt = 2,
				/obj/item/clothing/under/syndicate/tacticool/black = 2,
				/obj/item/clothing/suit/furcoat = 2,
				/obj/item/clothing/mask/gas/nightlight = 2,
				/obj/item/clothing/mask/gas/nightlight/fir22 = 1,
				/obj/item/clothing/head/caligram_cap_tan = 3,
				/obj/item/clothing/under/jumpsuit/caligram_fatigues_tan = 3,
				/obj/item/clothing/suit/jacket/caligram_parka_tan = 3,
				/obj/item/clothing/shoes/clown_shoes/britches = 1,
				/obj/item/clothing/under/rank/civilian/clown/britches = 1,
				/obj/item/clothing/mask/gas/britches = 1,
				/obj/item/clothing/suit/jacket/brasspriest = 2,
				/obj/item/clothing/suit/jacket/hydrogenrobes = 2,
				/obj/item/clothing/under/wetsuit_norm = 2,
				/obj/item/clothing/head/drake_skull = 1,
				/obj/item/clothing/gloves/fingerless/blutigen_wraps = 2,
				/obj/item/clothing/suit/blutigen_kimono = 2,
				/obj/item/clothing/under/custom/blutigen_undergarment = 1,
				/obj/item/clothing/head/avipilot = 2,
				/obj/item/clothing/gloves/netra = 3,
				/obj/item/clothing/shoes/jackboots/netra = 2,
				/obj/item/clothing/suit/warm_sweater = 2,
				/obj/item/clothing/suit/heart_sweater = 2,
				/obj/item/clothing/suit/warm_coat = 2,
			),
		),

		list(
			"name" = "Ark Clothes",
			"icon" = "cloud-moon",
			"products" = list(
				/obj/item/clothing/under/syndicate/tacticool = 2,
				/obj/item/clothing/under/syndicate/tacticool/skirt = 2,
				/obj/item/clothing/under/syndicate/tacticool/black = 2,
				/obj/item/clothing/under/syndicate = 2,
				/obj/item/clothing/under/syndicate/skirt = 2,
				/obj/item/clothing/under/syndicate/inteq = 2,
				/obj/item/clothing/under/syndicate/inteq_skirt = 2,
				/obj/item/clothing/under/syndicate/inteq_eng = 2,
				/obj/item/clothing/under/syndicate/inteq_eng_skirt = 2,
				/obj/item/clothing/under/syndicate/inteq_med = 2,
				/obj/item/clothing/under/syndicate/inteq_med_skirt = 2,
				/obj/item/clothing/under/syndicate/inteq_maid = 2,
				/obj/item/clothing/head/maid/syndicate/inteq = 2,
				/obj/item/clothing/head/soft/inteq = 2,
				/obj/item/clothing/head/soft/inteq_med = 2,
				/obj/item/clothing/gloves/combat/maid/inteq = 2,
				/obj/item/storage/backpack/security/inteq = 2,
				/obj/item/storage/backpack/satchel/inteq = 2,
				/obj/item/clothing/mask/balaclava/breath/inteq = 2,
				/obj/item/clothing/head/costume/ushanka = 5,
				/obj/item/clothing/suit/jacket/letterman_syndie = 1,
				/obj/item/clothing/under/costume/jabroni = 3,
				/obj/item/clothing/under/costume/geisha = 3,
				/obj/item/clothing/suit/hooded/wintercoat/colourable = 1,
				/obj/item/clothing/under/dress/baroness = 1,
				/obj/item/clothing/under/dress/baroness/alt = 1,
				/obj/item/clothing/under/arkstation/female/skinsuit = 2,
				/obj/item/clothing/under/arkstation/female/skinsuit/grey = 2,
				/obj/item/clothing/under/arkstation/skinsuitleo = 2,
				/obj/item/clothing/under/arkstation/skinsuitleo/grey = 2,
				/obj/item/clothing/under/arkstation/leotard = 2,
				/obj/item/clothing/under/arkstation/leotard/color = 2,
				/obj/item/clothing/under/arkstation/half_moon = 2,
				/obj/item/clothing/under/arkstation/swim_striped = 2,
				/obj/item/clothing/under/arkstation/swim_cow = 2,
				/obj/item/clothing/under/arkstation/swim_highclass = 2,
				/obj/item/clothing/under/arkstation/swim_risque = 2,
				/obj/item/clothing/under/arkstation/swim_stream = 2,
				/obj/item/clothing/under/arkstation/croptops/main = 4,
				/obj/item/clothing/suit/hooded/pijama = 4,
				/obj/item/clothing/under/arkstation/croptops/drivejacket = 2,
				/obj/item/clothing/under/arkstation/croptops/olive_civ = 2,
				/obj/item/clothing/under/arkstation/croptops/grey_civ = 2,
				/obj/item/clothing/shoes/jackboots/tall = 3,
				/obj/item/clothing/shoes/jackboots/toeless = 3,
				/obj/item/clothing/neck/bandagewraps = 5,
				/obj/item/clothing/mask/gas/syndicate/ds = 1,
				/obj/item/clothing/mask/gas/syndicate/ds/wide = 1,
				/obj/item/clothing/mask/gas/syndicate/ds/mouth = 1,
				/obj/item/clothing/mask/gas/syndicate/ds/coif = 1,
				/obj/item/clothing/mask/balaclava/breath/redscarf = 2,
				/obj/item/clothing/mask/balaclava/breath/redscarf/bluescarf	= 2,
				/obj/item/clothing/mask/balaclava/breath/redscarf/greenscarf = 2,
				/obj/item/clothing/mask/balaclava/breath/redscarf/purplescarf = 2,
				/obj/item/clothing/mask/balaclava/breath/redscarf/yellowscarf = 2,
				/obj/item/clothing/mask/gas/sechailer/syndicate	= 2,
				/obj/item/clothing/mask/durak = 1,
				/obj/item/storage/backpack/rucksack = 1,
				/obj/item/storage/backpack/hipbag = 1,
				/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn = 1,
				/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn/green = 1,
				/obj/item/clothing/mask/gas/sechailer/syndicate/flektarn/tan = 1,
				/obj/item/clothing/suit/toggle/jacket/flannel/white = 5,
				/obj/item/clothing/suit/toggle/hawaiiblack = 3,
				/obj/item/clothing/suit/toggle/hawaiiblack/hawaiifuchs = 3,
				/obj/item/clothing/suit/toggle/hawaiiblack/hawaiivine = 3,
				/obj/item/clothing/suit/toggle/hawaiiblack/hawaiiorange = 3,
				/obj/item/clothing/suit/toggle/hawaiiblack/hawaiimotu = 3,
				/obj/item/clothing/under/pants/slav = 3,
				/obj/item/clothing/under/dress/wedding_dress/bride_blue = 1,
				/obj/item/clothing/under/dress/wedding_dress/bride_blue/bride_orange = 1,
				/obj/item/clothing/under/dress/wedding_dress/bride_blue/bride_purple = 1,
				/obj/item/clothing/under/dress/wedding_dress/bride_blue/bride_red = 1,
				/obj/item/clothing/neck/windy_scarf = 3,
			),
		),
	)

	contraband = list(
		/obj/item/clothing/under/costume/soviet = 1,
		/obj/item/storage/belt/fannypack/black = 2,
		/obj/item/clothing/under/rank/centcom/officer/replica = 1,
		/obj/item/clothing/under/rank/centcom/officer_skirt/replica = 1,
	)
	premium = list(/obj/item/clothing/under/suit/checkered = 1,
		/obj/item/clothing/head/costume/mailman = 1,
		/obj/item/clothing/under/misc/mailman = 1,
		/obj/item/clothing/suit/jacket/leather = 1,
		/obj/item/clothing/suit/jacket/leather/biker = 1,
		/obj/item/clothing/neck/necklace/dope = 3,
		/obj/item/clothing/suit/jacket/letterman_nanotrasen = 1,
		/obj/item/clothing/under/costume/swagoutfit = 1,
		/obj/item/clothing/shoes/swagshoes = 1,
		/obj/item/instrument/piano_synth/headphones/spacepods = 1,
	)
	refill_canister = /obj/item/vending_refill/clothing
	default_price = PAYCHECK_CREW * 0.7 //Default of
	extra_price = PAYCHECK_COMMAND
	payment_department = NO_FREEBIES
	light_mask = "wardrobe-light-mask"
	light_color = LIGHT_COLOR_ELECTRIC_GREEN
