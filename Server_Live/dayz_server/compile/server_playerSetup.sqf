private ["_debugMonSettings","_characterID","_playerObj","_playerID","_spawnSelection","_dummy","_worldspace","_state","_doLoop","_key","_primary","_medical","_stats","_humanity","_lastinstance","_friendlies","_randomSpot","_position","_debug","_distance","_hit","_fractures","_score","_findSpot","_pos","_isIsland","_w","_clientID","_spawnMC","_namespace"];

diag_log ("SETUP: attempted with _this: " + str(_this));
_characterID = _this select 0;
_playerObj = _this select 1;
_playerID = getPlayerUID _playerObj;
_spawnSelection = _this select 3;
_debugMonSettings  = _this select 4;

if (isNull _playerObj) exitWith {
	diag_log ("SETUP INIT FAILED: Exiting, player object null: " + str(_playerObj));
};

//Add MPHit event handler
// diag_log("Adding MPHit EH for " + str(_playerObj));
_playerObj addMPEventHandler ["MPHit", {_this spawn fnc_plyrHit;}];

if (_playerID == "") then {
	_playerID = getPlayerUID _playerObj;
};

if (_playerID == "") exitWith {
	diag_log ("SETUP INIT FAILED: Exiting, no player ID: " + str(_playerObj));
};

private["_dummy"];
_dummy = getPlayerUID _playerObj;
if ( _playerID != _dummy ) then { 
	diag_log format["SETUP: _playerID miscompare with UID! _playerID:%1",_playerID]; 
	_playerID = _dummy;
};

//Variables
_worldspace = 	[];
_state = 		[];

//Do Connection Attempt
_doLoop = 0;
while {_doLoop < 5} do {
	_key = format["CHILD:102:%1:",_characterID];
	_primary = _key call server_hiveReadWrite;
	if (count _primary > 0) then {
		if ((_primary select 0) != "ERROR") then {
			_doLoop = 9;
		};
	};
	_doLoop = _doLoop + 1;
};

if (isNull _playerObj || !isPlayer _playerObj) exitWith {
	diag_log ("SETUP RESULT: Exiting, player object null: " + str(_playerObj));
};

//Wait for HIVE to be free
//diag_log ("SETUP: RESULT: Successful with " + str(_primary));

_medical =				_primary select 1;
_stats =				_primary select 2;
_state =				_primary select 3;
_worldspace = 			_primary select 4;
_humanity =				_primary select 5;
_lastinstance =			_primary select 6;
_currentCharGoldArr =	_primary select 7;
/*
if (typeName _currentCharGoldArr != typeName []) then { _currentCharGoldArr = [0,0]; };
if (typeName _worldspace != typeName []) then {			_worldspace = []; };
if (typeName _state != typeName []) then { 				_state = []; };
if (typeName _stats != typeName []) then { 				_stats = []; };
if (typeName _lastinstance != typeName 1) then { 		_lastinstance = 11; };
if (typeName _humanity != typeName 1) then { 			_humanity = 2500; };
if (typeName _medical != typeName []) then { 			_medical = []; };
*/
_currentCharGold =	_currentCharGoldArr select 0;
_currentCharATM = 	_currentCharGoldArr select 1;

if (P2DZ_humanityDebug) then {
	diag_log ("HUMANITYDEBUG: server_playerSetup: " + str(_humanity));
};

if (P2DZE_goldItemHandlingDebug) then {
	diag_log ("GoldDebug: server_playerSetup: " + str(_currentCharGoldArr));
};

//Set position
_randomSpot = false;

if (count _worldspace > 0) then {

	_position = 	_worldspace select 1;
	if (count _position < 3) then {
		//prevent debug world!
		_randomSpot = true;
	};
	_debug = getMarkerpos "respawn_west";
	_distance = _debug distance _position;
	if (_distance < 2000) then {
		_randomSpot = true;
	};
	
	_distance = [0,0,0] distance _position;
	if (_distance < 500) then {
		_randomSpot = true;
	};
	
	// Came from another server force random spawn
	if (_lastinstance != dayZ_instance) then {
		//_randomSpot = true;
	};

	//_playerObj setPosATL _position;
} else {
	_randomSpot = true;
};

//diag_log ("LOGIN: Location: " + str(_worldspace) + " doRnd?: " + str(_randomSpot));

