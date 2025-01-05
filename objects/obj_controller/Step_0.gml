/// @desc Never go out of min/max values

if global.size < minSize { global.size = minSize; }
if global.size > maxSize { global.size = maxSize; }

//this is the code that i think should define type range but for some reason breaks it??
//if global.type < 0 { global.type = sprite_get_number(sprite_index); }
//if global.type > sprite_get_number(sprite_index) { global.type = 0; }