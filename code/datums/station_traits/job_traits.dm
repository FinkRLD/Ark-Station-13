#define CAN_ROLL_ALWAYS 1 //always can roll for antag
#define CAN_ROLL_PROTECTED 2 //can roll if config lets protected roles roll
#define CAN_ROLL_NEVER 3 //never roll antag

/**
 * A station trait which enables a temporary job
 * Generally speaking these should always all be mutually exclusive, don't have too many at once
 */
/datum/station_trait/job
	sign_up_button = TRUE
	abstract_type = /datum/station_trait/job
	/// What tooltip to show on the button
	var/button_desc = "Sign up to gain some kind of unusual job, not available in most rounds."
	/// Can this job roll antag?
	var/can_roll_antag = CAN_ROLL_ALWAYS
	/// How many positions to spawn?
	var/position_amount = 1
	/// Type of job to enable
	var/datum/job/job_to_add = /datum/job/clown
	/// Who signed up to this in the lobby
	var/list/lobby_candidates

/datum/station_trait/job/New()
	. = ..()
	switch(can_roll_antag)
		if(CAN_ROLL_PROTECTED)
			SSstation.antag_protected_roles += job_to_add::title
		if(CAN_ROLL_NEVER)
			SSstation.antag_restricted_roles += job_to_add::title
	blacklist += subtypesof(/datum/station_trait/job) - type // All but ourselves
	RegisterSignal(SSdcs, COMSIG_GLOB_PRE_JOBS_ASSIGNED, PROC_REF(pre_jobs_assigned))
/* NOVA EDIT REMOVAL
/datum/station_trait/job/setup_lobby_button(atom/movable/screen/lobby/button/sign_up/lobby_button)
	RegisterSignal(lobby_button, COMSIG_ATOM_UPDATE_OVERLAYS, PROC_REF(on_lobby_button_update_overlays))
	lobby_button.desc = button_desc
	return ..()

/datum/station_trait/job/on_lobby_button_click(atom/movable/screen/lobby/button/sign_up/lobby_button, location, control, params, mob/dead/new_player/user)
	if (LAZYFIND(lobby_candidates, user))
		LAZYREMOVE(lobby_candidates, user)
	else
		LAZYADD(lobby_candidates, user)

/datum/station_trait/job/on_lobby_button_update_icon(atom/movable/screen/lobby/button/sign_up/lobby_button, updates)
	if (LAZYFIND(lobby_candidates, lobby_button.get_mob()))
		lobby_button.base_icon_state = "signup_on"
	else
		lobby_button.base_icon_state = "signup"

/// Add an overlay based on whether you are actively signed up for this role
/datum/station_trait/job/proc/on_lobby_button_update_overlays(atom/movable/screen/lobby/button/sign_up/lobby_button, list/overlays)
	SIGNAL_HANDLER
	overlays += LAZYFIND(lobby_candidates, lobby_button.get_mob()) ? "tick" : "cross"
*/
/// Called before we start assigning roles, assign ours first
/datum/station_trait/job/proc/pre_jobs_assigned()
	SIGNAL_HANDLER
	sign_up_button = FALSE
	destroy_lobby_buttons()
	for (var/mob/dead/new_player/signee as anything in lobby_candidates)
		if (isnull(signee) || !signee.client || !signee.mind || signee.ready != PLAYER_READY_TO_PLAY)
			LAZYREMOVE(lobby_candidates, signee)
	if (!LAZYLEN(lobby_candidates))
		on_failed_assignment()
		return // Nobody signed up :(
	for(var/_ in 1 to position_amount)
		var/mob/dead/new_player/picked_player = pick_n_take(lobby_candidates)
		picked_player.mind.assigned_role = new job_to_add()
	lobby_candidates = null

/// Called if we didn't assign a role before the round began, we add it to the latejoin menu instead
/datum/station_trait/job/proc/on_failed_assignment()
	var/datum/job/our_job = SSjob.GetJob(job_to_add::title)
	our_job.total_positions = position_amount

/datum/station_trait/job/can_display_lobby_button(client/player)
	var/datum/job/our_job = SSjob.GetJob(job_to_add::title)
	return our_job.player_old_enough(player) && ..()

/// Adds a gorilla to the cargo department, replacing the sloth and the mech
/datum/station_trait/job/cargorilla
	name = "Cargo Gorilla"
	button_desc = "Sign up to become the Cargo Gorilla, a peaceful shepherd of boxes."
	weight = 1
	show_in_report = FALSE // Selective attention test. Did you spot the gorilla?
	can_roll_antag = CAN_ROLL_NEVER
	job_to_add = /datum/job/cargo_gorilla

