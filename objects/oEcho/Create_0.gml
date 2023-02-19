/// @description Insert description here
// You can write your code in this editor
radius = 0;
rad_scale_factor = 3;

alpha = 1;
col = colour;
cols = [c_aqua,c_yellow,c_white,c_purple,c_green,c_orange,c_lime];

if col {
	col = cols[irandom_range(0, 6)];
} else {
	col = c_black;
}