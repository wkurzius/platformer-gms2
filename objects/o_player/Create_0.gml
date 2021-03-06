/// @description declare variables

hspeed_       = 0
max_hspeed_   = 4
vspeed_       = 0
gravity_      = 0.5
acceleration_ = 1
jump_height_  = -10
friction_     = .3
max_health_	  = 20
health_		  = max_health_
invincible_	  = false
score		  = 0

last_key_pressed_ = 0

// key mapping
keyboard_set_map(ord("W"), vk_up)
keyboard_set_map(ord("A"), vk_left)
keyboard_set_map(ord("S"), vk_down)
keyboard_set_map(ord("D"), vk_right)

keyboard_set_map(vk_space, vk_up)

//bullet cooldown
default_bullet_cooldown_ = room_speed / 6
bullet_cooldown_ = default_bullet_cooldown_
alarm[0] = bullet_cooldown_

//scale varaibles
x_scale_ = image_xscale
y_scale_ = image_yscale