/// @description 

_cam = oCamera;
off = 30;

if instance_exists(_cam){
	x = _cam.x - off
	y = _cam.y - off
}

draw_sprite(sprite_index, 0, x, y);

draw_text_colour(10, 400, "Energy collected: " + string(energy_amount_collected), c_white, c_white, c_white, c_white, 1);

draw_text_colour(x-100, y+100, "This resource has a maximum of " + string(resource_energy_available) + " energy to collect.", c_white, c_white, c_white, c_white, 1);
