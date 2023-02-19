/// @description Insert description here
// You can write your code in this editor
radius += rad_scale_factor;
if (colour) {
	alpha -= 0.01;
}

if (alpha <= 0) {
	instance_destroy(self);
}