/// @description Rotation

if place_meeting(x,y+1,oSolid){
	hspeed *= 0.99;
}

_rotdeg -= hspeed;

//Draw sprite
draw_sprite_ext(sProjectile,image_index,x,y,image_xscale,image_yscale,_rotdeg,c_white,1);