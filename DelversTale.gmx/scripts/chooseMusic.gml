randomize()
music[0] = music1
music[1] = music2
music[2] = music3
music[3] = music4
music[4] = music5
//music[] = 

curMusic = irandom(array_length_1d(music))
audio_play_sound(curMusic,1,0)
