/// @description spawn enemies

if !instance_exists(o_enemy) {
	
	repeat (global.wave) {
		var rand_x = random_range(0, room_width)
		var rand_y = random_range(-32, -64)
		instance_create_layer(rand_x, rand_y, "Instances", o_enemy)
	}
	
	var _wave_heal = global.wave - 1
	if  (_wave_heal == 5) || 
		(_wave_heal >=8 && _wave_heal < 21 && _wave_heal % 2 == 0) ||
		(_wave_heal >=21) {
		o_player.health_ += ceil((o_player.max_health_ - o_player.health_) * 0.6)
	}
	
}