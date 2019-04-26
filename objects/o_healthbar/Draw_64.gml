/// @description draw health bar rectangle

draw_self()

if !instance_exists(o_player) exit

draw_health_ = lerp(draw_health_, o_player.health_, 0.1)

var health_percent = 123 * draw_health_/o_player.max_health_

draw_set_color(c_red)
draw_rectangle(x + 4, y + 4, x + health_percent, y + 11, false)
draw_set_color(c_white)