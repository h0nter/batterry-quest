/// @description 

//create gather bar as soon as possible
if(!gather_bar_created) {
	if (instance_exists(oResourceGatheringBar)) {
		gather_bar = instance_create_layer(barx, bary, "Instances_1", oResourceGatheringBar);
		gather_bar_created = true;
	}
}

//when a player collides with a resource they can harvest it
if (!harvested) && (place_meeting(x, y, oPlayer)) {
	gather_bar.active = true;
	if (gather_bar.energy_harvested == true) {
		harvested = true;
		gather_bar.energy_harvested = false; //set bar back to default setting ready for next resource harvest
	}
	
} else {gather_bar.active = false;}
if (harvested) {
	visible = false;
}

