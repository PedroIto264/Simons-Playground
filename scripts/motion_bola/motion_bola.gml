// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function motion_bola(x, speedb, angle, startx, starty, grav){
	var xx = argument0;
	var spd = argument1;
	var ang = degtorad(argument2);
	var x0 = argument3;
	var y0 = argument4;
	var gr = argument5;
	var posY = 0;
	
	if(cos(ang) != 0 && spd != 0){
		var posY = -(gr/2) * (power(xx-x0, 2) / (power(spd, 2) * power(cos(ang), 2))) + tan(ang) * (xx-x0) + y0;
	}
	else{
		posY =  0;
	}
	return posY;
}