/// @desc Draw Included Or Default BG

if file_exists("spr_background.png") {
	//set spr_background to local file
	spr_background = sprite_add("spr_background.png",1,false,false,0,0);
} else {
	spr_background = spr_defaultBG;
}

draw_sprite_tiled(spr_background,0,x,y);