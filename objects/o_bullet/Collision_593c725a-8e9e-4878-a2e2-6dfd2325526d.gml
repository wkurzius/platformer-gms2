/// @description destroy bullet

instance_destroy()


var hit_sound = audio_play_sound(a_hit, 4, 0)
var rand_pitch  = random_range(0.8, 1.2)

audio_sound_pitch(hit_sound, rand_pitch)