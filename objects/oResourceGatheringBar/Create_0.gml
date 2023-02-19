/// @description 

//x = view_wview[0]/2 - sprite_width/2 + view_xview[0];
//y = view_hview[0]/2 - sprite_height/2 + view_yview[0];

//pause objects functioning until needed, when another object changes pause to false
active = false;
//set object to invisible
visible = false;

//the amount of available energy at this resource
resource_energy_available = floor(random_range(3, 9))*10;

seconds_between_alarm_calls = 0.2;
alarm[0] = room_speed * seconds_between_alarm_calls; //set global timer '0' to trigger its events every 0.5 seconds (or whatever room_speed is being multiplied by)

//list of battery sprites to cycle through  (the values are percents)
battery_sprites = [sResourceBattery0,sResourceBattery20,sResourceBattery40,sResourceBattery60,sResourceBattery80,sResourceBattery100,sResourceBattery80,sResourceBattery60,sResourceBattery40,sResourceBattery20];
battery_values  = [0,                20,                40,                60,                80,                100,                80,                60,                40,                20];
battery_sprite_pointer = 0; //points at next sprite to display
energy_amount_collected = 0;

//this tells resource objects when they have been harvested, this will be true, then the resource
//will notice this variable has changed, act accordingly and change it back to false for the next resource
//to be harvested
energy_harvested = false;
