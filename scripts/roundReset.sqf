_roundNumParam = "RoundNumber" call BIS_fnc_getParamValue;
_unlocksParam = "Unlocks" call BIS_fnc_getParamValue;
_oTPoint = _roundNumParam + 1;
_winningPoint = _oTPoint / 2;
_rCount = deciderVars select 4;
_oTCount = deciderVars select 5;
_rScore = deciderVars select 6;
_tScore = deciderVars select 7;
_mCB = deciderVars select 8;
_mCO = deciderVars select 9;

setPlayerRespawnTime 0;
_resetIncapPlayer = lifeState player;
if (_resetIncapPlayer == "INCAPACITATED") then {
	forceRespawn player;
};
waitUntil {
	sleep .5;
	alive player;
};
if (alive player) then {
	player switchMove "HubSpectator_stand";
};
["Terminate"] call BIS_fnc_EGSpectator;
{_x allowDamage false;} forEach allPlayers;

////Clear Mines\\\\

if ((count allMines) > 0) then {
	while {
		((count allMines) > 0)
	} do {
		deleteVehicle (allMines select 0);
		sleep .5;
	};
};

////West Players\\\\

if (!isNil "bp1") then {
	bp1 setDir 012;
	bp1 setPos (getMarkerPos "bP1S");
} else {};
if (!isNil "bp2") then {
	bp2 setDir 012;
	bp2 setPos (getMarkerPos "bP2S");
} else {};
if (!isNil "bp3") then {
	bp3 setDir 012;
	bp3 setPos (getMarkerPos "bP3S");
} else {};
if (!isNil "bp4") then {
	bp4 setDir 012;
	bp4 setPos (getMarkerPos "bP4S");
} else {};

////East Players\\\\

if (!isNil "op1") then {
	op1 setDir 267;
	op1 setPos (getMarkerPos "oP1S");
} else {};
if (!isNil "op2") then {
	op2 setDir 267;
	op2 setPos (getMarkerPos "oP2S");
} else {};
if (!isNil "op3") then {
	op3 setDir 267;
	op3 setPos (getMarkerPos "oP3S");
} else {};
if (!isNil "op4") then {
	op4 setDir 267;
	op4 setPos (getMarkerPos "oP4S");
} else {};

player setFatigue 0;
player setDamage 0;

////Gear Presets\\\\ Award gear unlocks based on side scores.

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
titlecut [" ","BLACK IN",3];
sleep 3;
if ((side player == WEST) && _unlocksParam == 1) then {
	_droneClassB = {player addAction ["<t color='#ff6600'>UAV Operator</t>", "gearPresets\droneClassB.sqf"]};
	_spyClassB = {player addAction ["<t color='#ff6600'>Spy</t>", "gearPresets\spyClassB.sqf"]};
	_glClassB = {player addAction ["<t color='#ff6600'>Grenade Launcher</t>", "gearPresets\glClassB.sqf"]};
	randomClassB = selectRandom [_droneClassB, _spyClassB, _glClassB];
	_bfgv3 = player addAction ["<t color='#ff6600'>Rifleman</t>", "gearPresets\riflemanClassB.sqf"];
	if (_rScore >= 1) then {
	_bfgv4 = player addAction ["<t color='#ff6600'>Pistol Only</t>", "gearPresets\pistolClassB.sqf"];
	};
	if (_rScore >= 2) then {
		_bfgv5 = player addAction ["<t color='#ff6600'>Automatic Rifleman</t>", "gearPresets\autoClassB.sqf"];
	};
	if (_rScore >= 3) then {
		_bfgv2 = player addAction ["<t color='#ff6600'>Demolition</t>", "gearPresets\demoClassB.sqf"];
	};
	if (_rScore >= 4) then {
		_bfgv1 = player addAction ["<t color='#ff6600'>Marksman</t>", "gearPresets\marksClassB.sqf"];
	};
	if ((_mCB) && side player == WEST) then {
	_bfgv6 = player addAction ["<t color='#ff6600'>Medic</t>", "gearPresets\medicClassB.sqf"];
	};
	if (awardClassB) then {
		[] spawn randomClassB;
	};
	titletext ["You have 10s to choose a loadout.","plain"];
	sleep 5;
	titletext ["You have 5s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 4s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 3s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 2s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 1s to choose a loadout.","plain"];
	sleep 1;
	titletext ["","plain"];
	removeAllActions player;
	awardClassB = false;
	publicVariable "awardClassB";
};

if ((side player == EAST) && _unlocksParam == 1) then {
	_droneClassO = {player addAction ["<t color='#ff6600'>UAV Operator</t>", "gearPresets\droneClassO.sqf"]};
	_spyClassO = {player addAction ["<t color='#ff6600'>Spy</t>", "gearPresets\spyClassO.sqf"]};
	_glClassO = {player addAction ["<t color='#ff6600'>Grenade Launcher</t>", "gearPresets\glClassO.sqf"]};
	randomClassO = selectRandom [_droneClassO, _spyClassO, _glClassO];
	_ofgv3 = player addAction ["<t color='#ff6600'>Rifleman</t>", "gearPresets\riflemanClassO.sqf"];
	if (_tScore >= 1) then {
	_ofgv4 = player addAction ["<t color='#ff6600'>Pistol Only</t>", "gearPresets\pistolClassO.sqf"];
	};
	if (_tScore >= 2) then {
	_ofgv5 = player addAction ["<t color='#ff6600'>Automatic Rifleman</t>", "gearPresets\autoClassO.sqf"];
	};
	if (_tScore >= 3) then {
		_ofgv2 = player addAction ["<t color='#ff6600'>Demolition</t>", "gearPresets\demoClassO.sqf"];
	};
	if (_tScore >= 4) then {
		_ofgv1 = player addAction ["<t color='#ff6600'>Marksman</t>", "gearPresets\marksClassO.sqf"];
	};
	if ((_mcO) && side player == EAST) then {
	_ofgv6 = player addAction ["<t color='#ff6600'>Medic</t>", "gearPresets\medicClassO.sqf"];
	};
	if (awardClassO) then {
		[] spawn randomClassO;
	};
	titletext ["You have 10s to choose a loadout.","plain"];
	sleep 5;
	titletext ["You have 5s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 4s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 3s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 2s to choose a loadout.","plain"];
	sleep 1;
	titletext ["You have 1s to choose a loadout.","plain"];
	sleep 1;
	titletext ["","plain"];
	removeAllActions player;
	awardClassO = false;
	publicVariable "awardClassO";
};

