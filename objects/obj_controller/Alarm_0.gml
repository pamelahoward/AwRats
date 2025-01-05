/// @desc Spawn Rat

instance_create_layer(choose(0,room_width),random(room_height),"Instances",obj_rat);

alarm[0] = 60 * global.spawnRate; //spawn rat alarm