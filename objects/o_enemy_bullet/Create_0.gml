/// @description move to mouse

speed = 10

depth = -1


var enemy_laser_sound = audio_play_sound(a_enemy_laser, 4, 0)
var rand_pitch  = random_range(0.8, 1.2)

audio_sound_pitch(enemy_laser_sound, rand_pitch)