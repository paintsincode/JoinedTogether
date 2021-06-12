/// @description Insert description here
// You can write your code in this editor


angle = 0;


slotEffects = ["RaiseHeat","LowerGrowth"]

hoverUI = noone;

growthVal = 50;
wetnessVal = 50;
heatVal = 50;

growthMax =100;
growthMin =0;

heatMax =65;
heatMin =10;

wetnessMax =60;
wetnessMin =20;

auraAlpha = 1;


function OverGrowthEffect(leftSlot, rightSlot){
	leftSlot.growthVal -= 5;	
	rightSlot.growthVal -= 5;
	leftSlot.heatVal += 5;
	rightSlot.heatVal += 5;
}
function UnderGrowthEffect(leftSlot, rightSlot){
	leftSlot.growthVal += 5;	
	rightSlot.growthVal += 5;
}

function OverHeatEffect(leftSlot, rightSlot){
	leftSlot.heatVal += 5;	
	rightSlot.heatVal += 5;
	leftSlot.wetnessVal -= 5;	
	rightSlot.wetnessVal -= 5;
}
function UnderHeatEffect(leftSlot, rightSlot){
	wetnessVal += 5;
}

function OverWetnessEffect(leftSlot, rightSlot){
	growthVal -= 5;
}
function UnderWetnessEffect(leftSlot, rightSlot){
	growthVal -= 5;
}


