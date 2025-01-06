// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function defineParticles(){
	
	//pt_splatter
	var global.pt_splatter = part_type_create();
	part_type_shape(global.pt_splatter, pt_shape_disk);
	part_type_size(global.pt_splatter, 0.125, 1, -0.005, 0);
	part_type_scale(global.pt_splatter, 1, 1);
	part_type_speed(global.pt_splatter, 1, 1, 0, 1);
	part_type_direction(global.pt_splatter, 0, 360, 0, 5);
	part_type_gravity(global.pt_splatter, 0.025, irandom(360)); //only defines once at the start of a game
	part_type_orientation(global.pt_splatter, 0, 0, 0, 0, false);
	part_type_colour3(global.pt_splatter, $0000E5, $00007F, $0A0A66);
	part_type_alpha3(global.pt_splatter, 1, 1, 1);
	part_type_blend(global.pt_splatter, false);
	//part_type_life(global.pt_splatter, 80, 100);
	part_type_life(global.pt_splatter, 25, 50);

}