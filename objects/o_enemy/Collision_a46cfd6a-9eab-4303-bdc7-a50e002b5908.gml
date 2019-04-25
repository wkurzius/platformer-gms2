/// @description take damage

health_ -= 1
instance_destroy(other)

var dir = other.direction
hspeed_ = lengthdir_x(8,dir)
vspeed_ = lengthdir_y(8,dir)