/// @description Add platformer mechanics

//Get keyboard inputs
//keyboard_check(key) will return 1 if pressed, 0 if not pressed
key_right = keyboard_check(vk_right); //Checking for right arrow
key_left = keyboard_check(vk_left); //Checking for left arrow
key_jump = keyboard_check(vk_space); //Checking for spacebar

//Work out where to move horizontally
hsp = (key_right - key_left) * hsp_walk;

//Work out where to move vertically
vsp = vsp + grv;

//Work out if we should jump
if(place_meeting(x, y + 1, oWall) and (key_jump == 1))
{
	vsp = vsp_jump;
}
//Check for horizontal collisions, then move if we can
var onepixel = sign(hsp); //Sign returns -1 if negative, 0 if 0, 1 if positive
if(place_meeting(x + hsp, y, oWall) )
{
	//move as close as we can
	//move 1px towards wall until 1px away
	while(!place_meeting(x + onepixel, y, oWall))
	{
		x += onepixel;
	}
	hsp = 0; //Stop moving once 1px away
}
//Update x
x += hsp;

//Check for veritcal collisions
var onepixel = sign(vsp);
if(place_meeting(x, y + vsp, oWall))
{
	//Move as close as we can
	while(!place_meeting(x, y + onepixel, oWall))
	{
		y += onepixel;
	}
	vsp = 0;
}
//Update y
y += vsp;