/////////////////////////////////////
// Function file for Armed Assault //
//    Created by: DreadedEntity    //
/////////////////////////////////////

terminate landingGearScript;
landingGearScript = [] execVM "AutomaticLandingGear.sqf";

/*
// custom damage handler that cuts damage in half and clamps damage at 1/4 health, the idea is that won't get 1-shot
// ??? I don't know, maybe don't use this, maybe will develop it further
player removeEventHandler ["HandleDamage", damageMultiplier];
damageMultiplier = player addEventHandler ["HandleDamage", {
_newDamage = (_this select 2) / 3;
if (_newDamage > 0.25) then { _newDamage = 0.25};
_newDamage;
}];
*/