/// @description Control menu

menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

menu_index += menu_move;

if (menu_index < 0) menu_index = menu_item - 1;
if (menu_index > menu_item - 1) menu_index = 0;
var i = 0;


repeat(menu_item) {
	if (unfold[i] == 1) i++;
	if (i < menu_item) unfold[i] = min(1, unfold[i] + 0.02);
	if (i + 1 < menu_item) unfold[i+1] = min(1, unfold[i+1] + 0.005);
}



if (menu_index != last_selected) {
	audio_play_sound(snd_menu_switch, 1, false);
	
}

last_selected = menu_index;

