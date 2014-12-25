/*---------------------------------------------------------------------------
Extra Zeds (Headless Client) by Player2

	Configuration File
---------------------------------------------------------------------------*/
diag_log(format["P2HC:ZedSpawns: Initializing: %1",__FILE__]); //log output (can delete if you want)
P2DZ_HC_playerZedRadius =			300;	//Distance around the player we should check for zeds 	(meters)
P2DZ_HC_maxZedsPerPlayer = 			15;		//Max zeds around a player at a time 					(number)
P2DZ_HC_globalMaxZeds = 			600;	//Max zeds on server 			 						(number)
P2DZ_HC_zedRespawnTime	=			180;	//Time between checks for spawning new zeds 			(secs)
P2DZ_HC_playerSpeedCap =			26;		//Max player speed for zeds to spawn (sprint=25kmh)		(kmh)
P2DZ_HC_ExtraZedsDebug 	=			false;	//Enables/disables logging outputs 						(boolean)
P2DZ_HC_debugZedFSM =				false; 	//Enables/Disables FSM & zedAntiStuck logging outputs 	(boolean)

//	Functions Path Configuration
//Standard DayZ Functions
zombie_findTargetAgent = 		compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\zombie_findTargetAgent.sqf";
local_zombieDamage = 			compile preprocessFileLineNumbers "compile\fn_damageHandlerZ.sqf";								//Generated by the client who created a zombie to track damage
dayz_zombieSpeak = 				compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\object_speak.sqf";				//Used to generate random speech for a unit

dayz_losCheck = {
	private ["_target","_agent","_cantSee","_tPos","_zPos"];
	_cantSee = true;
	_target = _this select 0;
	_agent = _this select 1;

	if (isNil '_target' || isNil '_agent') exitWith {
		diag_log("dayz_losCheck:HC:Warning: agent or target was nil");
		_cantSee
	};

	if (isNull _target || isNull _agent) exitWith {
		diag_log("dayz_losCheck:HC:Warning: agent or target was null");
		_cantSee
	};

	if (!(alive _target) || !(alive _agent)) exitWith {
		diag_log("dayz_losCheck:HC:Warning: agent or target was dead");
		_cantSee
	};

	_tPos = visiblePositionASL _target;		_zPos = visiblePositionASL _agent;
	_tPos set [2,(_tPos select 2)+1];		_zPos set [2,(_zPos select 2)+1];
	if ((count _tPos > 0) && (count _zPos > 0)) then { _cantSee = terrainIntersectASL [_tPos, _zPos];	if (!_cantSee) then {	_cantSee = lineIntersects [_tPos, _zPos, _agent, vehicle _target]; };};
	if (isNil '_cantSee') then { _cantSee = true; diag_log("dayz_losCheck:HC:Warning: cantSee was nil"); };
	_cantSee
};

//Headless Client Function Paths
player2_zedAntiStuck =			compile preprocessFileLineNumbers "zombzHC\addonszeds\player2_zedAntiStuck.sqf";
zombie_loiterHC = 				compile preprocessFileLineNumbers "zombzHC\addonszeds\zombie_loiterHC.sqf";
player2_spawnZombieHC =			compile preprocessFileLineNumbers "zombzHC\addonszeds\player2_spawnZombieHC.sqf";
player2_spawnZedsHC = 			compile preprocessFileLineNumbers "zombzHC\addonszeds\player2_spawnZedsHC.sqf"; 
nearest_player = 				compile preprocessFileLineNumbers "zombzHC\addonszeds\nearest_player.sqf"; 
call 	 						compile preprocessFileLineNumbers "init\loot_init.sqf";

//tell main code that I've finished setting up the configuration
P2DZ_HC_extraZedsconfigDone = true;

/*---------------------------------------------------------------------------
www.ZombZ.net - Player2
---------------------------------------------------------------------------*/