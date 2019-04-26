/// @description Insert description here
// You can write your code in this editor

health_ -= 1

instance_destroy(other)

var hurt_sound = audio_play_sound(a_hurt, 4, 0)
var rand_pitch  = random_range(0.8, 1.2)

audio_sound_pitch(hurt_sound, rand_pitch)