/// @description Compute bouncy movemement of the projectile
// Apply gravity
vspeed += _grv;
//instance_create_layer(x,y,"Instances_Echo",oPlayerEcho);

if place_meeting(x, y + 1, oSolid){
	
	if hspeed <= 0.1 {
		hspeed = 0
	}
	if vspeed <= 5 {
		vspeed = 0
	}
}

// X-Axis Collision
if place_meeting(x + hspeed, y, oSolid){
	while(!place_meeting(x + sign(hspeed), y, oSolid)){
		x += sign(hspeed);
	}
	hspeed *= -_bouncedecay;
	instance_create_layer(x,y,"Instances_Echo",oEcho);
}

// Y-Axis Collision
if place_meeting(x, y + vspeed, oSolid){
	while(!place_meeting(x, y + sign(vspeed), oSolid)){
		y += sign(vspeed);
	}
	vspeed *= -_bouncedecay;
	instance_create_layer(x,y,"Instances_Echo",oEcho);
}

if (hspeed == 0) {
	instance_destroy(self);
}

// Update position
x+=hspeed
y+=vspeed;