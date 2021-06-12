/// @description Insert description here
// You can write your code in this editor


switch(oPowerCaster.activePower){
	case "":
	break;
	case "RainPower":
		wetnessVal += 20;
	break;
	case "SunPower":
		heatVal += 20;
		wetnessVal -= 10;
	break;
	case "SnowPower":
		heatVal -= 20;
	break;
	default:
		show_debug_message("No valid power")
	break;
}