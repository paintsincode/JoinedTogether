/// @description Insert description here
// You can write your code in this editor


if(slotInst != noone){
	draw_self();
	growthVal = slotInst.growthVal;
	heatVal = slotInst.heatVal;
	wetnessVal = slotInst.wetnessVal;
	
	growthMin = slotInst.growthMin;
	growthMax = slotInst.growthMax;
	
	heatMin = slotInst.heatMin;
	heatMax = slotInst.heatMax;
	
	wetnessMin = slotInst.wetnessMin;
	wetnessMax = slotInst.wetnessMax;
	
		
	leftxx	= x;
	growthy = y- 46;
	heaty	= y;
	wetnessy = y + 46;
	
	barHeight = 12;
	
	//draw growth
	draw_rectangle_color(leftxx,growthy,leftxx+growthMin, growthy+barHeight, c_red,c_red, c_red, c_red, false);
	draw_rectangle_color(leftxx+growthMin,growthy,leftxx+growthMax, growthy+barHeight, c_green,c_green, c_green, c_green, false);
	draw_rectangle_color(leftxx+growthMax,growthy,leftxx+100, growthy+barHeight, c_red,c_red, c_red, c_red, false);
	draw_sprite(sUIVal, 0, leftxx+growthVal, growthy-8);
	
	
	//draw heat
	draw_rectangle_color(leftxx,heaty,leftxx+heatMin, heaty+barHeight, c_red,c_red, c_red, c_red, false);
	draw_rectangle_color(leftxx+heatMin,heaty,leftxx+heatMax, heaty+barHeight, c_green,c_green, c_green, c_green, false);
	draw_rectangle_color(leftxx+heatMax,heaty,leftxx+100, heaty+barHeight, c_red,c_red, c_red, c_red, false);
	draw_sprite(sUIVal, 0, leftxx+heatVal, heaty-8);
	
	//draw wetness
	draw_rectangle_color(leftxx,wetnessy,leftxx+wetnessMin, wetnessy+barHeight, c_red,c_red, c_red, c_red, false);
	draw_rectangle_color(leftxx+wetnessMin,wetnessy,leftxx+wetnessMax, wetnessy+barHeight, c_green,c_green, c_green, c_green, false);
	draw_rectangle_color(leftxx+wetnessMax,wetnessy,leftxx+100, wetnessy+barHeight, c_red,c_red, c_red, c_red, false);
	draw_sprite(sUIVal, 0, leftxx+wetnessVal, wetnessy-8);
}