//set debug mon settings values
if (isNil '_debugMonSettings') then {
	if (typeName _debugMonSettings != typeName []) then { 			_debugMonSettings = [0,0,0,0.2,2,1000]; };

	//diag_log("server_playerSetup: _debugMonSettings: " + str _debugMonSettings);
	_viewDist = 1000;
	_debugMode = _debugMonSettings select 4;
	_debugColours = [(_debugMonSettings select 0), (_debugMonSettings select 1), (_debugMonSettings select 2), (_debugMonSettings select 3)];
	_viewDist = _debugMonSettings select 5;
	//Vaildate settings before saving to player

	if (((_debugMonSettings select 4) > 3) || ((_debugMonSettings select 4) < 1) ) then {
		//diag_log("Invalid Debug Mon Mode: " + str (_debugMode));
		_debugMode = 2;
	} else {
		_debugMode = _debugMonSettings select 4;
	};

	_debugColours = [(_debugMonSettings select 0), (_debugMonSettings select 1), (_debugMonSettings select 2), (_debugMonSettings select 3)];
	
	//save for client and save for JIP checks
	_playerObj setVariable["P2_DebugMonMode",(_debugMode),true];
	//save for client and save for serverJIP checks
	_playerObj setVariable["P2_DebugMonColours",(_debugColours),true];
	_playerObj setVariable["P2_viewDist",(_viewDist),true];

};

/*---------------------------------------------------------------------------
Returning Player
---------------------------------------------------------------------------*/

//set gold values
if (count _currentCharGoldArr > 0) then {

		_playerObj setVariable["ZombZGold", (_currentCharGold), true];
		//_playerObj setVariable["ZombZATMCard", (_currentCharATM), true]; //unused
		//save for jip check
		_playerObj setVariable["ZombZGold_CHK", (_currentCharGold)];

//reset gold values to [0,0]...data has been broken and is no longer in array format of [currentGold,currentATMCard]
} else {
//	diag_log("P2DEBUG: No Newspawn Gold cuz Array broken!"); // test server

	_playerObj setVariable["ZombZGold", 0, true];
	//_playerObj setVariable["ZombZATMCard", 0, true]; //unused
	_playerObj setVariable["ZombZGold_CHK", 0];
};

//set medical values
if (count _medical > 0) then {
	_playerObj setVariable["USEC_isDead",(_medical select 0),true];
	_playerObj setVariable["NORRN_unconscious", (_medical select 1), true];
	_playerObj setVariable["USEC_infected",(_medical select 2),true];
	_playerObj setVariable["USEC_injured",(_medical select 3),true];
	_playerObj setVariable["USEC_inPain",(_medical select 4),true];
	_playerObj setVariable["USEC_isCardiac",(_medical select 5),true];
	_playerObj setVariable["USEC_lowBlood",(_medical select 6),true];
	_playerObj setVariable["USEC_BloodQty",(_medical select 7),true];
	_playerObj setVariable["unconsciousTime",(_medical select 10),true];
		
	//Add Wounds
	{
		_playerObj setVariable[_x,true,true];
		//["usecBleed",[_playerObj,_x,_hit]] call broadcastRpcCallAll;
		usecBleed = [_playerObj,_x,_hit];
		publicVariable "usecBleed";
	} count (_medical select 8);
	
	//Add fractures
	_fractures = (_medical select 9);
	_playerObj setVariable ["hit_legs",(_fractures select 0),true];
	_playerObj setVariable ["hit_hands",(_fractures select 1),true];
	
	if (count _medical > 11) then {
		//Additional medical stats
		_playerObj setVariable ["messing",(_medical select 11),true];
	};
	
} else {
	//Reset Fractures
	_playerObj setVariable ["hit_legs",0,true];
	_playerObj setVariable ["hit_hands",0,true];
	_playerObj setVariable ["USEC_injured",false,true];
	_playerObj setVariable ["USEC_inPain",false,true];
	_playerObj setVariable ["messing",[0,0],true];
};
	
