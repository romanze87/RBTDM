////Warm-up Round\\\\
//Phase 1

rCountP = "N";
rCountC = "N";

preRound = 1;
publicVariable "preRound";
waitUntil {
	"Waiting for more players..." remoteExec ["hint",0,true];
	sleep 5;
	count (allPlayers select {side _x == west}) > 0 && 
	count (allPlayers select {side _x == east}) > 0
};


["Starting Round in...10sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...9sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...8sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...7sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...6sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...5sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...4sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...3sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...2sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["Starting Round in...1sec", "hint", true, false] call BIS_fnc_MP;
sleep 1;

//Phase 2;
{_x allowDamage false;} forEach allPlayers;
preRound = 2;
publicVariable "preRound";
["", "hint", true, false] call BIS_fnc_MP;
sleep 1;
["scripts\roundReset.sqf", "BIS_fnc_execVM", true, false, true] call BIS_fnc_MP;
waitUntil {
    (count (allPlayers select {_x getVariable ["resetDone", false]}) isEqualTo (count allPlayers));
};
["scripts\serverRounds1through11.sqf", "BIS_fnc_execVM", false, false, true] call BIS_fnc_MP;
{_x setVariable ["resetDone",nil,true];} forEach allPlayers;	