////Task Creator\\\\ Creates tasks to keep track of who wins what rounds for the results screen. Turns Round Created to true

switch (_rCount) do {
	case 1: {
		["round1B", WEST, ["Eliminate all Terrorists.", "Round 1", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round1O", EAST, ["Eliminate all Rangers.", "Round 1", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};

	case 2: {
		["round2B", WEST, ["Eliminate all Terrorists.", "Round 2", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round2O", EAST, ["Eliminate all Rangers.", "Round 2", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 3: {
		["round3B", WEST, ["Eliminate all Terrorists.", "Round 3", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round3O", EAST, ["Eliminate all Rangers.", "Round 3", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 4: {
		["round4B", WEST, ["Eliminate all Terrorists.", "Round 4", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round4O", EAST, ["Eliminate all Rangers.", "Round 4", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 5: {
		["round5B", WEST, ["Eliminate all Terrorists.", "Round 5", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round5O", EAST, ["Eliminate all Rangers.", "Round 5", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 6: {
		["round6B", WEST, ["Eliminate all Terrorists.", "Round 6", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round6O", EAST, ["Eliminate all Rangers.", "Round 6", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 7: {
		["round7B", WEST, ["Eliminate all Terrorists.", "Round 7", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round7O", EAST, ["Eliminate all Rangers.", "Round 7", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 8: {
		["round8B", WEST, ["Eliminate all Terrorists.", "Round 8", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round8O", EAST, ["Eliminate all Rangers.", "Round 8", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 9: {
		["round9B", WEST, ["Eliminate all Terrorists.", "Round 9", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round9O", EAST, ["Eliminate all Rangers.", "Round 9", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 10: {
		["round10B", WEST, ["Eliminate all Terrorists.", "Round 10", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round10O", EAST, ["Eliminate all Rangers.", "Round 10", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 11: {
		["round11B", WEST, ["Eliminate all Terrorists.", "Round 11", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round11O", EAST, ["Eliminate all Rangers.", "Round 11", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};

	case 12: {
		["round12B", WEST, ["Eliminate all Terrorists.", "Round 12", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round12O", EAST, ["Eliminate all Rangers.", "Round 12", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 13: {
		["round13B", WEST, ["Eliminate all Terrorists.", "Round 13", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round13O", EAST, ["Eliminate all Rangers.", "Round 13", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 14: {
		["round14B", WEST, ["Eliminate all Terrorists.", "Round 14", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round14O", EAST, ["Eliminate all Rangers.", "Round 14", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 15: {
		["round15B", WEST, ["Eliminate all Terrorists.", "Round 15", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round15O", EAST, ["Eliminate all Rangers.", "Round 15", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 16: {
		["round16B", WEST, ["Eliminate all Terrorists.", "Round 16", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round16O", EAST, ["Eliminate all Rangers.", "Round 16", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 17: {
		["round17B", WEST, ["Eliminate all Terrorists.", "Round 17", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round17O", EAST, ["Eliminate all Rangers.", "Round 17", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 18: {
		["round18B", WEST, ["Eliminate all Terrorists.", "Round 18", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round18O", EAST, ["Eliminate all Rangers.", "Round 18", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	case 19: {
		["round19B", WEST, ["Eliminate all Terrorists.", "Round 19", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;

		["round19O", EAST, ["Eliminate all Rangers.", "Round 19", "Town Center"], 
		getMarkerPos "taskArea", "ASSIGNED", 1, false, true, "", true] call BIS_fnc_setTask;
	};
	
	default {
		hint "Could not create task.";
	};
};


////Start Round\\\\

player playMove "AmovPercMstpSlowWrflDnon";
setPlayerRespawnTime 9999;

////Round Counter Text\\\\

if (_rCount <= _roundNumParam) then {
	0 = [
			[
				[format ["Round %1 / %2", _rCount, _roundNumParam],"align = 'center' shadow = '1' size = '1' size = '1'","#4d4d4d"],
				["","<br/>"],
				[format ["Rangers - %1", _rScore],"align = 'center' shadow = '1' size = '1'","#000099"],
				["","<br/>"],
				[format ["Terrorist - %1", _tScore],"align = 'center' shadow = '1' size = '1'","#990000"],
				["","<br/>"]
			]
		] spawn BIS_fnc_typeText2;
};
if (_oTCount > 0) then {
	0 = [
			[
				[format ["Overtime Round %1", _oTCount],"align = 'center' shadow = '1' size = '1' size = '1'","#4d4d4d"],
				["","<br/>"],
				[format ["Rangers - %1", _rScore],"align = 'center' shadow = '1' size = '1'","#000099"],
				["","<br/>"],
				[format ["Terrorist - %1", _tScore],"align = 'center' shadow = '1' size = '1'","#990000"],
				["","<br/>"]
			]
		] spawn BIS_fnc_typeText2;
};
sleep 8;
player setVariable ["resetDone",true,true];
{_x allowDamage true;} forEach allPlayers;