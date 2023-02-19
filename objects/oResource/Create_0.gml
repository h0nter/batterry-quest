/// @description 

resource_types = [sResourceWind, sResourceSolar, sResourceWater];
harvested = false; //true when player has collected resource
sprite_index = resource_types[irandom_range(0, 2)];
visible = true;

//the battery bar that the user sees to harvest energy when standing by resources
barx = view_wview[0]/2 - sprite_width/2 + view_xview[0];
bary = view_hview[0]/2 - sprite_height/2 + view_yview[0];

//flag to see if created a gather bar for this resource yet
gather_bar_created = false;
//gather_bar = instance_create_layer(barx, bary, "Instances", oResourceGatheringBar);
