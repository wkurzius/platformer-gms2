/// @description movement state

if instance_exists(o_player) {
	// move
	var dir = point_direction(x, y, o_player.x, o_player.y)
	
	hspeed_ += lengthdir_x(acceleration_, dir)
	vspeed_ += lengthdir_y(acceleration_, dir)
	
	if point_distance(0, 0, hspeed_, vspeed_) > speed_ {
		var move_dir = point_direction(0, 0, hspeed_, vspeed_)
		
		hspeed_ = lengthdir_x(speed_, move_dir)
		vspeed_ = lengthdir_y(speed_, move_dir)
	}

	

	if (distance_to_object(o_player) < 48) enemy_fire()
	
	if point_in_rectangle(x, y, 0, 0, room_width, room_height)
		enemy_fire()

}

move(1)