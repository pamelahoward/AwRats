/// @desc Define Rat Settings and Particles

#macro minSize 0.125
#macro maxSize 0.69

global.size = random_range(minSize,maxSize);
sizeRandom = true;
global.type = random(sprite_get_number(sprite_index));
typeRandom = true;
global.speed = 5;
global.spawnRate = 1;
global.wiggleRange = 1;

//setup particle system on layer
var global.ps_particles = part_system_create_layer("Particles",false);
part_system_draw_order(global.ps_particles, false);
defineParticles();

currentScore = 0;
highScore = 0;