/// @description Insert description here
// You can write your code in this editor
_radius += _intrpdir * _intrpspd;
_alpha += _intrpdir * _alphaspd;

if (_radius >= _maxr){
	_radius = _maxr
	_intrpdir *= -1;
}else if (_radius <= _minr) {
	_radius = _minr
	_intrpdir *= -1;
}