/// @description Draw Menu
var i = 0;
draw_set_font(fMenu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


repeat(menu_item) {
	xx = menu_x;
	yy = menu_y + (menu_h + menu_padding) * i + 256 * (1-unfold[i]);
	draw_set_color(c_dkgray);
	draw_rectangle(xx, yy, xx + menu_w, yy + menu_h, false);
	
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_aqua);
	
	draw_text(xx + menu_w/2, yy + menu_h/2, menu[i]);
	
	i++;
}