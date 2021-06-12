/// @description Insert description here
// You can write your code in this editor


slotAngle = 0;
slotType = irandom_range(0,3);
slotIndex =0;

//slotEffects = ["RaiseHeat", "LowerHeat", "RaiseGrowth","LowerGrowth", "RaiseWetness","LowerWetness"]



function create(angle){
	slotAngle = angle

	switch(slotType){
		case 0:
			slotInst = instance_create_depth(x,y,depth-1, oSlotForest)
			slotInst.angle = angle;
		
			break;
		case 1:
			slotInst = instance_create_depth(x,y,depth-1, oSlotCity)
			slotInst.angle = angle;
			break;
		case 2:
			slotInst = instance_create_depth(x,y,depth-1, oSlotMountain)
			slotInst.angle = angle;
			break;
		case 3:
			slotInst = instance_create_depth(x,y,depth-1, oSlotDesert)
			slotInst.angle = angle;
			break;
		default:
			show_debug_message("slot type undefined");
			break;
	}
}

function EndOfTurnEffect(){
	leftIndex = slotIndex -1;
	rightIndex = slotIndex +1;
	if(slotIndex == 0){
		leftIndex = oPlanet.numberOfSlots-1;
	}
	if(slotIndex == oPlanet.numberOfSlots-1){
		rightIndex = 0;
	}
	
	leftInst = oPlanet.slotInstances[leftIndex].slotInst;
	rightInst = oPlanet.slotInstances[rightIndex].slotInst;
	
	for(i = 0 ; i< array_length(slotInst.slotEffects); i++){
		switch(slotInst.slotEffects[i]){
			case "RaiseGrowth":
				leftInst.growthVal += 1;
				rightInst.growthVal += 1;
			break;
			case "LowerGrowth":
				leftInst.growthVal -= 1;
				rightInst.growthVal -= 1;
			break;
			case "RaiseHeat":
				leftInst.heatVal += 1;
				rightInst.heatVal += 1;
			break;
			case "LowerHeat":
				leftInst.heatVal -= 1;
				rightInst.heatVal -= 1;
			break;
			case "RaiseWetness":
				leftInst.wetnessVal += 1;
				rightInst.wetnessVal += 1;
			break;
			case "LowerWetness":
				leftInst.wetnessVal -= 1;
				rightInst.wetnessVal -= 1;
			break;
		
			default:
				show_debug_message("Bad Slot Effect");
			break;
		}
	}
	
	if	(slotInst.wetnessVal > slotInst.wetnessMin && slotInst.wetnessVal < slotInst.wetnessMax) &&
		(slotInst.heatVal > slotInst.heatMin && slotInst.heatVal < slotInst.heatMax){
			slotInst.growthVal += 5;	
	}
	
		
	if(slotInst.growthVal > slotInst.growthMax){
		
		slotInst.OverGrowthEffect(leftInst, rightInst);
	}
	if(slotInst.growthVal < slotInst.growthMin){
		
		slotInst.UnderGrowthEffect(leftInst, rightInst);
	}
	
	if(slotInst.heatVal > slotInst.heatMax){
		
		slotInst.OverHeatEffect(leftInst, rightInst);
	}
	if(slotInst.heatVal < slotInst.heatMin){
		
		slotInst.UnderHeatEffect(leftInst, rightInst);
	}
	
	if(slotInst.wetnessVal > slotInst.wetnessMax){
		
		slotInst.OverWetnessEffect(leftInst, rightInst);
	}
	if(slotInst.wetnessVal < slotInst.wetnessMin){
		
		slotInst.UnderWetnessEffect(leftInst, rightInst);
	}
	
}