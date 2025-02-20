private ["_crashModel", "_lootTable", "_guaranteedLoot", "_randomizedLoot", "_frequency", "_variance", "_spawnChance", "_spawnMarker", "_spawnRadius", "_d", "_nade", "_crashName",  "_position",  "_config", "_num", "_itemTypes", "_itemChance", "_weights", "_cntWeights", "_index", "_lootRadius", "_radiusMultiplier", "_itemType", "_iClass", "_iType", "_item2", "_lootPos", "_nearBy"];

//_crashModel	= _this select 0;
//_lootTable	= _this select 1;
_guaranteedLoot = _this select 0;
_randomizedLoot = _this select 1;
_frequency	= _this select 2;
_variance	= _this select 3;
_spawnChance	= _this select 4;
_spawnMarker	= _this select 5;
_spawnRadius	= _this select 6;

if (isNil 'P2DZE_debugCarePackages') then { P2DZE_debugCarePackages = false; };
_d = P2DZE_debugCarePackages;

if (_d) then { diag_log("CAREPACKAGE: Starting spawn logic for Player2's Care Package Spawner"); };

while {1 == 1} do {
	private["_timeAdjust","_timeToSpawn","_spawnRoll","_crash","_hasAdjustment","_newHeight","_adjustedPos"];
	// Allows the variance to act as +/- from the spawn frequency timer
    _timeAdjust = round((random(_variance * 2)) - _variance);
	_timeToSpawn = time + _frequency + _timeAdjust;

	//Adding some Random systems
	_carePackage = ["Military","Medical","Industrial","BaseBuilding"] call BIS_fnc_selectRandom;

	_crashName	= _carePackage;
	_crashModel = "Misc_cargo_cont_net3";

	if (_d) then { diag_log(format["CAREPACKAGE: %1%2 chance to spawn '%3' with loot table '%4' in %5 seconds", round(_spawnChance * 100), '%', _crashName, _crashModel, (_timeToSpawn - time)]); };

	switch (_carePackage) do {
		default 							{ _lootTable = [2,1] call fnc_specialLoot; _nade = "SmokeShellGreen"; };
		case "Military": 					{ _lootTable = [2,1] call fnc_specialLoot; _nade = "SmokeShellGreen"; };
		case "Medical": 					{ _lootTable = [2,2] call fnc_specialLoot; _nade = "SmokeShellRed"; };
		case "Industrial": 					{ _lootTable = [2,3] call fnc_specialLoot; _nade = "SmokeShellYellow"; };
		case "BaseBuilding": 				{ _lootTable = [2,4] call fnc_specialLoot; _nade = "SmokeShellPurple"; };
	};

	if (_d) then { 
		diag_log(format["---- CAREPACKAGE: %1 --- Loot Table:", _crashName]);
	 	diag_log(format["	%1",_lootTable]);
	 	diag_log(format["----"]); 
	 };

	// Apprehensive about using one giant long sleep here given server time variances over the life of the server daemon
	while {time < _timeToSpawn} do {
		uiSleep 5;
	};

	_spawnRoll = random 1;

	// Percentage roll
	if (_spawnRoll <= _spawnChance) then {

		_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;

		if (_d) then { diag_log(format["---- CAREPACKAGE: %1 --- Pos: %2", _crashName,_position]); };

		_crash = createVehicle [_crashModel,_position, [], 0, "CAN_COLLIDE"];
		// Randomize the direction the wreck is facing
		_crash setDir round(random 360);

		_crash call {
		    _this setVariable [
		        uiNamespace getVariable (format ["hashIdVar%1", P2DZE_randHashVar]),
		        "hash_id" callExtension format [
		            "%1:%2",
		            netId _this,
		            typeOf _this
		        ]
		    ];
		};

		// Using "custom" wrecks (using the destruction model of a vehicle vs. a prepared wreck model) will result
		// in the model spawning halfway in the ground.  To combat this, an OPTIONAL configuration can be tied to
		// the CfgVehicles class you've created for the custom wreck to define how high above the ground it should
		// spawn.  This is optional.
		_config = configFile >> "CfgVehicles" >> _crashModel >> "heightAdjustment";
		_hasAdjustment =  isNumber(_config);
		_newHeight = 0;
		if (_hasAdjustment) then {
			_newHeight = getNumber(_config);
			//if (_d) then { diag_log(format["DIAG: ADJUSTMENT FOUND FOR %1, IT IS: %2", _crashName, _newHeight]); };
		};

		// Must setPos after a setDir otherwise the wreck won't level itself with the terrain
		_adjustedPos = [(_position select 0), (_position select 1), _newHeight];
		//if (_d) then { diag_log(format["DIAG: Designated Position: %1", str(_adjustedPos)]); };
		_crash setPos _adjustedPos;

		_crash setVariable ["ObjectID","1",true];

		// Disable simulation server side
		_crash enableSimulation false;

        _num = (round(random _randomizedLoot)) + _guaranteedLoot;

		_itemTypes =	_lootTable select 0;
		_itemChance =	_lootTable select 1;
		_weights = [_itemTypes,_itemChance] call fnc_buildWeightedArray;
		_cntWeights = count _weights;
		_index = _weights call BIS_fnc_selectRandom;

		_lootRadius = 0.9;

		for "_x" from 1 to _num do {
			_index = floor(random _cntWeights);
			_index = _weights select _index;
			if (_index > _cntWeights) then {
				_index = _index - 1 ;
			};
			_itemType = _itemTypes select _index;
			_iClass = _itemType select 0;
			_iType = _itemType select 1; 

			if (_iType == "custom_weapon") then {
				_itemTypes = [];
				{
					_itemTypes set [count _itemTypes, _x select 0]
				} count getArray (missionConfigFile >> "cfgLoot" >> _iClass);

				_index = -1;
				_weights = [];
				_cntWeights = -1;
				_item2 = "M9SD";
				_index = dayz_CLBase find _iClass;
				if (_index > 0) then {
					_weights = dayz_CLChances select _index;
					_cntWeights = count _weights;
					_index = floor(random _cntWeights);
					_index = _weights select _index;
					_item2 = _itemTypes select _index;

					if ((_item2 != "") && (isClass(configFile >> "CfgWeapons" >> _item2))) then {

						if (_iClass == "MeleeWeaps") then {

							if (_item2 == "Chainsaw") then {
								_item2 = ["ChainSaw","ChainSawB","ChainSawG","ChainSawP","ChainSawR"] call BIS_fnc_selectRandom;
							};
						};
					};
					_itemType = [_item2,"weapon"];
				};

				//reset to normal crash site loot table for next go around, 
				//otherwise it'd get stuck on the last custom weapon

				_itemTypes =	_lootTable select 0;
				_itemChance =	_lootTable select 1;
				_weights = [_itemTypes,_itemChance] call fnc_buildWeightedArray;
				_cntWeights = count _weights;
				_index = _weights call BIS_fnc_selectRandom;
			};

			if (_d) then { diag_log format["%1", _itemType]; };	

			_lootPos = [_position, ((random 2) + (sizeOf(_crashModel) * _lootRadius)), random 360] call BIS_fnc_relPos;

			[_itemType select 0, _itemType select 1, _lootPos, 2] call spawn_loot_server;

		};

		if (_d) then { diag_log("---------------------------------------------"); };

		// ReammoBox is preferred parent class here, as WeaponHolder wouldn't match MedBox0 && other such items.
		_nearBy = _position nearObjects ["ReammoBox", sizeOf(_crashModel) + 15];
		{
			_x setVariable ["permaLoot",true];
			_x call {
			    _this setVariable [
			        uiNamespace getVariable (format ["hashIdVar%1", P2DZE_randHashVar]),
			        "hash_id" callExtension format [
			            "%1:%2",
			            netId _this,
			            typeOf _this
			        ]
			    ];
			};

			//Grass Cutter Loot
			_cookie = "ClutterCutter_small_2_EP1" createVehicle (getPosATL _x);
			_cookie setPosATL (getPosATL _x);
			_cookie = objNull;

		} count _nearBy;

		[_nade,[_adjustedPos select 0, _adjustedPos select 1, 0]] spawn {
			private["_smoke","_in","_pos"];
			while {true} do {
				_in = _this;
				_pos = _in select 1;
				_smoke = (_in select 0) createVehicle _pos;
				_smoke enableSimulation false;
				_smoke setPos _pos;
				_smoke call {
				    _this setVariable [
				        uiNamespace getVariable (format ["hashIdVar%1", P2DZE_randHashVar]),
				        "hash_id" callExtension format [
				            "%1:%2",
				            netId _this,
				            typeOf _this
				        ]
				    ];
				};
				waitUntil{uiSleep 5; isNull _smoke};
			};
		};

	};
};