/// @description Insert description here
// You can write your code in this editor


if(oPlanet.endingTurn){
	
	
	draw_sprite_ext(sHeatAura, 0, x,y,1,1,angle,c_white,auraAlpha);
	draw_sprite_ext(sWetnessAura, 0, x,y,1,1,angle,c_white,auraAlpha);
	draw_sprite_ext(sGrowthAura, 0, x,y,1,1,angle,c_white,auraAlpha);
	
	auraAlpha -= game_get_speed(gamespeed_fps) * 0.0001;
	if(auraAlpha <= 0){
		auraAlpha = 1;
		oPlanet.endingTurn = false;
	}

}


draw_sprite_ext(sprite_index, 0, x,y,1,1, angle, c_white, 1);


//draw_set_color(c_red);
//	if(hoverUI != noone && hoverUI.slotInst == self ){
//		draw_line_width(x+sprite_width/2, y-sprite_width/2, hoverUI.x, hoverUI.y, 2);
//	}
//draw_set_color(c_white);