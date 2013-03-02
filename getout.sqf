
/*----------------------------------------------------------
GetOut function -=- by snYpir

Forces a single unit get out of whatever vehicle they are in

Called with:

<name of unit to make getout> call GetOut

Requires:

GetOut.sqf to be preprocessed and present in the mission dir.
-----------------------------------------------------------*/

// declare private variables
private ["_unit","_vehicle","_action","_return"];

// get the name of the unit passed into the function
_unit = _this;

// action to take ("GETOUT" or "EJECT")
_action = "GETOUT";

// is the unit in a vehicle?
if (vehicle _unit != _unit) then
{
	// determine what vehicle the unit is in
	_vehicle = vehicle _unit;

	// make the unit get out of the vehicle
	_unit action[_action,_vehicle];
		
	// so the unit doesn't try and get back into the vehicle...
	unassignvehicle _unit;
	
	_return = true;
}
else
{
	_return = false;
};

_return