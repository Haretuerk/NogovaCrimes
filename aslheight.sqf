/*----------------------------------------------------------------------------------------------------------------------
Computes the height above sea level
© by TakeOffTim
Wenn ihr diese Funktion in eurer Mission benutzen wollt, vermerkt bitte, dass sie von mir ist.
If you want to use this function in your mission, please make a note that I´ve made it.
----------------------------------------------------------------------------------------------------------------------*/

private ["_unit","_logic","_x","_y","_xLog","_yLog","_dist","_ground"];

_unit = _this select 0;
_logic = "logic" camCreate [0,0,0];

_x = getpos _unit select 0;
_y = getpos _unit select 1;
_dist = _logic distance _unit;
_ground = (_x ^ 2) + (_y ^ 2);

deleteVehicle _logic;

sqrt ((_dist ^ 2) - _ground)