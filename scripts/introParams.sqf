_roundNumParam = "RoundNumber" call BIS_fnc_getParamValue;
_roundTimeParam = "RoundTime" call BIS_fnc_getParamValue;
_unlocksParam = "Unlocks" call BIS_fnc_getParamValue;
if (_unlocksParam == 1) then {
	sayOnOff = "ON";
};
if (_unlocksParam == 0) then {
	sayOnOff = "OFF";
};
_daytimeParam = "Daytime" call BIS_fnc_getParamValue;
if (_daytimeParam == 6) then {
	sayTime = "MORNING";
};
if (_daytimeParam == 12) then {
	sayTime = "DAY";
};
if (_daytimeParam == 18) then {
	sayTime = "EVENING";
};
if (_daytimeParam == 0) then {
	sayTime = "NIGHT";
};
0=[
	[
		[format ["%1 - Rounds", _roundNumParam], "align = 'left' shadow = '1' size = '0.7' font='PuristaBold'"],
		["","<br/>"],
		[format ["%1 Minute - Rounds", _roundTimeParam], "align = 'left' shadow = '1' size = '0.7' font='PuristaBold'"],
		["","<br/>"],
		[format ["Class Unlocks - %1", sayOnOff], "align = 'left' shadow = '1' size = '0.7' font='PuristaBold'"],
		["","<br/>"],
		[format ["Time of Day - %1", sayTime], "align = 'left' shadow = '1' size = '0.7' font='PuristaBold'"]
	]
] spawn BIS_fnc_typeText2;

sayOnOff = nil;
sayTime = nil;