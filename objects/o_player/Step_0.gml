/// @description player movement


/* hspeed */
if keyboard_check(vk_right) {
	hspeed_ = 7
} else if keyboard_check(vk_left) {
	hspeed_ = -7
} else {
	hspeed_ = 0
}

if place_meeting(x + hspeed_, y, o_solid) {
	
	while !place_meeting(x + sign(hspeed_), y, o_solid) {
		x += sign(hspeed_)
	}
	
	hspeed_ = 0
}

x += hspeed_




/* vspeed */
if keyboard_check(vk_down) {
	vspeed_ = 7
} else if keyboard_check(vk_up) {
	vspeed_ = -7
} else {
	vspeed_ = 0
}

if place_meeting(x, y + vspeed_, o_solid) {
	
	while !place_meeting(x, y + sign(vspeed_), o_solid) {
		y += sign(vspeed_)
	}
	
	vspeed_ = 0
}

y += hspeed_