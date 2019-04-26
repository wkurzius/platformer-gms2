/// @description Draw transparent overlay

var gui_width  = display_get_gui_width()
var gui_height = display_get_gui_height()

if paused_ {	
	
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0, 0, gui_width, gui_height, false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	
	draw_set_font(f_pause)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(gui_width/2, gui_height/2, "PAUSED")
	draw_set_font(1)

}

if (room == r_battle) {
	draw_set_halign(fa_right)
	draw_set_font(f_score)
	draw_text(gui_width-8, 6, "Score: " + string(score))
	draw_set_font(1)
	draw_set_halign(fa_left)

}