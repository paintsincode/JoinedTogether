/// @description Insert description here
// You can write your code in this editor

slotHoverUI = instance_create_depth(x-dcos(-angle)*100,y-dsin(-angle)*100, depth-1, oSlotHoverUI);
slotHoverUI.angle = -angle;

if(!instance_exists(oHoverBase)){
	hoverUI = instance_create_depth(1100,220, depth -1, oHoverBase);

}else{
	hoverUI = instance_find(oHoverBase,0);
	
}
	hoverUI.slotInst = self;
for(i = 0 ; i< array_length(slotEffects); i++){
	switch(slotEffects[i]){
		case "RaiseGrowth":
			slotHoverUI.growth = 1;
		break;
		case "LowerGrowth":
			slotHoverUI.growth = -1;
		break;
		case "RaiseHeat":
			slotHoverUI.heat = 1;
		break;
		case "LowerHeat":
			slotHoverUI.heat = -1;	
		break;
		case "RaiseWetness":
			slotHoverUI.wetness = 1;
		break;
		case "LowerWetness":
			slotHoverUI.wetness = -1;
		break;
		
		default:
			show_debug_message("Bad Slot Effect");
		break;
	}
}