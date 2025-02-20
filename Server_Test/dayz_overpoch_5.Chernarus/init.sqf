disableSerialization;
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];
call compile preprocessFileLineNumbers "_allConfig.sqf";
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

//leave false!
p2d_client = false;
p2d_server = false;
p2d_headless = false;


/*---------------------------------------------------------------------------
Headless Client
---------------------------------------------------------------------------*/
if (!hasInterface && !isDedicated && !isServer) exitWith {
	p2d_headless = true;

	diag_log("Init.sqf: ZombZ Headless Client");

	//Wait for BIS Functions to load	
  	waitUntil {!isNil "BIS_fnc_init"}; 

  	//Disable BIS Effects
  	BIS_Effects_Burn =					{};
  	BIS_Effects_AircraftVapour = 		{};
  	BIS_Effects_AirDestructionStage2 = 	{};
   	BIS_Effects_Secondaries = 			{};
   	BIS_Effects_AirDestruction = 		{};

   	//Load in Config
   	call compile preprocessFileLineNumbers "_hcConfig.sqf";

	/* Animated Heli Crash Sites by Player2 */
	if (P2DZ_HC_HeliCrashes) then {
		diag_log(format["P2DEBUG: %1 Executing AnimatedEvents: HeliCrashes!", (getPlayerUID player)]);
		[] execVM "\zombzHC\addons\AnimatedEvents\heliCrash_init.sqf";
	};

	/* HeadlessClient A.I. Missions by Player2 */
	if (P2DZ_HC_AIMissions_Enabled) then {
		diag_log(format["P2DEBUG: %1 Executing AI Missions!", (getPlayerUID player)]);
		[] execVM "\zombzHC\addons\P2AI\init.sqf";
	};

	/* Extra Zeds System by Player2 */
	if (P2DZ_HC_extraZeds) then {
		diag_log(format["P2DEBUG: %1 Executing Extra Zeds!", (getPlayerUID player)]);
		P2DZ_HC_extraZeds_Done = false;
		[] execVM "\zombzHC\addons\zeds\init.sqf";
	};

	/* Zombie Hordes by Player2 */
	if (P2DZ_HC_extraZeds && {(P2DZ_HC_zedHordes)}) then {
		waitUntil{uiSleep 0.5; P2DZ_HC_extraZeds_Done}; //zhordes requires extrazeds
		diag_log(format["P2DEBUG: %1 Executing Zombie Hordes!", (getPlayerUID player)]);
		[] execVM "\zombzHC\addons\zeds\hordes\init.sqf";
	};

	/* ArmaServerMonitor */
	if (P2DZ_HC_ASM_Enabled) then {
		diag_log(format["P2DEBUG: %1 Executing ArmaServerMonitor!", (getPlayerUID player)]);
		["OverPoch_HeadlessClient"] execFSM  "\ASM\fn_ASM.fsm"
	};
};


/*---------------------------------------------------------------------------
Dedicated Server
---------------------------------------------------------------------------*/

if (isDedicated && !hasInterface || isServer) then {
	p2d_server = true;

	/* Animated Heli Crash Sites by Player2 */
	if (P2DZ_HC_HeliCrashes) then {
		//diag_log(format["P2DEBUG: %1 Executing AnimatedEvents: HeliCrashes!", (getPlayerUID player)]);
		[] execVM "HC\AnimatedEvents\heliCrash_init.sqf";
	};

	/* HeadlessClient A.I. Missions by Player2 */
	if (P2DZ_HC_AIMissions_Enabled) then {
		//diag_log(format["P2DEBUG: %1 Executing AI Missions!", (getPlayerUID player)]);
		[] execVM "HC\P2AI\init.sqf";
	};

	//Server Variables & Config
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\_serverConfig.sqf";
	call compile preprocessFileLineNumbers 	"init\variables.sqf";
	call compile preprocessFileLineNumbers 	"\z\addons\dayz_server\init\variables_modified.sqf";

		
	/* ArmaServerMonitor */
	if (P2DZ_ASM_Enabled) then {
		diag_log(format 					["P2DEBUG: Server Executing ArmaServerMonitor!"]);
		["OverPoch_Server"] execFSM  		"\ASM\fn_ASM.fsm";
	};
};

/*---------------------------------------------------------------------------
Client / Player
---------------------------------------------------------------------------*/

if (hasInterface && !isDedicated) then {
	p2d_client = 	true;
	call compile preprocessFileLineNumbers "_clientConfig.sqf"; 
	call compile preprocessFileLineNumbers "init\variables.sqf";
	P2DZ_postVars = true;
	waitUntil{uiSleep 0.5; P2DZ_postVarsDone};
};

//diag_log("P2DEBUG: Is Player Client: 	" + str p2d_client);
//diag_log("P2DEBUG: Is Dedicatd Server: 	" + str p2d_server);
//diag_log("P2DEBUG: Is Headless Client: 	" + str p2d_headless);

//Load in compiled functions
P2DZ_loadInitDone = true;
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "init\publicEH.sqf";										//Initilize the publicVariable event handlers
progressLoadingScreen 0.7;
call compile preprocessFileLineNumbers "init\setup_functions_med.sqf";							//Functions used by CLIENT for medical
progressLoadingScreen 0.8;
call compile preprocessFileLineNumbers "compile\string_functions.sqf";							//Compile extra string functions
call compile preprocessFileLineNumbers "init\compiles.sqf";										//Compile regular functions
progressLoadingScreen 0.9;
call compile preprocessFileLineNumbers "server_traders.sqf";									//Compile trader configs
call compile preprocessFileLineNumbers "compile\fnc_server.sqf";
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

[] execVM "\ddopp_taserpack\scripts\init_taser.sqf";
player setVariable 	["isTazed", false, true];

/*---------------------------------------------------------------------------
Server
---------------------------------------------------------------------------*/
if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	if (true) then {
		private "_handle";
		_handle = 				[] execVM "\z\addons\dayz_server\FS_SpawnVehicles\FS_StaticVehicleSpawnCompiles.sqf";
		waitUntil{scriptDone _handle};
	};
	// Add trader citys
	_nil = 						[] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_nil2 = 					[] execVM "buildings\init_buildings.sqf";
	//Execute server monitor
	_serverMonitor = 			[] execVM "\z\addons\dayz_server\system\server_monitor_preExec.sqf";
};

/*---------------------------------------------------------------------------
Client
---------------------------------------------------------------------------*/

if (!isDedicated) then {
	P2DZ_postCompiles = true;
	waitUntil {uiSleep 0.5; 				P2DZ_postCompilesDone};
	[] execVM 								"system\login.sqf";	
	0 fadeSound 0;
	waitUntil {!isNil 						"dayz_loadScreenMsg"};
	dayz_loadScreenMsg = 					("ZombZ: " + localize "STR_AUTHENTICATING");
	_id = player addEventHandler 			["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = [] execVM 				"system\player_monitor.sqf";	
	[] 	execVM 								"compile\fn_deployActions.sqf";	
	call compile preprocessFileLineNumbers 	"compile\fnc_debugMon.sqf";
	call compile preprocessFileLineNumbers 	"init\notifs_init.sqf";
	[] execVM 								"system\safezone.sqf";
};

//#define RESEC_VERBOSE
//#include "\z\addons\dayz_code\system\REsec.sqf"
#include "system\BIS_Effects\init.sqf"

