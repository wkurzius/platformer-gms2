/// @description init enemy

hspeed_		  = 0
vspeed_		  = 0
speed_		  = 3
health_		  = 4
acceleration_ = 0.05

//bullet cooldown
bullet_cooldown_ = game_get_speed(gamespeed_fps)
alarm[0] = random(bullet_cooldown_)

// states
MOVEMENT_ = 0

state_ = MOVEMENT_
