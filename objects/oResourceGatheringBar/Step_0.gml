/// @description 

if(active) {
	visible=true;
	//check if spacebar pressed to collect energy
	key_harvest = keyboard_check_pressed(vk_space);

	if(key_harvest) {
		energy_harvested = true;
		
		//calculate percent of available resource to collect    
		energy_amount_collected = (battery_values[battery_sprite_pointer] / 100) * resource_energy_available;
		oPlayer.energy = oPlayer.energy + energy_amount_collected;
		if(oPlayer.energy > oPlayer.max_energy) {oPlayer.energy = oPlayer.max_energy;}
		//pause it to hide resource gathering bar if resource has just been harvested
		active = false;
	}
} else {visible=false;}