// (hspeed, vspeed)

if place_meeting(x + argument[0], y, o_solid) {
	
	while !place_meeting(x + sign(argument[0]), y, o_solid) {
		x += sign(argument[0])
	}
	
	argument[0] = 0
}

x += argument[0]

/* vspeed */
if place_meeting(x, y + argument[1], o_solid) {
	
	while !place_meeting(x, y + sign(argument[1]), o_solid) {
		y += sign(argument[1])
	}
	
	argument[1] = 0
}

y += argument[1]