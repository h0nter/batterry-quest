/// @description initialisation of battery object

//ENERGY constants CHANGE TO VIEWPORT
_cam = oCamera;
off = 30;

if instance_exists(_cam){
	x = _cam.x - off
	y = _cam.y - off
}

sprite_index = sBattery100;

//player_object = instance_find(oPlayer, 0); //find first instance of oPlayer class


