/// @description init enemy

hspeed_		  = 0
vspeed_		  = 0
speed_		  = 3
health_		  = 4
acceleration_ = 0.05

hspeed_push_ = 0
vspeed_push_ = 0


//bullet cooldown
bullet_cooldown_ = room_speed / 2
alarm[0] = bullet_cooldown_

// states
MOVEMENT_ = 0

state_ = MOVEMENT_