/datum/station_trait/job/cargorilla/New()
	. = ..()
	RegisterSignal(SSatoms, COMSIG_SUBSYSTEM_POST_INITIALIZE, PROC_REF(replace_cargo))

/* NOVA EDIT REMOVAL
/datum/station_trait/job/cargorilla/on_lobby_button_update_overlays(atom/movable/screen/lobby/button/sign_up/lobby_button, list/overlays)
	. = ..()
	overlays += LAZYFIND(lobby_candidates, lobby_button.get_mob()) ? "gorilla_on" : "gorilla_off"
*/
/// Remove the cargo equipment and personnel that are being replaced by a gorilla.
/datum/station_trait/job/cargorilla/proc/replace_cargo(datum/source)
	SIGNAL_HANDLER
	var/mob/living/basic/sloth/cargo_sloth = GLOB.cargo_sloth
	if(isnull(cargo_sloth))
		lobby_candidates = list()
		destroy_lobby_buttons() // Sorry folks
		sign_up_button = FALSE
		return

	// hmm our sloth looks funny today
	qdel(cargo_sloth)
	// monkey carries the crates, the age of robot is over
	if(GLOB.cargo_ripley)
		qdel(GLOB.cargo_ripley)

/datum/station_trait/job/bridge_assistant
	name = "Bridge Assistant"
	button_desc = "Sign up to become the Bridge Assistant and watch over the Bridge."
	weight = 2
	report_message = "We have installed a Bridge Assistant on your station."
	show_in_report = TRUE
	can_roll_antag = CAN_ROLL_PROTECTED
	job_to_add = /datum/job/bridge_assistant

/datum/station_trait/job/bridge_assistant/New()
	. = ..()
	RegisterSignal(SSatoms, COMSIG_SUBSYSTEM_POST_INITIALIZE, PROC_REF(add_coffeemaker))
/* NOVA EDIT REMOVAL
/datum/station_trait/job/bridge_assistant/on_lobby_button_update_overlays(atom/movable/screen/lobby/button/sign_up/lobby_button, list/overlays)
	. = ..()
	overlays += "bridge_assistant"
*/
/// Creates a coffeemaker in the bridge, if we don't have one yet.
/datum/station_trait/job/bridge_assistant/proc/add_coffeemaker(datum/source)
	SIGNAL_HANDLER
	var/area/bridge = GLOB.areas_by_type[/area/station/command/bridge]
	if(isnull(bridge)) //no bridge, what will he assist?
		return
	var/list/possible_coffeemaker_positions = list(/area/station/command/bridge, /area/station/command/meeting_room)
	var/list/coffeemakers = SSmachines.get_machines_by_type_and_subtypes(/obj/machinery/coffeemaker)
	for(var/obj/machinery/coffeemaker as anything in coffeemakers) //don't spawn a coffeemaker if there is already one on the bridge
		if(is_type_in_list(get_area(coffeemaker), possible_coffeemaker_positions))
			return
	var/list/tables = list()
	for(var/turf/area_turf as anything in bridge.get_contained_turfs())
		var/obj/structure/table/table = locate() in area_turf
		if(isnull(table))
			continue
		if(area_turf.is_blocked_turf(ignore_atoms = list(table))) //don't spawn a coffeemaker on a fax machine or smth
			continue
		tables += table
	if(!length(tables))
		return
	var/picked_table = pick_n_take(tables)
	var/picked_turf = get_turf(picked_table)
	if(length(tables))
		var/another_table = pick(tables)
		for(var/obj/thing_on_table in picked_turf) //if there's paper bins or other shit on the table, get that off
			if(thing_on_table == picked_table)
				continue
			if(HAS_TRAIT(thing_on_table, TRAIT_WALLMOUNTED) || (thing_on_table.flags_1 & ON_BORDER_1) || thing_on_table.layer < TABLE_LAYER)
				continue
			if(thing_on_table.invisibility || !thing_on_table.alpha || !thing_on_table.mouse_opacity)
				continue
			thing_on_table.forceMove(get_turf(another_table))
	new /obj/machinery/coffeemaker/impressa(picked_turf)
	new /obj/item/reagent_containers/cup/coffeepot(picked_turf)
	new /obj/item/storage/box/coffeepack(picked_turf)

#undef CAN_ROLL_ALWAYS
#undef CAN_ROLL_PROTECTED
#undef CAN_ROLL_NEVER
