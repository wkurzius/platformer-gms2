/// @description create a bullet

if (alarm[0] <= 0) {

	var dir = point_direction(x, y-(sprite_height/2), mouse_x, mouse_y)
	var flipped = (mouse_x > x) * 2 - 1

	var x_offset = lengthdir_x(20, dir)
	var y_offset = lengthdir_y(20, dir)
	var gun_x = x - (4 * flipped) + x_offset
	var gun_y = y + y_offset

	var bullet = instance_create_layer(gun_x, gun_y-(sprite_height/2), "Instances", o_bullet)
	bullet.direction = dir
	
	alarm[0] = bullet_cooldown_
}