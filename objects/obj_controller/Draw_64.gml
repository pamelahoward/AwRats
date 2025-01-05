/// @desc Draw GUI Features

if menuOpen {
	//options bg
	draw_set_alpha(0.5);
	draw_sprite_stretched(spr_GUI_bg,0,options_BG_X,options_BG_Y,options_BG_W,options_BG_H);
}

//options toggle button (ALWAYS DRAW)
draw_set_alpha(1);
draw_sprite_stretched(spr_GUI_button,0,options_toggle_X,options_toggle_Y,32,32);

//Rats Remaining
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(16,room_height-16,"Rats Remaining: " + string(instance_number(obj_rat)) + "\n Menu Open: " + string(menuOpen));