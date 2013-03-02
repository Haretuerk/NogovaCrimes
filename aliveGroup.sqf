
// ******************************************************************************************

// aliveGroup.sqf

// Returns true if group has at least 1 alive member, false if all are dead.

// USAGE: 

// init:	aliveGroup = preprocessFile "aliveGroup.sqf"

// calling:	<group> call aliveGroup

// returns:	<boolean>

// example:	

// if ( grpWest1 call aliveGroup ) then { hint "Someone's alive!" } else { hint "All dead!" }

// Credits: Ding, bedges (inspired by their forum posts)

// Baddo 2005
// You can contact me through www.ofpec.com

// ******************************************************************************************

private "_grpAlive";

_grpAlive = false;

if ( {alive _x} count units _this > 0 ) then { _grpAlive = true; };

_grpAlive
