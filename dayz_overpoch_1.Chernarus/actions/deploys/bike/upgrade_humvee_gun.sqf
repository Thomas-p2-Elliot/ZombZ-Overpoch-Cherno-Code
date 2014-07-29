private["_obj","_objectID","_objectUID","_dis","_sfx"];

_isInCombat = player getVariable["startcombattimer",0]; if (_isInCombat == 1) then { 
    cutText [format["You are in Combat and cannot upgrade your Humvee."], "PLAIN DOWN"];
	sleep 2;
	cutText [format["Make sure you upgrade your Humvee (m240) somewhere safe and clear of objects."], "PLAIN DOWN"];
} else {

	_pwep = primaryWeapon player;
	_mags = getArray(configfile >> 'cfgWeapons' >> _pwep >> 'magazines');
	_magtype = _mags select 0;

	_mammo = ["100Rnd_762x54_PK","200Rnd_556x45_M249","100Rnd_762x51_M240","100Rnd_556x45_M249","100Rnd_556x45_BetaCMag","vil_75Rnd_762x39_AK47","vil_100Rnd_762x39_RPD","vil_45Rnd_545x39_AK","vil_60Rnd_545x39_AK","Vil_50Rnd_556x45_G","100Rnd_556x45_BetaCMag","75Rnd_545x39_RPK","200Rnd_762x54_GPMG","100Rnd_127x99_M2"];
	
	_has1 = "PartGeneric" in magazines player;
	_has2 = _magtype in _mammo;	
	
	if (_has2 && _has1) then {
	
	
			_obj = _this select 3;
			
			
			//they're ready.
			player removeAction s_player_upgradehumvee2;
			player playActionNow "Medic";
			r_interrupt = false;
			player removeMagazine "PartGeneric";
			player removeWeapon _pwep;
			_dis=5;
			_sfx = "repair";
			[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
			[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
			
			sleep 9;
			deleteVehicle _obj;
			sleep 1;
			
			_object = createVehicle ["HMMWV_Armored_DZ", position player, [], 0, "NONE"];
			
			player reveal _object;

			_smoke = "SmokeshellGreen" createVehicle position _object;
			_smoke attachto [_object,[0,0,0]];
			
			cutText [format["You've upgraded to a Humvee (m240)! Look for green smoke!"], "PLAIN DOWN"];
			
			r_interrupt = false;
			player switchMove "";
			player playActionNow "stop";
			
			sleep 5;
			
			deleteVehicle _smoke;
			
			cutText [format["Warning: Spawned Humvees (m240) do Not Save after server restart!"], "PLAIN DOWN"];
			
		} else {
			cutText [format["You need Scrap Metal and a Machine Gun (e.g. M240) to upgrade this."], "PLAIN DOWN"];
			sleep 5;
			cutText [format["Make sure you upgrade your Humvee somewhere safe and clear of objects."], "PLAIN DOWN"];
		};

};
//deploy gyro by Player2 - OpenDayz Release Coming Soon!