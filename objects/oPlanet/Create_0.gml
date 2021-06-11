/// @description Insert description here
// You can write your code in this editor

randomise();

numberOfSlots = 15;
slotSize = sprite_get_width(sForest)/2;

radius = sprite_width /2 + slotSize;

slotInstances = [];

for(i = 0; i < numberOfSlots; i++){
	
	
	angle = ((360 / numberOfSlots) * i)
	
	xx = dcos(angle) * radius;
	yy = dsin(angle) * radius;
	
	inst = instance_create_depth(x+xx,y+yy,depth-1, oSlot);
	inst.create(-angle );
	inst.slotIndex = i;
	
	slotInstances[i] = inst;
	
}


