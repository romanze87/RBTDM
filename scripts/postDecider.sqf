_dTC = deciderVars select 1;
_BWR = deciderVars select 2;
_OWR = deciderVars select 3;
_rCount = deciderVars select 4;

////BluFor Wins\\\\

switch (true) do {
	case (_BWR): {
		if (_rCount == 1) then {
			["round1B","Succeeded",true] call BIS_fnc_taskSetState;
			["round1O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 2) then {
			["round2B","Succeeded",true] call BIS_fnc_taskSetState;
			["round2O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 3) then {
			["round3B","Succeeded",true] call BIS_fnc_taskSetState;
			["round3O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 4) then {
			["round4B","Succeeded",true] call BIS_fnc_taskSetState;
			["round4O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 5) then {
			["round5B","Succeeded",true] call BIS_fnc_taskSetState;
			["round5O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 6) then {
			["round6B","Succeeded",true] call BIS_fnc_taskSetState;
			["round6O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 7) then {
			["round7B","Succeeded",true] call BIS_fnc_taskSetState;
			["round7O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 8) then {
			["round8B","Succeeded",true] call BIS_fnc_taskSetState;
			["round8O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 9) then {
			["round9B","Succeeded",true] call BIS_fnc_taskSetState;
			["round9O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 10) then {
			["round10B","Succeeded",true] call BIS_fnc_taskSetState;
			["round10O","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 11) then {
			["round11B","Succeeded",true] call BIS_fnc_taskSetState;
			["round11O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 12) then {
			["round12B","Succeeded",true] call BIS_fnc_taskSetState;
			["round12O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 13) then {
			["round13B","Succeeded",true] call BIS_fnc_taskSetState;
			["round13O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 14) then {
			["round14B","Succeeded",true] call BIS_fnc_taskSetState;
			["round14O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 15) then {
			["round15B","Succeeded",true] call BIS_fnc_taskSetState;
			["round15O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 16) then {
			["round16B","Succeeded",true] call BIS_fnc_taskSetState;
			["round16O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 17) then {
			["round17B","Succeeded",true] call BIS_fnc_taskSetState;
			["round17O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 18) then {
			["round18B","Succeeded",true] call BIS_fnc_taskSetState;
			["round18O","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 19) then {
			["round19B","Succeeded",true] call BIS_fnc_taskSetState;
			["round19O","Failed",true] call BIS_fnc_taskSetState;
		};
	
	sleep 1;
	playMusic "rWM";
	20 fadeMusic 0;
		}; 

	case (_OWR): {
		if (_rCount == 1) then {
			["round1O","Succeeded",true] call BIS_fnc_taskSetState;
			["round1B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 2) then {
			["round2O","Succeeded",true] call BIS_fnc_taskSetState;
			["round2B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 3) then {
			["round3O","Succeeded",true] call BIS_fnc_taskSetState;
			["round3B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 4) then {
			["round4O","Succeeded",true] call BIS_fnc_taskSetState;
			["round4B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 5) then {
			["round5O","Succeeded",true] call BIS_fnc_taskSetState;
			["round5B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 6) then {
			["round6O","Succeeded",true] call BIS_fnc_taskSetState;
			["round6B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 7) then {
			["round7O","Succeeded",true] call BIS_fnc_taskSetState;
			["round7B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 8) then {
			["round8O","Succeeded",true] call BIS_fnc_taskSetState;
			["round8B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 9) then {
			["round9O","Succeeded",true] call BIS_fnc_taskSetState;
			["round9B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 10) then {
			["round10O","Succeeded",true] call BIS_fnc_taskSetState;
			["round10B","Failed",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 11) then {
			["round11O","Succeeded",true] call BIS_fnc_taskSetState;
			["round11B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 12) then {
			["round12O","Succeeded",true] call BIS_fnc_taskSetState;
			["round12B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 13) then {
			["round13O","Succeeded",true] call BIS_fnc_taskSetState;
			["round13B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 14) then {
			["round14O","Succeeded",true] call BIS_fnc_taskSetState;
			["round14B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 15) then {
			["round15O","Succeeded",true] call BIS_fnc_taskSetState;
			["round15B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 16) then {
			["round16O","Succeeded",true] call BIS_fnc_taskSetState;
			["round16B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 17) then {
			["round17O","Succeeded",true] call BIS_fnc_taskSetState;
			["round17B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 18) then {
			["round18O","Succeeded",true] call BIS_fnc_taskSetState;
			["round18B","Failed",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 19) then {
			["round19O","Succeeded",true] call BIS_fnc_taskSetState;
			["round19B","Failed",true] call BIS_fnc_taskSetState;
		};
	
	sleep 1;
	playMusic "tWM";
	20 fadeMusic 0;
	};
	
	case (_dTC): {
		if (_rCount == 1) then {
			["round1O","Canceled",true] call BIS_fnc_taskSetState;
			["round1B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 2) then {
			["round2O","Canceled",true] call BIS_fnc_taskSetState;
			["round2B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 3) then {
			["round3O","Canceled",true] call BIS_fnc_taskSetState;
			["round3B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 4) then {
			["round4O","Canceled",true] call BIS_fnc_taskSetState;
			["round4B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 5) then {
			["round5O","Canceled",true] call BIS_fnc_taskSetState;
			["round5B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 6) then {
			["round6O","Canceled",true] call BIS_fnc_taskSetState;
			["round6B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 7) then {
			["round7O","Canceled",true] call BIS_fnc_taskSetState;
			["round7B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 8) then {
			["round8O","Canceled",true] call BIS_fnc_taskSetState;
			["round8B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 9) then {
			["round9O","Canceled",true] call BIS_fnc_taskSetState;
			["round9B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 10) then {
			["round10O","Canceled",true] call BIS_fnc_taskSetState;
			["round10B","Canceled",true] call BIS_fnc_taskSetState;
		};

		if (_rCount == 11) then {
			["round11O","Canceled",true] call BIS_fnc_taskSetState;
			["round11B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 12) then {
			["round12O","Canceled",true] call BIS_fnc_taskSetState;
			["round12B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 13) then {
			["round13O","Canceled",true] call BIS_fnc_taskSetState;
			["round13B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 14) then {
			["round14O","Canceled",true] call BIS_fnc_taskSetState;
			["round14B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 15) then {
			["round15O","Canceled",true] call BIS_fnc_taskSetState;
			["round15B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 16) then {
			["round16O","Canceled",true] call BIS_fnc_taskSetState;
			["round16B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 17) then {
			["round17O","Canceled",true] call BIS_fnc_taskSetState;
			["round17B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 18) then {
			["round18O","Canceled",true] call BIS_fnc_taskSetState;
			["round18B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
		if (_rCount == 19) then {
			["round19O","Canceled",true] call BIS_fnc_taskSetState;
			["round19B","Canceled",true] call BIS_fnc_taskSetState;
		};
	
	};
};
sleep 20;	
playMusic "";	
0 fadeMusic 1;	
hint "";
if (alive player) then {
	player switchMove "HubSpectator_stand";
};
titleCut ["", "BLACK", 3];
player setVariable ["deciderDone",true,true];