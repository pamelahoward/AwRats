/// @desc Undefined Description

if mouse_check_button(mb_left) {
	tX = mouse_x;
	tY = mouse_y;
	image_angle = point_direction(x,y,tX,tY);
	move_towards_point(tX,tY,global.speed);
}

