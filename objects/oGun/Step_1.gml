//for player to hold gun
x = oPlayer.x;
y = oPlayer.y+10;


if (oPlayer.controller =0)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);
}
else 
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	
	if(abs (controllerh)> .2 || (abs(controllerv) > .2))
	{
		contollerangle = point_direction(0,0,controllerh,controllerv);
	}
	image_angle = contollerangle;
}	


firedelay-= 1 ;



// for  mouse left click
if(mouse_check_button(mb_left)&& (firedelay <0))
{
	recoil = 4;
	firedelay = 5;
	ScreenShake(2,10);
	audio_sound_pitch(sShoot,choose(1,1.5,1.2,1.3,.8));
	audio_play_sound(sShoot,5,false);
	
	// bullet firing
	with (instance_create_layer(x,y,"Bullet",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

recoil = max(0,recoil -1);// checks if its greater than zero if zero stays zero but if not zero reduces by 1
// For recoil 		
x =x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);


if (image_angle > 90) && (image_angle < 270)
{
	image_yscale =-1;
}
else
{
	image_yscale = 1;
}

	
	
