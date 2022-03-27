/////////////////////////////////////
// Function file for Armed Assault //
//    Created by: DreadedEntity    //
/////////////////////////////////////

NEEDS_GEAR_CHANGE = true;
PLAYER_HEIGHT_STATE = 0;
private ["_action", "_veh", "_height"];
_action = "LandGear";
while {true} do {
	if (vehicle player != player) then {
		_veh = vehicle player;
		_height = (getPosATL _veh) select 2;
		if (speed _veh < 50) then {
			if (_height > 5) then {
				if (PLAYER_HEIGHT_STATE == 0) then {
					PLAYER_HEIGHT_STATE = 1;
					NEEDS_GEAR_CHANGE = true;
					_action = "LandGearUp";
				};
			} else {
				if (PLAYER_HEIGHT_STATE == 1) then {
					PLAYER_HEIGHT_STATE = 0;
					NEEDS_GEAR_CHANGE = true;
					_action = "LandGear";
				};
			};
			if (NEEDS_GEAR_CHANGE) then { _veh action [_action, _veh];NEEDS_GEAR_CHANGE = false; };
		};
	};
	sleep 1;
};