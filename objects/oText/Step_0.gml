/// @description Progress Text

letter+=spd;
text_current=string_copy(text,1,floor(letter));

draw_set_font(fSign);

if(h==0)h=string_height(text);
w=string_width(text_current);

//Destroy When its done
if(letter >=length)&&(keyboard_check_pressed(vk_enter))
{
	instance_destroy();
	with(oCamera)follow=oPlayer;
	
}

