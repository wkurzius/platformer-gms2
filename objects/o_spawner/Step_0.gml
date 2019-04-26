/// @description spawn enemies

if !instance_exists(o_enemy) {
	repeat (wave_) {
		var rand_x = random_range(0, room_width)
		var rand_y = random_range(-32, -64)
		instance_create_layer(rand_x, rand_y, "Instances", o_enemy)
	}
	wave_++
}