/// @desc Draw GUI Features

if menuOpen {
	//options bg
	draw_set_alpha(0.875);
	draw_sprite_stretched(spr_GUI_bg,0,options_BG_X,options_BG_Y,options_BG_W,options_BG_H);
}

//options toggle button (ALWAYS DRAW)
draw_set_alpha(1);
draw_sprite_stretched(spr_GUI_button,0,options_toggle_X,options_toggle_Y,32,32);
draw_sprite(spr_GUI_buttonlabel,0,options_toggle_X,options_toggle_Y);

if menuOpen {
	//Size Buttons
	draw_set_alpha(1);
	draw_sprite_stretched(spr_GUI_button,0,buttonLeftX,buttonRow1Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,1,buttonLeftX,buttonRow1Y);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(textX,buttonRow1Y,"Size");
	draw_sprite_stretched(spr_GUI_button,0,buttonRightX,buttonRow1Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,2,buttonRightX,buttonRow1Y);
	draw_sprite_stretched(spr_GUI_button,0,buttonRandomX,buttonRow1Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,3,buttonRandomX,buttonRow1Y);
	
	//Type Buttons
	draw_set_alpha(1);
	draw_sprite_stretched(spr_GUI_button,0,buttonLeftX,buttonRow2Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,1,buttonLeftX,buttonRow2Y);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(textX,buttonRow2Y,"Type");
	draw_sprite_stretched(spr_GUI_button,0,buttonRightX,buttonRow2Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,2,buttonRightX,buttonRow2Y);
	draw_sprite_stretched(spr_GUI_button,0,buttonRandomX,buttonRow2Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,3,buttonRandomX,buttonRow2Y);
	
	/* not implemented yet
	
	//Move Speed
	draw_set_alpha(1);
	draw_sprite_stretched(spr_GUI_button,0,buttonLeftX,buttonRow3Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,1,buttonLeftX,buttonRow3Y);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(textX,buttonRow3Y,"Move\nSpeed");
	draw_sprite_stretched(spr_GUI_button,0,buttonRightX,buttonRow3Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,2,buttonRightX,buttonRow3Y);
	draw_sprite_stretched(spr_GUI_button,0,buttonRandomX,buttonRow3Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,3,buttonRandomX,buttonRow3Y);
	
	//Wiggle Speed
	draw_set_alpha(1);
	draw_sprite_stretched(spr_GUI_button,0,buttonLeftX,buttonRow4Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,1,buttonLeftX,buttonRow4Y);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(textX,buttonRow4Y,"Wiggle\nSpeed");
	draw_sprite_stretched(spr_GUI_button,0,buttonRightX,buttonRow4Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,2,buttonRightX,buttonRow4Y);
	draw_sprite_stretched(spr_GUI_button,0,buttonRandomX,buttonRow4Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,3,buttonRandomX,buttonRow4Y);
	
	//Spawn Rate
	draw_set_alpha(1);
	draw_sprite_stretched(spr_GUI_button,0,buttonLeftX,buttonRow5Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,1,buttonLeftX,buttonRow5Y);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(textX,buttonRow5Y,"Spawn\nRate");
	draw_sprite_stretched(spr_GUI_button,0,buttonRightX,buttonRow5Y,32,32);
	draw_sprite(spr_GUI_buttonlabel,2,buttonRightX,buttonRow5Y);
	
	*/
}

//Rats Remaining
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_font(fnt_default);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(16,room_height-16,"Rats Remaining: " + string(instance_number(obj_rat)));