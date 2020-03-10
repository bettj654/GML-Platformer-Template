/// @description Add platformer mechanics

//Get keyboard inputs
//keyboard_check(key) will return 1 if pressed, 0 if not pressed
key_right = keyboard_check(vk_right); //Checking for right arrow
key_left = keyboard_check(vk_left); //Checking for left arrow
key_jump = keyboard_check(vk_space); //Checking for spacebar

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;
/*	Right key only is pressed: hsp = 4
	Left key only is pressed: hsp -4
	Both keys are pressed: hsp = 0
	Neither key is pressed: hsp = 0
*/

//Move character by hsp x = x position of the player on the canvas
x += hsp;