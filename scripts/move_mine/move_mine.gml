/// @param hspeed
/// @param vspeed
/// @param bounce

var bounce = argument[2]

if place_meeting(x + argument[0], y, o_solid) {
	
	while !place_meeting(x + sign(argument[0]), y, o_solid) {
		x += sign(argument[0])
	}
	
	if (bounce > 0) self.hspeed_ *= -bounce
	else self.hspeed_ = 0
}

x += argument[0]

/* vspeed */
if place_meeting(x, y + argument[1], o_solid) {
	
	while !place_meeting(x, y + sign(argument[1]), o_solid) {
		y += sign(argument[1])
	}
	
	if (bounce > 0) self.vspeed_ *= -bounce
	else self.vspeed_ = 0
	
}

y += argument[1]