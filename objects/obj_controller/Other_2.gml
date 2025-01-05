/// @desc Undefined Description

#macro minSize 0.125
#macro maxSize 0.69

global.size = random_range(minSize,maxSize);
sizeRandom = true;
global.type = random(sprite_get_number(sprite_index));
typeRandom = true;
global.speed = 5;
global.spawnRate = 1;
global.wiggleRange = 1;