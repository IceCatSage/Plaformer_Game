//Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obWall)) && (key_jump)
{
	vsp = -7;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obWall))
{
	while (!place_meeting(x+sign(hsp),y,obWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Verital Collision
if (place_meeting(x,y+vsp,obWall))
{
	while (!place_meeting(x,y+sign(vsp),obWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;
