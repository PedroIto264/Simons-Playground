/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<50; i+=0.1){
	var X = i * 32;
	var Y = motion_bola(X, speedb, angle, 0, 0, grav);
	
	draw_set_color(c_red);
	draw_circle(xstart + X, ystart - Y, 1, c_red);
}