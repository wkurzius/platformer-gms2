/// @description move to mouse

speed = 10
direction = point_direction(x, y, mouse_x, mouse_y)
depth = -1

var laser_sound = audio_play_sound(a_laser, 5, 0)
var rand_pitch  = random_range(0.8, 1.2)

audio_sound_pitch(laser_sound, rand_pitch)
