/// @description take damage

health_ -= 1
instance_destroy(other)

var dir = other.direction
hspeed_ = lengthdir_x(8,dir)
vspeed_ = lengthdir_y(8,dir)

var hit_sound = audio_play_sound(a_enemy_laser, 6, 0)
var rand_pitch  = random_range(0.8, 1.2)

audio_sound_pitch(hit_sound, rand_pitch)