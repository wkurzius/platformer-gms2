/// @description player movement

if (health_ <= 0) instance_destroy()


var hinput = keyboard_check(vk_right) - keyboard_check(vk_left)
var k_right = keyboard_check(vk_right)
var k_left  = keyboard_check(vk_left)
var k_right_pressed = keyboard_check_pressed(vk_right)
var k_left_pressed  = keyboard_check_pressed(vk_left)


if      (k_left_pressed)      last_key_pressed_ = -1
else if (k_right_pressed)     last_key_pressed_ =  1

if (!k_left && !k_right) {
    hspeed_  = lerp(hspeed_, 0, friction_)
    image_speed = 0
	image_index = 0
} else {
	var flipped = (mouse_x > x) * 2 - 1
    image_speed = flipped * last_key_pressed_ * 0.6
    
    if      ( k_left && !k_right) {
	hspeed_ -= acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
    }
    else if (!k_left &&  k_right) {
        hspeed_ += acceleration_
        hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
    }
    else if last_key_pressed_ = -1 {
        hspeed_ -= acceleration_
        hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
    }
    else if last_key_pressed_ = 1 {
    hspeed_ += acceleration_
        hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
    }
}


/* movement v2
if      ( k_left && !k_right) {
	hspeed_ -= acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
}
else if (!k_left &&  k_right) {
	hspeed_ += acceleration_
	hspeed_  = clamp(hspeed_, -max_hspeed_, max_hspeed_)
}
else if (!k_left && !k_right) hspeed_  = lerp(hspeed_, 0, friction_)
*/




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
	image_speed = 0
	image_index = 6
} else if keyboard_check_pressed(vk_up) {
	vspeed_ = jump_height_
	
	x_scale_ = image_xscale * 0.8
	y_scale_ = image_yscale * 1.4
}

move(hspeed_, vspeed_, 0)

//check for landing
if (place_meeting(x, y+1, o_solid) 
	&& !place_meeting(x, yprevious+1, o_solid)) {
		x_scale_ = image_xscale * 1.4
		y_scale_ = image_yscale * 0.8
		y = floor(y)
		vspeed_  = 0
}

// check for ceiling
if (place_meeting(x, y-1, o_solid))
		vspeed_  = 0


//scaling
x_scale_ = lerp(x_scale_, image_xscale, 0.2)
y_scale_ = lerp(y_scale_, image_yscale, 0.2)

warp()