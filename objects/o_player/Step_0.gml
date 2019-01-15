/// @description player movement

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)
var k_right = keyboard_check(vk_right)
var k_left  = keyboard_check(vk_left)

if      ( k_left && !k_right) {
	hspeed_ -= acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
}
else if (!k_left &&  k_right) {
	hspeed_ += acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
}
else if (!k_left && !k_right) hspeed_  = lerp(hspeed_, 0, friction_)


/* hspeed */
/*
if hinput != 0 {
	hspeed_ += hinput * acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
} else {
	hspeed_  = lerp(hspeed_, 0, friction_)
}*/

if !place_meeting(x, y + 1, o_solid) {
	vspeed_ += gravity_
} else if keyboard_check_pressed(vk_up) {
	vspeed_ = jump_height_
	
	x_scale_ = image_xscale * 0.8
	y_scale_ = image_yscale * 1.4
}

move(hspeed_, vspeed_)

//check for landing
if (place_meeting(x, y+1, o_solid) 
	&& !place_meeting(x, yprevious+1, o_solid)) {
		x_scale_ = image_xscale * 1.4
		y_scale_ = image_yscale * 0.8
}

//scaling
x_scale_ = lerp(x_scale_, image_xscale, 0.1)
y_scale_ = lerp(y_scale_, image_yscale, 0.1)

