diag_log("Adding Deploy Functions/PubVar Handlers...");

//original code by dami modified by player2
"PVDZ_OBJ_DEPLOY" addPublicVariableEventHandler {
        _array = _this select 1;
        _positn = _array select 0;
        _player = _array select 1;
        _select = _array select 2;
        if (_select in ['Old_bike_TK_CIV_EP1','ATV_US_EP1','TT650_TK_CIV_EP1','350z_white_DZ','BTR40_TK_GUE_EP1','BTR40_MG_TK_GUE_EP1','HMMWV_DZ','HMMWV_Armored','CSJ_GyroC','MH6J_DZ','Mi17_Civilian_DZ','UH1H_TK_EP1']) then {
                _object = _select createVehicle _positn;
                if (!isNil "dayz_serverObjectMonitor") then {dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];};
                if (!isNil "PVDZE_serverObjectMonitor") then {PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor, _object];};
                _object setVariable ["ObjectID", "1", true];
                _object setVariable ["ObjectUID", "1", true];
                _object setVariable ["Deployed", true, true];
                _log = format ["OBJECT DEPLOY LOG: %1 spanwed a %2 at %3.", name _player,_select,mapGridPosition _positn];
                diag_log (_log);
        } else {
	         if (_select in ['ArmedLittlebird']) then {
	           	_object = "MH6J_DZ" createVehicle _positn;
	            if (!isNil "dayz_serverObjectMonitor") then {dayz_serverObjectMonitor set [count dayz_serverObjectMonitor, _object];};
	            if (!isNil "PVDZE_serverObjectMonitor") then {PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor, _object];};
	            _object setVariable ["ObjectID", "1", true];
	            _object setVariable ["ObjectUID", "1", true];
	            _object setVariable ["Deployed", true, true];
	            _object setVariable ["ArmedLittlebird", true, true];
				_object addMagazine "500Rnd_145x115_KPVT";
				_object addMagazine "500Rnd_145x115_KPVT";
				_object addMagazine "500Rnd_145x115_KPVT";
				_object addWeapon "KPVT";
	           	_log = format ["OBJECT DEPLOY LOG: %1 spanwed a %2 at %3.", name _player,_select,mapGridPosition _positn];
	            diag_log (_log);
	        } else {
	            _log = format ["OBJECT DEPLOY LOG: %1 tried to spawn %2 at %3.", name _player,_select,mapGridPosition _positn];
	            diag_log (_log);
	        };
        };
};

//added by player2
"PVDZ_OBJ_DEPLOY_PACK" addPublicVariableEventHandler {
        _array = _this select 1;
        _obj = _array select 0;
        _player = _array select 1;
		_objPos = getPosATL _obj;
		_armedLittleBird = _obj getVariable ["ArmedLittlebird", false];
		_debug = getMarkerpos "respawn_west";

		if (typeOf _obj == "Old_bike_TK_CIV_EP1") then {
			_origMat = ["ItemToolbox"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "ATV_US_EP1") then {
			_origMat = ["ItemToolbox","ItemToolbox","PartGeneric","PartWheel"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "TT650_TK_CIV_EP1") then {
			_origMat = ["ItemToolbox","ItemToolbox","PartGeneric","PartEngine"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "350z_white_DZ") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","PartGeneric","PartEngine","PartGeneric","PartWheel"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "BTR40_TK_GUE_EP1") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","PartGeneric","PartEngine","PartGeneric","PartEngine"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "BTR40_MG_TK_GUE_EP1") then {
			_origMat =  ["ItemToolbox","ItemToolbox","ItemToolbox","ItemToolbox","PartGeneric","PartEngine","PartGeneric","PartEngine","Mk_48_DZ","100Rnd_762x51_M240"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
			_tempclutter = createVehicle ["ClutterCutter_EP1",_objPos,[], 1, "CAN_COLLIDE"];
		};
		if (typeOf _obj == "HMMWV_DZ") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","ItemToolbox","PartGeneric","PartEngine","PartGeneric","PartEngine","PartGeneric"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "HMMWV_Armored_DZ") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","ItemToolbox","PartGeneric","PartEngine","PartGeneric","PartEngine","PartGeneric","PartGeneric","Mk_48_DZ","100Rnd_762x51_M240"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "CSJ_GyroC") then {
			_origMat = ["ItemToolbox","PartVrotor","PartEngine"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "MH6J_DZ") then {
			_origMat = ["ItemToolbox","ItemToolbox","PartEngine","PartVrotor","PartEngine","PartGeneric"];
			if (_armedLittleBird) then {	diag_log("OBJECT DEPLOY LOG: The littlebird is agggressive"); _origMat = ["ItemToolbox","ItemToolbox","PartEngine","PartVrotor","PartEngine","PartGeneric","PartGeneric","ItemToolbox"];	};
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "Mi17_Civilian_DZ") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","PartEngine","PartVrotor","PartEngine","PartGeneric","PartEngine","PartGeneric"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL _player;
				_bag setdir (getDir _player);
				_player reveal _bag;
			} forEach _origMat;
		};
		if (typeOf _obj == "UH1H_TK_EP1") then {
			_origMat = ["ItemToolbox","ItemToolbox","ItemToolbox","PartEngine","PartVrotor","PartEngine","PartGeneric","PartEngine","PartGeneric","PartGeneric"];
			{
				_bag = createVehicle ["WeaponHolder_"+_x+"",_objPos,[], 1, "CAN_COLLIDE"];
				_bag modelToWorld getPosATL player;
				_bag setdir (getDir player);
				player reveal _bag;
			} forEach _origMat;
		};

	    _log = format ["OBJECT DEPLOY LOG: %1 packed up a %2 at %3.", name _player,str (typeOf _obj),mapGridPosition _player];
		diag_log (_log);

		//delete ze vehicle!
		deleteVehicle _obj;
};
