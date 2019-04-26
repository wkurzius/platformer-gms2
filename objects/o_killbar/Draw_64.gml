/// @description draw kill bar

draw_set_color(c_green)
draw_self()
draw_set_color(c_white)

var _current_wave = global.wave
var _killed       = _current_wave - instance_number(o_enemy)

//show_debug_message(string(_killed)   + " = " +
//					string(_current_wave) + " - " + 
//					string(instance_number(o_enemy)))

if !instance_exists(o_player) exit

draw_killed_ = lerp(draw_killed_, _killed, 0.1)

var _wave_percent = 123 * draw_killed_/_current_wave

if (_killed > 0) {
	draw_set_color(c_green)
	draw_rectangle(x + 4, y + 4, x + _wave_percent, y + 11, false)
	draw_set_color(c_white)
	
}