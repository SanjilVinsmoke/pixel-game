/// @description Draw Menu

draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_color(c_ltgray);
for(var i = 0; i< menu_item;i++)
{
	var offset =2;
	var txt = menu[i];
	if (menu_cursor==1)
	{
		txt =string_insert(">",txt,1);
		var col = c_white;
	}
	else
	{
		var col =c_gray;
	}
	var xx =menu_x;
	var yy =menu_y-(menu_itemheight *(i*1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	
	
}

