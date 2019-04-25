/// @description draw player and gun

var dir = point_direction(x, y-(sprite_height/2), mouse_x, mouse_y)
var flipped = (mouse_x > x) * 2 - 1


draw_sprite_ext(s_player, image_index, x, y, x_scale_ * flipped, y_scale_, 0, image_blend, image_alpha)

draw_sprite_ext(s_gun, 0, x-(4*flipped), y-(sprite_height/2), 1, flipped, dir, image_blend, image_alpha)

draw_text(x, y, string(vspeed_))