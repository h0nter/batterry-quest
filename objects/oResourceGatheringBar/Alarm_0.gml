/// @description 

if(active && !energy_harvested) { //keep cycling sprites while active (visible to player)
	sprite_index = battery_sprites[battery_sprite_pointer];
	battery_sprite_pointer = battery_sprite_pointer + 1;
	if(battery_sprite_pointer == array_length_1d(battery_sprites)) {battery_sprite_pointer = 0;}
}

//when the alarm is triggered it calls itself again, in a cycle, in order to keep running in the background
alarm[0] = room_speed * seconds_between_alarm_calls;