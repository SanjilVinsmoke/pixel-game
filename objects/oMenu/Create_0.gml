/// @description GUI/Vars/Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin =32;
menu_x = gui_width;
menu_y = gui_height-gui_margin;
menu_x_target =gui_width-gui_margin;
menu_speed = 25;//lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_commited =-1;
menu_control = true;

// Data add on reverse oder as it makes array to store from first
menu[2] ="New Game";
menu[1] ="Continue";
menu[0] ="Quit";

menu_item =array_length_1d(menu);//dyamically size of array

menu_cursor =2;



