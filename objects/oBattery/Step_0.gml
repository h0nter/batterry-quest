/// @description ENERGY functions
if instance_exists(_cam) {
	x = _cam.x + _cam.view_w_half - off;
	y = _cam.y - _cam.view_h_half + off;
}


//set sprite to correct sprite for battery level
//if (instance_exists(player_object)) {
if (oPlayer.energy > 89)
{
	sprite_index = sBattery100;
} else if (oPlayer.energy > 69)
{
	sprite_index = sBattery80;
} else if (oPlayer.energy > 49)
{
	sprite_index = sBattery60;
} else if (oPlayer.energy > 29)
{
	sprite_index = sBattery40;
} else if (oPlayer.energy > 9)
{
	sprite_index = sBattery20;
} else
{
	sprite_index = sBattery0;
}




