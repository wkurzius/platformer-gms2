/// @description create a bullet

if (alarm[0] <= 0) {

	var dir = point_direction(x, y-(sprite_height/2), mouse_x, mouse_y)
	var flipped = (mouse_x > x) * 2 - 1

	var x_offset = lengthdir_x(16, dir)
	var y_offset = lengthdir_y(16, dir)
	var gun_x = x - (4 * flipped) + x_offset
	var gun_y = y + y_offset

	var bullet = instance_create_layer(gun_x, gun_y-(sprite_height/2), "Instances", o_bullet)
	bullet.direction   = dir
	bullet.image_angle = dir
	
	
	bullet_cooldown_ = default_bullet_cooldown_ - (max_health_ - health_) * 0.25
	
	alarm[0] = bullet_cooldown_
}