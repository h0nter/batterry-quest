/// @description Insert description here
// You can write your code in this editor



action = mouse_check_button_released(mb_left)

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
if (mx != lastmx || my != lastmy) mousec = true;
lastmx = mx;
lastmy = my;

//if using keyboard then disable the mouse, so there is no confusion
if keyboard_check_pressed(vk_anykey) mousec = false;


var ax = 350;	//x loc on the GUI to anchor the menu from top left
var ay = 300;	//y loc on the GUI to anchor the menu from top left
var txt;
var col;
var i;
draw_set_font(fnt_menu);   //add your own custom font
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_alpha(1);

draw_set_font(fnt_menu);   
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text_transformed_color(x-100, y +400, "Battery Quest",1.50, 1.50,0, c_yellow, c_yellow, c_yellow, c_yellow, 1);

var xx = ax;
var yy = ay;

//find the widest menu item so we know where to create boundaries
var wide = 0;
for (var i = 0; i < menuitems; i++) {
	var w = string_width(menu[i]);  //find the widest string
	if w > wide wide = w;
}
var ls = (xx - 30);
var rs = (xx + wide);
		
/// DRAW MENU
for (var i = 0; i < menuitems; i++) {
			
	//highlight on mouse over
	if point_in_rectangle(mx,my,ls,yy-vS/3,rs,yy+vS/3) && mousec {
		if cursor != i audio_play_sound(snd_switch,1,false);
		cursor = i;
	}
	col = color1;
	txt = menu[i];
	if cursor == i col = color2;
	draw_text_transformed_color(xx,yy,menu[i],1,1,0,col,col,col,col,1);
	yy += vS;
}


if action {
	switch cursor {
		case 0:
			room_goto(RoomTunnel);
		break;
		case 1:
			room_goto(Instruction);
		break;
		case 2:
			room_goto(Room_Settings);
		break;
		case 3:
			room_goto(About);
		break;
		case 4:
			game_end();
		break;
	}
}