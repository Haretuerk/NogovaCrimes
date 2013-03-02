private ["_x", "_Array", "_N", "_i", "_TempArray","_Temp"];

_x =  _this select 0;
_Array = _this select 1;

_TempArray = [];
_N = count _Array;
_i = 0;
while {_i < _N} 
do
   {
   _temp = _Array select _i;
      if (_i != _x) then {_tempArray set [count _tempArray, _temp ]};
   _i = _i + 1;
   };
_Array = _Temparray;

_Array


