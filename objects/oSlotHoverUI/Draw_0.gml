


xx1 = x -20;
xx2 = x;
xx3 = x + 20;
yy = y;
yyu = y-20;
yyd = y+20;


//draw_rectangle_color(x-30,y-30, x+30, y+30, c_black, c_black,c_black, c_black, false )

draw_sprite_ext(sUIGrowth, 0, xx1, yy, 1,1, 0, c_white,1);
draw_sprite_ext(sUIHeat, 0, xx2, yy, 1,1, 0, c_white,1);
draw_sprite_ext(sUIWetness, 0, xx3, yy, 1,1, 0, c_white,1);

if(growth >0){
	draw_sprite_ext(sUIUp, 0, xx1, yyu, 1,1, 0, c_white,1);
}
if(growth <0){
	draw_sprite_ext(sUIDown, 0, xx1, yyd, 1,1, 0, c_white,1);
}

if(heat >0){
	draw_sprite_ext(sUIUp, 0, xx2, yyu, 1,1, 0, c_white,1);
}
if(heat <0){
	draw_sprite_ext(sUIDown, 0, xx2, yyd, 1,1, 0, c_white,1);
}

if(wetness >0){
	draw_sprite_ext(sUIUp, 0, xx3, yyu, 1,1, 0, c_white,1);
}
if(wetness <0){
	draw_sprite_ext(sUIDown, 0, xx3, yyd, 1,1, 0, c_white,1);
}
