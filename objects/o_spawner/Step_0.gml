if (!instance_exists(o_enemy) && alarm[0] <= 0) {
	alarm[0] = game_get_speed(gamespeed_fps) * 2
}

show_debug_message(string(alarm[0]))