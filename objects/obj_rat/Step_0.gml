/// @desc Move Towards Mouse

if mouse_check_button(mb_left) {
	if !point_in_rectangle(mouse_x,mouse_y,obj_controller.boundsX1,obj_controller.boundsY1,obj_controller.boundsX2,obj_controller.boundsY2) { //if mouse NOT within menu bounds
		tX = mouse_x;
		tY = mouse_y;
		image_angle = point_direction(x,y,tX,tY);
		move_towards_point(tX,tY,global.speed);
	}
}

