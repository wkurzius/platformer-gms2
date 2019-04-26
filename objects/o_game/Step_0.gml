/// @description game over to menu

if !instance_exists(o_player) && !paused_
	if  keyboard_check_released(vk_anykey) || 
		mouse_check_button_pressed(ev_global_left_button)
		room_goto(r_menu)