/// @description attack state
if instance_exists(o_player) {

	if (distance_to_object(o_player) >= 48) state_ = MOVEMENT_

	enemy_fire()

}