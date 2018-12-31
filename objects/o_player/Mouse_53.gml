/// @description create a bullet

var dir = point_direction(x, y, mouse_x, mouse_y)
var flipped = (mouse_x > x) * 2 - 1

var x_offset = lengthdir_x(20, dir)
var y_offset = lengthdir_y(20, dir)
var gun_x = x - (4 * flipped) + x_offset
var gun_y = y + y_offset

instance_create_layer(gun_x, gun_y, "Instances", o_bullet)
