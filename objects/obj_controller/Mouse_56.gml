/// @desc Menu Clicking

if point_in_rectangle(mouse_x,mouse_y,boundsX1,boundsY1,boundsX2,boundsY2) { //if mouse within GUI bounds
	if point_in_rectangle(mouse_x,mouse_y,options_toggle_X,options_toggle_Y,options_toggle_X+32,options_toggle_Y+32) { //if mouse clicking toggle button
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
	if menuOpen {
		#region size options
		if point_in_rectangle(mouse_x,mouse_y,buttonLeftX,buttonRow1Y,buttonLeftX+32,buttonRow1Y+32) { //if mouse clicking "Size: Smaller" button
			if !sizeRandom { global.size -= 0.05; }
		}
		if point_in_rectangle(mouse_x,mouse_y,buttonRightX,buttonRow1Y,buttonRightX+32,buttonRow1Y+32) { //if mouse clicking "Size: Larger" button
			if !sizeRandom { global.size += 0.05; }
		}
		if point_in_rectangle(mouse_x,mouse_y,buttonRandomX,buttonRow1Y,buttonRandomX+32,buttonRow1Y+32) { //if mouse clicking "Size: Random" button
			switch(sizeRandom) {
				case true:
					global.size = minSize;
					sizeRandom = false;
				break;
				
				case false:
					global.size = random_range(minSize,maxSize);
					sizeRandom = true;
				break;
			}
		}
		#endregion
		
		#region type options
		if point_in_rectangle(mouse_x,mouse_y,buttonLeftX,buttonRow2Y,buttonLeftX+32,buttonRow2Y+32) { //if mouse clicking "Type: Smaller" button
			if !typeRandom { global.type -= 1; }
		}
		if point_in_rectangle(mouse_x,mouse_y,buttonRightX,buttonRow2Y,buttonRightX+32,buttonRow2Y+32) { //if mouse clicking "Type: Larger" button
			if !typeRandom { global.type += 1; }
		}
		if point_in_rectangle(mouse_x,mouse_y,buttonRandomX,buttonRow2Y,buttonRandomX+32,buttonRow2Y+32) { //if mouse clicking "Type: Random" button
			switch(typeRandom) {
				case true:
					global.type = 0;
					typeRandom = false;
				break;
				
				case false:
					global.type = random(sprite_get_number(sprite_index));
					typeRandom = true;
				break;
			}
		}
		#endregion
	}
	
} else { //out of bounds
	//do something
}