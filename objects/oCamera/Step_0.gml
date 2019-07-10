/// @description Update Camera

//update  destination

if(instance_exists(follow))

{
	xTo =follow.x;
	yto = follow.y;
	
}

// Update object Postion

x+= (xTo-x)/25;
y+= (yTo-y)/25;
//Keep camera inside the room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_width-view_h_half-buff);


//screen shake
x+= random_range(-shake_remain,shake_remain);
y+= random_range(-shake_remain,shake_remain);

shake_remain=max(0,shake_remain-((1/shake_remain)*shake_magnitude));

//Update camera 

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);


