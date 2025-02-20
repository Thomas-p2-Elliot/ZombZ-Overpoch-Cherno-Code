private ["_currentCharATMCard","_currentCharGoldArr","_currentCharGold","_playerUID","_key2","_result","_debugMonSettings","_empty","_name","_playerwasNearby","_character","_magazines","_force","_characterID","_charPos","_isInVehicle","_timeSince","_humanity","_debug","_distance","_isNewMed","_isNewPos","_isNewGear","_playerPos","_playerGear","_playerBackp","_medical","_distanceFoot","_distanceFootCurrent","_distanceFootPrevious","_lastPos","_backpack","_kills","_killsB","_killsH","_headShots","_lastTime","_timeGross","_timeLeft","_currentWpn","_currentAnim","_config","_onLadder","_isTerminal","_currentModel","_modelChk","_muzzles","_temp","_currentState","_array","_key","_pos","_forceGear","_friendlies"];

_character = 	_this select 0;
_magazines = 	_this select 1;

//_force = 		_this select 2;
_forceGear =	_this select 3;
_force =	true;
_playerwasNearby = false;

if ((count _this) > 4) then {
	_playerwasNearby =	_this select 4;
};

if (isNull _character) exitWith {
	diag_log ("Player is Null FAILED: Exiting, player sync: " + str(_character));
};

_characterID =	_character getVariable ["CharacterID","0"];
_charPos = 		getPosATL _character;
_isInVehicle = 	vehicle _character != _character;
_timeSince = 	0;
_humanity =		0;

//diag_log ("DW_DEBUG: (isnil _characterID): " + str(isnil "_characterID"));
_name = if (alive _character) then { name _character; } else { "Dead Player"; };
if (_character isKindOf "Animal") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (_name) + " is an Animal class");
};

if (isnil "_characterID") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (_name) + " has nil characterID");	
};

if (_characterID == "0") exitWith {
	diag_log ("ERROR: Cannot Sync Character " + (_name) + " as no characterID");
};

private["_debug","_distance"];
_debug = getMarkerpos "respawn_west";
_distance = _debug distance _charPos;
if (_distance < 2000) exitWith { 
	diag_log format["ERROR: server_playerSync: Cannot Sync Player %1 [%2]. Position in debug! %3",_name,_characterID,_charPos];
};

//Check for server initiated updates
_isNewMed =		_character getVariable["medForceUpdate",false];		//Med Update is forced when a player receives some kind of med incident
_isNewPos =		_character getVariable["posForceUpdate",false];		//Med Update is forced when a player receives some kind of med incident
_isNewGear =	(count _magazines) > 0;

