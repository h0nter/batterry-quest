/// @description Insert description here
// You can write your code in this editor
var _cur_alpha = draw_get_alpha();
draw_set_alpha(_alpha);
if (instance_exists(_player)){
	draw_circle(_player.x, _player.y, _radius, false);
}
draw_set_alpha(_cur_alpha);