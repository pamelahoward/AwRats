/// @desc Squish Rat

if !point_in_rectangle(mouse_x,mouse_y,obj_controller.boundsX1,obj_controller.boundsY1,obj_controller.boundsX2,obj_controller.boundsY2) { //if mouse NOT within menu bounds
	rSound = choose(squeak_1,squeak_2,squeak_3,squeak_4,squeak_5,squeak_6,squeak_7,squeak_8)
	audio_play_sound(rSound,1,false);
	
	part_particles_create(global.ps_particles, x, y, global.pt_splatter, 200);
	
	obj_controller.currentScore += 1;
	instance_destroy(self);
}