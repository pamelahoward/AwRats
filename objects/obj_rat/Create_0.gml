/// @desc Define Size, Type, Initial Target

if obj_controller.sizeRandom { size = random_range(minSize,maxSize); } else { size = global.size; }
if obj_controller.typeRandom { type = random(sprite_get_number(sprite_index)); } else { type = global.type; }

tX = random(room_width);
tY = random(room_height);

image_angle = point_direction(x,y,tX,tY);
move_towards_point(tX,tY,global.speed);