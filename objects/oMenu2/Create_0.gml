/// @description GUI/Vars/Menu Setup
#macro SAVEFILE "Save.sav"



menu_x = x;
menu_y = y;
menu_h = 32;
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_control = true;
menu_w = 256;
menu_padding = 8;




// menus
menu[0] = "New Game";
menu[1] = "Load Game";
menu[2] = "Exit";
menu_item = array_length_1d(menu);

menu_index = 0;
last_selected = 0;

var i = 0;
repeat(menu_item) {
	unfold[i] = 0;
	i++;
}
