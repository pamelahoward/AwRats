/// @desc Menu Clicking

if point_in_rectangle(mouse_x,mouse_y,boundsX1,boundsY1,boundsX2,boundsY2) { //if mouse within GUI bounds
	if point_in_rectangle(mouse_x,mouse_y,options_toggle_X,options_toggle_Y,options_toggle_X+32,options_toggle_Y+32) { //if mouse clicking toggle button
		show_debug_message("Toggling!");
		switch(menuOpen) {
			case true: //update GUI bounds to match button and close menu
				boundsX1 = options_toggle_X;
				boundsY1 = options_toggle_Y;
				boundsX2 = options_toggle_X+32;
				boundsY2 = options_toggle_Y+32;
				menuOpen = false;
			break;
			
			case false: //update GUI bounds to match bg and open menu
				boundsX1 = options_BG_X;
				boundsY1 = options_BG_Y;
				boundsX2 = options_BG_X+options_BG_W;
				boundsY2 = options_BG_Y+options_BG_H;
				menuOpen = true;
			break;
		}
	}
	//do something
} else { //out of bounds
	//do something
}