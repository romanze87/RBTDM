////BluFor Wins\\\\

if (BWR) then {
	if (rCount == 1) then {
		["round1B","Succeeded",true] call BIS_fnc_taskSetState;
		["round1O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 2) then {
		["round2B","Succeeded",true] call BIS_fnc_taskSetState;
		["round2O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 3) then {
		["round3B","Succeeded",true] call BIS_fnc_taskSetState;
		["round3O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 4) then {
		["round4B","Succeeded",true] call BIS_fnc_taskSetState;
		["round4O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 5) then {
		["round5B","Succeeded",true] call BIS_fnc_taskSetState;
		["round5O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 6) then {
		["round6B","Succeeded",true] call BIS_fnc_taskSetState;
		["round6O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 7) then {
		["round7B","Succeeded",true] call BIS_fnc_taskSetState;
		["round7O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 8) then {
		["round8B","Succeeded",true] call BIS_fnc_taskSetState;
		["round8O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 9) then {
		["round9B","Succeeded",true] call BIS_fnc_taskSetState;
		["round9O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 10) then {
		["round10B","Succeeded",true] call BIS_fnc_taskSetState;
		["round10O","Failed",true] call BIS_fnc_taskSetState;
	};

	if (rCount == 11) then {
		["round11B","Succeeded",true] call BIS_fnc_taskSetState;
		["round11O","Failed",true] call BIS_fnc_taskSetState;
	};
	sleep 1;
	playMusic "rWM";
	20 fadeMusic 0;
}; 