/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<32; i++){
	var X = i * 32;
	var Y = motion_bola(X, speedb, angle, 0, 0, grav);
	
	draw_set_color(c_red);
	draw_point(xstart + X, ystart - Y);
}