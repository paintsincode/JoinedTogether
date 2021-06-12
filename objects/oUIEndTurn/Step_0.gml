/// @description Insert description here
// You can write your code in this editor

mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

if(mouse_check_button_released(mb_left)){
	if(point_in_rectangle(mx,my, bbox_left,bbox_top,bbox_right,bbox_bottom)){	

		for(i = 0 ;  i< oPlanet.numberOfSlots ;i++){
			oPlanet.slotInstances[i].EndOfTurnEffect();
			oPlanet.endingTurn = true;
		}
	}
	
}