//Check for player initiated updates
if (_characterID != "0") then {
	_playerPos =	[];
	_playerGear =	[];
	_playerBackp =	[];
	_medical =		[];
	_distanceFoot =	0;
	_distanceFootCurrent =	0;
	_distanceFootPrevious =	0;
	_playerUID = getPlayerUID _character;
	_currentCharGoldArr = [];
	_currentCharGold = 0;
	_currentCharATMCard = 0;
	//diag_log ("Found Character...");
	
	//Check if update is requested
	if (_isNewPos || _force) then {
		//diag_log ("position..." + str(_isNewPos) + " / " + str(_force)); 
		if (((_charPos select 0) == 0) && ((_charPos select 1) == 0)) then {
			//Zero Position
		} else {
			//diag_log ("getting position..."); 
			_playerPos = 	[round(direction _character),_charPos];
			_lastPos = 		_character getVariable["lastPos",_charPos];
			if (count _lastPos > 2 && count _charPos > 2) then {
				if (!_isInVehicle) then {
					_distanceFootCurrent = [_charPos, _lastPos] call KK_fnc_distanceASL;
				};
				_character setVariable["lastPos",_charPos];
			};
			if (count _charPos < 3) then {
				_playerPos =	[];
			};
			//diag_log ("position = " + str(_playerPos)); 
		};
		_character setVariable ["posForceUpdate",false,true];
	};
	if (_isNewGear || _forceGear) then {
		//diag_log ("gear...");
		_playerGear = [weapons _character,_magazines];
		//diag_log ("playerGear: " +str(_playerGear));
		_backpack = unitBackpack _character;
		if(_playerwasNearby) then {
			_empty = [[],[]];
			_playerBackp = [typeOf _backpack,_empty,_empty];
		} else {
			_playerBackp = [typeOf _backpack,getWeaponCargo _backpack,getMagazineCargo _backpack];
		};
	};
	if (_isNewMed || _force) then {
		//diag_log ("medical..."); 
		if (!(_character getVariable["USEC_isDead",false])) then {
			//diag_log ("medical check..."); 
			_medical = _character call player_sumMedical;
			//diag_log ("medical result..." + str(_medical));
		};
		_character setVariable ["medForceUpdate",false,true];
	};
	
	//Process update
	if (_characterID != "0") then {		
		//Record stats while we're here		
		/*
			Check previous stats against what client had when they logged in
			this helps prevent JIP issues, where a new player wouldn't have received
			the old players updates. Only valid for stats where clients could have
			be recording  results from their local objects (such as agent zombies)
		*/

		_debugMode = 			_character getVariable ["P2_DebugMonMode",2]; 
		_debugColours = 		_character getVariable ["P2_DebugMonColours",[0,0,0,0.2]]; 

		_currentCharGold = 		["ZombZGold",	_character] 	call server_getDiff2;
		if (P2DZE_debugServerPlayerSync) then { diag_log format["_currentCharGold: %1",_currentCharGold]; };
			
		_kills = 				["zombieKills",	_character] 	call server_getDiff;
		_killsB = 				["banditKills",	_character] 	call server_getDiff;
		_killsH = 				["humanKills",	_character] 	call server_getDiff;
		_headShots = 			["headShots",	_character] 	call server_getDiff;
		_humanity = 			["humanity",	_character] 	call server_getDiff2;

		/*---------------------------------------------------------------------------
		If gold is being set to 13 a lot then run a hive check on previous gold amount for player
		---------------------------------------------------------------------------*/

		//_currentCharATMCard = _character getVariable ["ZombZATMCard",0]; unused
		_currentCharGold = 		_character getVariable["ZombZGold_CHK", 	13]; 
		if (P2DZE_debugServerPlayerSync) then { diag_log format["_currentCharGold_CHK: %1",_currentCharGold]; };


		_kills = 				_character getVariable["zombieKills_CHK",	13];
		_killsB = 				_character getVariable["banditKills_CHK", 	13];
		_killsH = 				_character getVariable["humanKills_CHK",  	13];
		_headShots = 			_character getVariable["headShots_CHK",  	13];
		_humanity = 			_character getVariable["humanity_CHK",    	2500];
		_distanceFootPrevious = _character getVariable["distanceFoot_CHK", 	13];

		//set debug mon array
		_debugMonSettings = 	[(_debugColours select 0), (_debugColours select 1), (_debugColours select 2), (_debugColours select 3), _debugMode];

		//update debug mon settings
		_key2 = format["CHILD:222:%1:%2:",_playerUID,_debugMonSettings];
		if (P2DZE_debugServerPlayerSync) then { diag_log ("HIVE: WRITE: "+ str(_key2) + " / " + _playerUID); };
		_key2 call server_hiveReadWrite;


		//add distance
		_distanceFoot = 		_distanceFootPrevious + _distanceFootCurrent;

		//Save in array for db
		_currentCharGoldArr =	[_currentCharGold,0];

		//_humanity = 	_character getVariable ["humanity",0];
		_character addScore _kills;		
		/*
			Assess how much time has passed, for recording total time on server
		*/
		_lastTime = 	_character getVariable["lastTime",time];
		_timeGross = 	(time - _lastTime);
		_timeSince = 	floor(_timeGross / 60);
		_timeLeft =		(_timeGross - (_timeSince * 60));
		/*
			Get character state details
		*/
		_currentWpn = 	currentMuzzle _character;
		_currentAnim =	animationState _character;
		_config = 		configFile >> "CfgMovesMaleSdr" >> "States" >> _currentAnim;
		_onLadder =		(getNumber (_config >> "onLadder")) == 1;
		_isTerminal = 	(getNumber (_config >> "terminal")) == 1;
		//_wpnDisabled =	(getNumber (_config >> "disableWeapons")) == 1;
		_currentModel = typeOf _character;
		_modelChk = 	_character getVariable ["model_CHK",""];
		if (_currentModel == _modelChk) then {
			_currentModel = "";
		} else {
			_currentModel = _currentModel;
			_character setVariable ["model_CHK",typeOf _character];
		};
		
		if (_onLadder || _isInVehicle || _isTerminal) then {
			_currentAnim = "";
			//If position to be updated, make sure it is at ground level!
			if ((count _playerPos > 0) && !_isTerminal) then {
				_charPos set [2,0];
				_playerPos set[1,_charPos];					
			};
		};
		if (_isInVehicle) then {
			_currentWpn = "";
		} else {
			if ( typeName(_currentWpn) == "STRING" ) then {
				_muzzles = getArray(configFile >> "cfgWeapons" >> _currentWpn >> "muzzles");
				if (count _muzzles > 1) then {
					_currentWpn = currentMuzzle _character;
				};	
			} else {
				//diag_log ("DW_DEBUG: _currentWpn: " + str(_currentWpn));
				_currentWpn = "";
			};
		};
		_temp = round(_character getVariable ["temperature",100]);
		_currentState = [_currentWpn,_currentAnim,_temp];
		if(DZE_FriendlySaving) then {
			// save only last/most recent 5 entrys as we only have 200 chars in db field && weapon + animation names are sometimes really long 60-70 chars.
			_friendlies = [(_character getVariable ["friendlies",[]]),5] call array_reduceSizeReverse;
			_currentState set [(count _currentState),_friendlies];
		};
		/*
			Everything is ready, now publish to HIVE
		*/
		if (count _playerPos > 0) then {
			_array = [];
			{
				if (_x > dayz_minpos && _x < dayz_maxpos) then {
					_array set [count _array,_x];
				};
			} count (_playerPos select 1);
			_playerPos set [1,_array];
		};
		if (!isNull _character) then {
			if (alive _character) then {
				//Wait for HIVE to be free
				//Send request
				_key = format["CHILD:201:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12:%13:%14:%15:%16:%17:",_characterID,_playerPos,_playerGear,_playerBackp,_medical,false,false,_kills,_headShots,_distanceFoot,_timeSince,_currentState,_killsH,_killsB,_currentModel,_humanity,_currentCharGoldArr];
				if (P2DZE_debugServerPlayerSync) then { diag_log ("HIVE: WRITE: "+ str(_key) + " / " + _characterID); };
				_key call server_hiveWrite;			
			};
		};

		// If player is in a vehicle, keep its position updated
		if (vehicle _character != _character) then {
			//[vehicle _character, "position"] call server_updateObject;
			if (!(vehicle _character in needUpdate_objects)) then {
				if (P2DZE_debugServerPlayerSync) then { diag_log format["DEBUG: Added to NeedUpdate=%1",vehicle _character]; };
				needUpdate_objects set [count needUpdate_objects, vehicle _character];
			};
		};
		
		// Force gear updates for nearby vehicles/tents
		_pos = _this select 0;
		{
			[_x, "gear"] call server_updateObject;
		} count nearestObjects [_pos, dayz_updateObjects, 10];
		//[_charPos] call server_updateNearbyObjects;

		//Reset timer
		if (_timeSince > 0) then {
			_character setVariable ["lastTime",(time - _timeLeft)];
		};
	};
};
