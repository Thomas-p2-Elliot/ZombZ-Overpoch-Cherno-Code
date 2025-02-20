/*---------------------------------------------------------------------------
p2_lootCheck.sqf
Version 0.5
Author: Player2

Description:
	Swaps loot depending on area of the map that it is spawning
	E.g. Swap M4A1's for AK's if spawning in Berezino

Inputs:

	_this select 0: Loot Category Name (type: String)
	_this select 1: Position where loot is spawning (type: Position Array)
	
Outputs:

	Category Name (type: String)

Example Use:

	p2_lootCheck = call compile preprocessFileLineNumbers "p2_lootCheck.sqf";
	_newCategoryName = [_oldCategoryName,(position player)] call p2_lootCheck;

Configuration Instructions:

	Add and configure these variables:

	P2DZ_lootClassCheck_centerPoint - Center point for where the 'improved' loot should spawn (type: position array)
	P2DZ_lootClassCheck_radius - Radius for this dome for the size of the imrpoved loot zone (type: number, meters)
	P2DZ_lootClassCheck_debug - Toggles debugging logs (type: boolean)

	Configure the weapons to swap from this file at marked points!

www.ZombZ.net
---------------------------------------------------------------------------*/
private ["_lootClass","_position","_out","_p2d","_centerPoint","_radius","_dist","_inZone","_timeStart","_timeEnd","_timeBetween"];

P2DZ_lootClassCheck_centerPoint = [2677,11891,0];
P2DZ_lootClassCheck_radius = 6100;
P2DZ_lootClassCheck_enabled = true;
P2DZ_lootClassCheck_debug = false;

if(P2DZ_lootClassCheck_enabled) then {

_timeStart = diag_tickTime;
//load info parsed in from execution
_lootClass = _this select 0;
_position = _this select 1;

if (isNil '_lootClass' || isNil '_position') exitWith {
	nil
};

_out = _lootClass;

//load info from global vars
_p2d = P2DZ_lootClassCheck_debug;
_centerPoint = P2DZ_lootClassCheck_centerPoint;
_radius = P2DZ_lootClassCheck_radius;

_dist = _position distance _centerPoint;
_inZone = _dist < _radius;

//If player is in the zone
if (_inZone) then {
	/*---------------------------------------------------------------------------
	Configuration Start: Inside of Zone (NATO Weapons)
	---------------------------------------------------------------------------*/

	switch (_lootClass) do {
		case "AKLowWeaps": { 		_out = "AKHighWeaps"};

		/*These Weapons have a 10% Chance of actually spawning instead of being swapped*/
		case "SniperTopWeaps": { 	_out = "SniperMedWeaps";	if (((random 1) > 0.90)) then { _out = "SniperTopWeaps" }; _out};
		case "PistolTopWeaps": { 	_out = "PistolMilWeaps";	if (((random 1) > 0.90)) then { _out = "PistolTopWeaps" }; _out};
		case "UltraWeaps": { 		_out = "SniperTopWeaps";	if (((random 1) > 0.90)) then { _out = "UltraWeaps" }; 	_out};
		case "TWSWeaps": { 			_out = "SniperTopWeaps";	if (((random 1) > 0.90)) then { _out = "TWSWeaps" }; 	_out};
		/**/

		default {};
	};

//Player is outside of the zone
} else {

	/*---------------------------------------------------------------------------
	Configuration Start: Out of Zone (Russian Weapons)
	---------------------------------------------------------------------------*/
	switch (_lootClass) do {

		/*These Weapons have a 10% Chance of actually spawning instead of being swapped*/
		case "M4Weaps": { 			_out = "AKHighWeaps";	if (((random 1) > 0.90)) then { _out = "M4Weaps" }; 	_out};
		case "L85Weaps": { 			_out = "AKHighWeaps"; 	if (((random 1) > 0.90)) then { _out = "L85Weaps" }; 	_out};
		/**/
		case "ACRLowWeaps": { 		_out = "AKLowWeaps";	if (((random 1) > 0.99)) then { _out = "ACRLowWeaps" }; 	_out};
		case "ACRHighWeaps": { 		_out = "AKHighWeaps";	if (((random 1) > 0.99)) then { _out = "ACRHighWeaps" }; 	_out};
		case "ScarLowWeaps": { 		_out = "SubWeaps";		if (((random 1) > 0.99)) then { _out = "ScarLowWeaps" }; 	_out};
		case "ScarHighWeaps": { 	_out = "AKHighWeaps";	if (((random 1) > 0.99)) then { _out = "ScarHighWeaps" }; 	_out};
		case "HK416Weaps": { 		_out = "AKLowWeaps";	if (((random 1) > 0.99)) then { _out = "HK416Weaps" }; 	_out};
		case "HK417Weaps": { 		_out = "AKHighWeaps";	if (((random 1) > 0.99)) then { _out = "HK417Weaps" }; 	_out};
		case "MasWeaps": { 			_out = "SubWeaps";		if (((random 1) > 0.99)) then { _out = "MasWeaps" }; 	_out};
		case "G36Weaps": { 			_out = "AKLowWeaps";	if (((random 1) > 0.99)) then { _out = "G36Weaps" }; 	_out};
		case "M8Weaps": { 			_out = "AKLowWeaps";	if (((random 1) > 0.99)) then { _out = "M8Weaps" }; 	_out};
		case "LMGWeaps": { 			_out = "RiflesLowWeaps";if (((random 1) > 0.99)) then { _out = "LMGWeaps" }; 	_out};
		case "HMGWeaps": { 			_out = "RiflesLowWeaps";if (((random 1) > 0.99)) then { _out = "HMGWeaps" }; 	_out};
		case "RiflesMedWeaps": { 	_out = "RiflesLowWeaps";if (((random 1) > 0.99)) then { _out = "RiflesMedWeaps" }; 	_out};
		case "SniperMedWeaps": { 	_out = "SVDWeaps";		if (((random 1) > 0.99)) then { _out = "SniperMedWeaps" }; 	_out};
		case "SniperTopWeaps": { 	_out = "SVDWeaps";		if (((random 1) > 0.99)) then { _out = "SniperTopWeaps" }; 	_out};
		case "PistolTopWeaps": { 	_out = "PistolMilWeaps";if (((random 1) > 0.99)) then { _out = "PistolTopWeaps" }; 	_out};
		case "UltraWeaps": { 		_out = "LauncherWeaps";};
		case "RocketWeaps": { 		_out = "LauncherWeaps";	if (((random 1) > 0.99)) then { _out = "RocketWeaps" }; 	_out};
		case "TWSWeaps": { 			_out = "LauncherWeaps"};

		default {};
	};

};
_timeEnd = diag_tickTime;
_timeBetween = _timeEnd - _timeStart;
if (_p2d) then { diag_log("fn_lootClassCheck:	_lootClass:	" + str _lootClass + "	_inZone:	" + str _inZone + "	_out:	" + str _out + "	Ticks Taken: " + str _timeBetween); };
_out

} else {
	_this select 0
};