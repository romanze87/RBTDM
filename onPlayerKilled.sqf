if (group player == blueGroup) then { 
 ["Initialize", [player, [WEST], false, false, true, true, true, true, true, false]] call BIS_fnc_EGSpectator; 
};

if (group player == redGroup) then {
	["Initialize", [player, [EAST], false, false, true, true, true, true, true, false]] call BIS_fnc_EGSpectator;
};
