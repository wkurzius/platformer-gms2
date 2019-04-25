/// @description spawn enemies

if !instance_exists(o_enemy) {
	repeat (wave_) {
		var rand_x = random_range(-5,5)
		var rand_y = random_range(-5,5)
		instance_create_layer(x + rand_x, y + rand_y, "Instances", o_enemy)
	}
	wave_++
}