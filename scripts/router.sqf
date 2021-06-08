_roundNumParam = "RoundNumber" call BIS_fnc_getParamValue;
_oTPoint = _roundNumParam + 1;
_winningPoint = _oTPoint / 2;
_rCount = deciderVars select 4;
_oTCount = deciderVars select 5;
_rScore = deciderVars select 6;
_tScore = deciderVars select 7;

////Game Ending Options\\\\
//Majority of Points out of Total Points\\\\ Example 6/11

if (_rScore == _winningPoint) exitWith {
	["EndR", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};
if (_tScore == _winningPoint) exitWith {
	["EndT", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};

//Last Round and Majority Points Wins
if (_rCount >= _roundNumParam && _rScore > _tScore) exitWith {
	["EndR", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};
if (_rCount >= _roundNumParam && _tScore > _rScore) exitWith {
	["EndT", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};

//
if (_oTCount > 0 && _rScore > _tScore) exitWith {
	["EndR", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};

if (_oTCount > 0 && _tScore > _rScore) exitWith {
	["EndT", "BIS_fnc_endMission", true, false, true] call BIS_fnc_MP;
};


////Point Adder\\\\

if (_rCount < _roundNumParam) then {
	_rCount = _rCount + 1;
	deciderVars set [4, _rCount]; //rCount
};
if (_rCount == _roundNumParam) then {
	_oTCount = _oTCount + 1;
	deciderVars set [5, _oTCount]; //oTCount
};

publicVariable "deciderVars";
sleep 1;
["scripts\roundReset.sqf", "BIS_fnc_execVM", true, false, true] call BIS_fnc_MP;
waitUntil {
    (count (allPlayers select {_x getVariable ["resetDone", false]}) isEqualTo (count allPlayers));
};
["scripts\serverRounds1through11.sqf", "BIS_fnc_execVM", false, false, true] call BIS_fnc_MP;
{_x setVariable ["resetDone",nil,true];} forEach allPlayers;	