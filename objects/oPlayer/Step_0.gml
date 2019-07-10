// Player_input
#region

if(hascontrol)
{
key_space = keyboard_check_pressed(vk_space);


if (keyboard_check(ord("D")) or keyboard_check(vk_right) ) 
	key_right = 1;
	
else 

	key_right = 0;





if (keyboard_check(ord("A")) or keyboard_check(vk_left) ) 
	key_left = 1; 

else

	key_left = 0;
	
if (key_left || key_right || key_space )
{
	
	controller = 0;
}

// contoller input 
if(abs(gamepad_axis_value(0,gp_axislh) > .2))//.2 is dead zone
{
	
	key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	key_right = max(gamepad_axis_value(0,gp_axislh),0);
	controller =1 ;
	
}
if (gamepad_button_check_pressed(0,gp_face1))
{
	key_space =1 ;
	controller =1 ;
}
}
else
{
	key_left=0;
	key_right=0;
	key_space=0;
	
}
#endregion


#region
//Movement calcuation
var move =key_right-key_left;

hsp= move * walksp;

vsp= vsp + grv;


 if(place_meeting(x,y+1,oWall) && (key_space))
{
	vsp = -8;
	
	
}


//Horizontal Collison
if(place_meeting(x+hsp,y,oWall)) 
{
    
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
			
	}	
hsp = 0;
	
}
x = x + hsp;



// vertical Collison
if(place_meeting(x,y+vsp,oWall)) 
{
    
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y= y + sign(vsp);
			
	}	
vsp = 0;
	
}
y = y + vsp;
#
// Animation

if(!place_meeting(x,y+1,oWall))

{
	sprite_index = sPlayerA;
	image_speed = 0;
	
	if(sign(vsp)> 0) image_index = 1; else image_index = 0 ;
		
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		
		sprite_index = splayer;
	}	
	else {
		
		sprite_index = sPlayerR;
		
	}
}	

if (hsp != 0) image_xscale = sign(hsp);
