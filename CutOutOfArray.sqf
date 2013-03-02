/*-----------------------------------------------------------------
CutOutOfArray function -=- by snYpir

Cuts all elements out of an array that match an input variable

Called with:

[<value to cut>,<array>] call CutOutOfArray

Requires:

cutoutofarray.sqf to be preprocessed and present in the mission dir.
------------------------------------------------------------------*/

private ["_cut","_a","_aReturn"];

_cut =  _this select 0;
_a = _this select 1;

_aReturn = [];

{
	
	if (_x != _cut) then { _aReturn = _aReturn + [_x] };

} forEach _a;

_aReturn