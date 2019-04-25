/// @description soft collide
	
var dir = point_direction(other.x, other.y, x, y)
hspeed_ += lengthdir_x(0.1, dir)
vspeed_ += lengthdir_y(0.1, dir)
