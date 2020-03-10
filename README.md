# GML-Platformer-Template

## oPlayer

## Step Event Notes

How keyboard_check works:
hsp = (key_right - key_left) * hsp_walk
/*	
	Right key only is pressed: hsp = 4
	Left key only is pressed: hsp -4
	Both keys are pressed: hsp = 0
	Neither key is pressed: hsp = 0
*/
