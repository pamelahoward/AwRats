/// @desc Undefined Description

size = random_range(minSize,maxSize);
type = random(sprite_get_number(sprite_index));

tX = random(room_width);
tY = random(room_height);

image_angle = point_direction(x,y,tX,tY);
move_towards_point(tX,tY,global.speed);