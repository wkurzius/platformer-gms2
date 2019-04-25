/// @param hspeed
/// @param vspeed
/// @param bounce

var bounce = argument[2]

if place_meeting(x + argument[0], y, o_solid) {
	
	while !place_meeting(x + sign(argument[0]), y, o_solid) {
		x += sign(argument[0])
	}
	
	if (bounce > 0) argument[0] *= -bounce
	else argument[0] = 0
}

x += argument[0]

/* vspeed */
if place_meeting(x, y + argument[1], o_solid) {
	
	while !place_meeting(x, y + sign(argument[1]), o_solid) {
		y += sign(argument[1])
	}
	
	if (bounce > 0) argument[1] *= -bounce
	else argument[1] = 0
	
}

y += argument[1]