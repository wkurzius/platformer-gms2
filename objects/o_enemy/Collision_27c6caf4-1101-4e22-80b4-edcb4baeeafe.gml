/// @description soft collide

var dir = point_direction(other.x, other.y, x, y)
hspeed_push_ += lengthdir_x(0.1, dir)
vspeed_push_ += lengthdir_y(0.1, dir)

move(hspeed_push_, vspeed_push_)