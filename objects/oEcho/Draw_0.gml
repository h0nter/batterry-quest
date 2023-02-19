/// @description Insert description here
// You can write your code in this editor
var _cur_alpha = draw_get_alpha();
draw_set_alpha(alpha);
draw_circle_color(x, y, radius, c_black, col, false);
draw_set_alpha(_cur_alpha);