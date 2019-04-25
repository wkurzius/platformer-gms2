/// @param bounce

var bounce = argument[0]

if place_meeting(x + hspeed_, y, o_solid) {
	
	while !place_meeting(x + sign(hspeed_), y, o_solid) {
		x += sign(hspeed_)
	}
	
	if (bounce > 0) hspeed_ *= -bounce
	else hspeed_ = 0
}

x += hspeed_

/* vspeed */
if place_meeting(x, y + vspeed_, o_solid) {
	
	while !place_meeting(x, y + sign(vspeed_), o_solid) {
		y += sign(vspeed_)
	}
	
	if (bounce > 0) vspeed_ *= -bounce
	else vspeed_ = 0
	
}

y += vspeed_