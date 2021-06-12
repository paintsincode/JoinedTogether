/// @description Insert description here
// You can write your code in this editor


mx = mouse_x;//device_mouse_x_to_gui(0);
my = mouse_y;//device_mouse_y_to_gui(0);



if(point_in_rectangle(mx, my, bbox_left, bbox_top, bbox_right, bbox_bottom)){
	if(powerHoverUI == -1){
		powerHoverUI = instance_create_depth(x+ 100, y+sprite_width/2, depth-1, oSlotHoverUI);
	}
	for(i = 0 ; i< array_length(powerEffect); i++){
		switch(powerEffect[i]){
			case "RaiseGrowth":
				powerHoverUI.growth = 1;
			break;
			case "LowerGrowth":
				powerHoverUI.growth = -1;
			break;
			case "RaiseHeat":
				powerHoverUI.heat = 1;
			break;
			case "LowerHeat":
				powerHoverUI.heat = -1;	
			break;
			case "RaiseWetness":
				powerHoverUI.wetness = 1;
			break;
			case "LowerWetness":
				powerHoverUI.wetness = -1;
			break;
		
			default:
				show_debug_message("Bad Slot Effect");
			break;
		}
	}
}else{
	if(powerHoverUI != -1){
		instance_destroy(powerHoverUI);
		powerHoverUI = -1;
	}
}