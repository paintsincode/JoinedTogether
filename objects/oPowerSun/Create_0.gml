/// @description Insert description here
// You can write your code in this editor


powerEffect = ["RaiseHeat", "LowerWetness"];

powerCost = 0;
powerHoverUI = -1;

powerName = "SunPower";

cw = camera_get_view_width(view_camera[0]);
ch = camera_get_view_height(view_camera[0]);

gx = display_get_gui_width()/cw;
gy = display_get_gui_height()/ch;