/// @description



//show energy level with text
draw_set_font(sFont3);
draw_set_color(c_white);
//if (instance_exists(player_object)) {
var energy_text = "Energy: " + string(oPlayer.energy);
var text_width = string_width(energy_text);
var text_height = string_height(energy_text);
//CHANGE TO VIEWPORT
draw_text(x - text_width - 20, 10, energy_text);//, c_white, c_white, c_white, c_white, 1);

draw_sprite(sprite_index, 0, x, y)