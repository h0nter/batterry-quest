/// Initialize Variable
_hsp = 0;
_vsp = 0;
_acc = 0.5;
_maxhsp = 7;
_gfrctn = 0.25;
_afrctn = 0.1;
_grv = global.grav;

//ENERGY constants
max_energy = 100;
min_energy = 0;
energy = 100; //starting energy

//movement_speed = 10 //just for testing the energy features

//ENERGY functions
//decrease energy
function energy_decrease(amount)
{
	energy = energy - amount;
	if(energy < min_energy) {energy = min_energy;}
	//do action if trying to use energy but none available
}

//increase energy
function energy_increase(amount)
{
	energy = energy + amount;
	if(energy > max_energy) {energy = max_energy;}
	//do action if excess energy???
}

instance_create_layer(x,y,"Instances_Echo",oPlayerEcho);

function hColDetect() {
	if (place_meeting(x + _hsp, y, oSolid)){	
		while (!place_meeting(x + sign(_hsp), y, oSolid)){
			x = x + sign(_hsp);
		}
		_hsp = 0;
	}
}

function vColDetect() {
	if (place_meeting(x, y + _vsp, oSolid)){	
		while (!place_meeting(x, y + sign(_vsp), oSolid)){
			y = y + sign(_vsp);
		}
		_vsp = 0;
	}
}

function applyFriction(frctn){
	_hsp = _hsp - (sign(_hsp) * frctn);
	if (_hsp < 0.11) && (_hsp > -0.11) {_hsp = 0};
}