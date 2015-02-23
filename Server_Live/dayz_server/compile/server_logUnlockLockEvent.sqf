//server_logUnlockLockEvent.sqf by player2
P2DZ_debugLockUnlock = true;


private["_player", "_obj", "_objectID", "_objectUID", "_statusText", "_PUID", "_status","_objGold","_gold"];
_player = 		_this select 0;
_obj = 			_this select 1;
_status = 		_this select 2;
_newObject = 	_this select 3;
_objGold = 		_this select 4;
_gold = 		0;

if (P2DZ_debugLockUnlock) then { diag_log(format["server_logUnlockLockEvent: _this: %1", str _this]); };

if (!isNull(_obj)) then {
	_objectID = _obj getVariable["ObjectID", "0"];
	_objectUID = _obj getVariable["ObjectUID", "0"];
	_objGoldServer = _obj getVariable["ZombZGold", nil];

	_obj call {
	    _this setVariable [
	        uiNamespace getVariable (format ["hashIdVar%1", P2DZE_randHashVar]),
	        "hash_id" callExtension format [
	            "%1:%2",
	            netId _this,
	            typeOf _this
	        ]
	    ];
	};

	if (isNil '_objGold') then {

		if (P2DZ_debugLockUnlock) then { diag_log("isNil: _objGold:"); };

		if (!isNil '_objGoldServer') then {

			if (P2DZ_debugLockUnlock) then { diag_log(format["!isNil: _objGoldServer: %1", _objGoldServer]); };

			if (typeName _objGoldServer == typeName 0) then {	
				_gold = _objGoldServer;	
			} else {
				_gold = 0; 
			};

		} else {

			if (P2DZ_debugLockUnlock) then { diag_log("isNil: _objGoldServer: 0"); };
			_gold = 0;

		};

	} else {

		if (P2DZ_debugLockUnlock) then { diag_log(format["!isNil: _objGold: %1", _objGold]); };
		_gold = _objGold;

	};

	if (!isNull(_newObject)) then {
		_newObject setVariable ["ZombZGold", _gold, true];
	};
	
	_obj setVariable ["ZombZGold", _gold, true];

	if (P2DZ_debugLockUnlock) then { diag_log(format["server_logUnlockLockEvent: GoldSet: %1", _gold]); };

	_statusText = "UNLOCKED";
	if (_status) then {
		[_obj, "gear"] call server_updateObject;
		_statusText = "LOCKED";
	};
	_PUID = [_player] call FNC_GetPlayerUID;

} else {

	if (!isNull(_newObject)) then {

		if (isNil '_objGold') then {

			if (P2DZ_debugLockUnlock) then { diag_log("2isNil: _objGold:"); };

			if (!isNil _objGoldServer) then {

				if (P2DZ_debugLockUnlock) then { diag_log(format["2!isNil: _objGoldServer: %1", _objGoldServer]); };
				if (typeName '_objGoldServer' == typeName 0) then {	
					_gold = _objGoldServer;	
				} else {
					_gold = 0; 
				};


			} else {

				if (P2DZ_debugLockUnlock) then { diag_log("2isNil: _objGoldServer: 0"); };
				_gold = 0;

			};

		} else {

			if (P2DZ_debugLockUnlock) then { diag_log(format["2!isNil: _objGold: %1", _objGold]); };
			_gold = _objGold;

		};

		_newObject setVariable ["ZombZGold", _gold, true];
	} else {
		diag_log("server_logUnlockLockEvent: ERROR: " + str _this);
	};
};

if (!isNull(_newObject)) then {
	_newObject call {
	    _this setVariable [
	        uiNamespace getVariable (format ["hashIdVar%1", P2DZE_randHashVar]),
	        "hash_id" callExtension format [
	            "%1:%2",
	            netId _this,
	            typeOf _this
	        ]
	    ];
	};
} else {
	diag_log("server_logUnlockLockEvent: ERROR: " + str _this);
};

deleteVehicle _obj;

private["_plyrName","_plyrUID","_plyrLoc","_objName","_newObjName","_objLoc","_log","_log2"];
_plyrName = name _player;
_plyrUID = getPlayerUID _player;
_plyrLoc = position _player;
_objName = typeOf _obj;
_newObjName = typeOf _newObject;
_objLoc = position _obj;

//Log Format:Database
//	PlayerName, PlayerUID, Player Location, Lock/Unlock, Object ClassName, New Object Classname, Object ID, Object UID, Object Gold, Object Location, Server Number
_log2 = format ["%1(_GLS_)%2(_GLS_)%3(_GLS_)%4(_GLS_)%5(_GLS_)%6(_GLS_)%7(_GLS_)%8(_GLS_)%9(_GLS_)%10(_GLS)%11",
_plyrName,
_plyrUID,
_plyrLoc,
_statusText,
_objName,
_newObjName,
_objectID,
_objectUID,
_objGold,
_objLoc,
GORSYSERVERNUM];

//Log Format:Human
//	PlayerName, PlayerUID, Player Location, Lock/Unlock, Object ClassName, New Object Classname, Object ID, Object UID, Object Gold, Object Location, Server Number
_log = format ["PlayerName:	(%1)	PlayerUID:	(%2)	PlayerLocation:	(%3)	Action:	(%4)	ObjectName:	(%5)	NewObjectName:	(%6)	ObjectID (Hive):	(%7)	ObjectUID(Hive):	(%8)	ObjectGold:	(%9)	ObjectLocation:	(%10)		ServerNumber:	(%11)",
_plyrName,
_plyrUID,
_plyrLoc,
_statusText,
_objName,
_newObjName,
_objectID,
_objectUID,
_objGold,
_objLoc,
GORSYSERVERNUM];


_log call stats_logUnlock;
_log2 call stats_logUnlock;

