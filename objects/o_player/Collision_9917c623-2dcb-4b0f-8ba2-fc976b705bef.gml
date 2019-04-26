/// @description Insert description here
// You can write your code in this editor

if !invincible_ {
	health_ -= 1

	var hurt_sound = audio_play_sound(a_hurt, 6, 0)
	var rand_pitch  = random_range(0.8, 1.2)

	audio_sound_pitch(hurt_sound, rand_pitch)
	
	invincible_ = true
	alarm[1] = game_get_speed(gamespeed_fps)
	
}

instance_destroy(other)
