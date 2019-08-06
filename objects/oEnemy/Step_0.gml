vsp= vsp + grv;




//Horizontal Collison
if(place_meeting(x+hsp,y,oWall)) 
{
    
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
			
	}	 
hsp = -hsp;
	
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

// Animation

if(!place_meeting(x,y+1,oWall))

{
	sprite_index = sEnemyA1;
	image_speed = 0;
	
	if(sign(vsp)> 0) image_index = 1; else image_index = 0 ;
		
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		
		sprite_index = sEnemy1;
	}	
	else {
		
		sprite_index = sEnemyR1;
		
	}
}	

if (hsp != 0) image_xscale = sign(hsp)*size;
image_yscale = size;