if (count _stats > 0) then {	
	//register stats
	_playerObj setVariable["zombieKills",(_stats select 0),true];
	_playerObj setVariable["headShots",(_stats select 1),true];
	_playerObj setVariable["humanKills",(_stats select 2),true];
	_playerObj setVariable["banditKills",(_stats select 3),true];
	_playerObj addScore (_stats select 1);
	
	//Save Score
	_score = score _playerObj;
	_playerObj addScore ((_stats select 0) - _score);
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",(_stats select 0)];
	_playerObj setVariable["headShots_CHK",(_stats select 1)];
	_playerObj setVariable["humanKills_CHK",(_stats select 2)];
	_playerObj setVariable["banditKills_CHK",(_stats select 3)];
	if (count _stats > 4) then {
		if (!(_stats select 3)) then {
			_playerObj setVariable["selectSex",true,true];
		};
	} else {
		_playerObj setVariable["selectSex",true,true];
	};
} else {
	//Save initial loadout
	//register stats
	_playerObj setVariable["zombieKills",0,true];
	_playerObj setVariable["humanKills",0,true];
	_playerObj setVariable["banditKills",0,true];
	_playerObj setVariable["headShots",0,true];
	
	//record for Server JIP checks
	_playerObj setVariable["zombieKills_CHK",0];
	_playerObj setVariable["humanKills_CHK",0,true];
	_playerObj setVariable["banditKills_CHK",0,true];
	_playerObj setVariable["headShots_CHK",0];
};

if (_randomSpot) then {
	private["_counter","_position","_isNear","_isZero","_mkr"];
	if (hasInterface || !isDedicated) then {
		endLoadingScreen;
	};
	
	//Spawn modify via mission init.sqf
	if(isnil "spawnArea") then {
		spawnArea = 800;
	};
	if(isnil "spawnShoremode") then {
		spawnShoremode = 1;
	};
	
	// 
	_spawnMC = actualSpawnMarkerCount;

	//spawn into random
	_findSpot = true;
	_mkr = "";
	_position = [0,0,0]; // clear

	while {_findSpot} do {
		_counter = 0;
		while {_counter < 20 and _findSpot} do {
			// switched to floor
			if (_spawnSelection == 9) then {
				// random spawn location selected, lets get the marker and spawn in somewhere
				if (dayz_spawnselection == 1) then { _mkr = "spawn" + str(floor(random 6)); } else { _mkr = "spawn" + str(floor(random 5)); };
			} else {
				// spawn is not random, lets spawn in our location that was selected
				_mkr = "spawn" + str(_spawnSelection);
			};
			//_mkr = "spawn" + str(floor(random _spawnMC));
			_position = ([(getMarkerPos _mkr),0,spawnArea,10,0,500,spawnShoremode] call BIS_fnc_findSafePos);
			_isNear = count (_position nearEntities ["Man",100]) == 0;
			_isZero = ((_position select 0) == 0) and ((_position select 1) == 0);
			//Island Check		//TeeChange
			_pos 		= _position;
			_isIsland	= false;		//Can be set to true during the Check
			for [{_w=0},{_w<=150},{_w=_w+2}] do {
				_pos = [(_pos select 0),((_pos select 1) + _w),(_pos select 2)];
				if(surfaceisWater _pos) exitWith {
					_isIsland = true;
				};
			};
			
			if ((_isNear and !_isZero) || _isIsland) then {_findSpot = false};
			_counter = _counter + 1;
		};
	};
	_isZero = ((_position select 0) == 0) and ((_position select 1) == 0);
	_position = [_position select 0,_position select 1,0];
	if (!_isZero) then {
		//_playerObj setPosATL _position;
		_worldspace = [0,_position];
	};
};

//Record player for management
dayz_players set [count dayz_players,_playerObj];

//record player pos locally for server checking
_playerObj setVariable["CharacterID",_characterID,true];
_playerObj setVariable["humanity",_humanity,true];
_playerObj setVariable["humanity_CHK",_humanity];
//_playerObj setVariable["worldspace",_worldspace,true];
//_playerObj setVariable["state",_state,true];
_playerObj setVariable["lastPos",getPosATL _playerObj];

dayzPlayerLogin2 = [_worldspace,_state,_humanity];

// PVDZE_obj_Debris = DZE_LocalRoadBlocks;
_clientID = owner _playerObj;
if (!isNull _playerObj) then {
	_clientID publicVariableClient "dayzPlayerLogin2";
	
	if (isNil "PVDZE_plr_SetDate") then {
		call server_timeSync;
	};
	_clientID publicVariableClient "PVDZE_plr_SetDate";
};
//record time started
_playerObj setVariable ["lastTime",time];
//_playerObj setVariable ["model_CHK",typeOf _playerObj];

diag_log ("P2DEBUG: LOGIN PUBLISHING: " + str(_playerObj) + " Type: " + (typeOf _playerObj));

PVDZE_plr_Login = nil;
PVDZE_plr_Login2 = nil;