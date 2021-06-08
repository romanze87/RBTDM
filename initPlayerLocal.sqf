execVM "scripts\functions.sqf";
waitUntil {
	sleep 2;
	alive player &&
	!isNull player;
};
sleep .5;
player switchMove "HubSpectator_stand";	
waitUntil {
	hint "waiting for server check...";
	sleep 2;
	!isNil "preRound";
};
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
if (side player == WEST) then {
	execVM "gearPresets\riflemanClassB.sqf";
};
if (side player == EAST) then {
	execVM "gearPresets\riflemanClassO.sqf";
};
if (preRound == 1) exitWith {};
if (preRound == 2) then {
	setPlayerRespawnTime 9999;
	if (alive player) then {
		forceRespawn player;
	};
	player setVariable ["deciderDone",true,true];
	player setVariable ["resetDone",true,true];
	hint "Waiting for next Round...";
};