/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));

// Calculate horizontal speed

//React to the player's inputs
var move_h = key_right - key_left;

//Acceleration
if (_hsp < _maxhsp) && (_hsp > -_maxhsp)
{
    _hsp += move_h * _acc;
}
else if (_hsp = _maxhsp)
{
    if (key_right)
    {
        _hsp = _maxhsp;
    }
    else
    {
        _hsp -= 1;
    }
}
else if (_hsp = -_maxhsp)
{
    if (key_left)
    {
        _hsp = -_maxhsp;
    }
    else
    {
        _hsp += 1;
    }
}

if (place_meeting(x,y+1,oSolid)) {
	applyFriction(_gfrctn);
} else {
	applyFriction(_afrctn);
}
	

//if (_hsp > 0) && (key_left = 0) && (key_right = 0) && (place_meeting(x,y+1,oSolid)) {_hsp -= _gfrctn}

//if (_hsp < 0) && (key_left = 0) && (key_right = 0) && (place_meeting(x,y+1,oSolid)) {_hsp += _gfrctn}

//if (abs(_hsp) < 0.1) {_hsp = 0 }


if (_vsp < 15) _vsp += _grv;

if (place_meeting(x,y+1,oSolid))
{
    _vsp = key_jump * _acc * -30
}

if (energy < 20) {
	_hsp = _hsp/4;
}

//EVENT: Player runs out of energy - MAKE IT WORK WITH hsp
if(energy == 0) {_hsp = 1;}

//testing
energy_decrease(0.1);

hColDetect();

vColDetect();

x = x + _hsp;
y = y + _vsp;

// Fire projectile

if mouse_check_button_pressed(mb_left) && energy > 0 {
	instance_create_layer(x,y,"Instances_1",oProjectile11)
}