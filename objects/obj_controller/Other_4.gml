/// @desc Define GUI Coords

//options menu
options_BG_X = 32;
options_BG_Y = 32;
options_BG_W = 192;
options_BG_H = 248;

//

//options toggle button
options_toggle_X = options_BG_X+8;
options_toggle_Y = options_BG_Y+8;

//menu bounds
menuOpen = false;
boundsX1 = options_toggle_X;
boundsY1 = options_toggle_Y;
boundsX2 = options_toggle_X+32;
boundsY2 = options_toggle_Y+32;

//button row coords
buttonRow1Y = options_toggle_Y+40;
buttonRow2Y = buttonRow1Y+40;
buttonRow3Y = buttonRow2Y+40;
buttonRow4Y = buttonRow3Y+40;
buttonRow5Y = buttonRow4Y+40;

buttonLeftX = options_toggle_X;
buttonRightX = options_BG_W-32-8;
textX = buttonLeftX + (buttonRightX/2);
buttonRandomX = options_BG_W-8;

alarm[0] = 1; //spawn rat alarm

