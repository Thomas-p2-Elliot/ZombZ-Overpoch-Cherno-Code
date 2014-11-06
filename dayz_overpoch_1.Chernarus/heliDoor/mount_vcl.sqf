_vcl 			= _this select 0;
_caller			= _this select 1;
_dir			= getdir _vcl; 

_vcl setVariable ["NORRN_mountOn_vcl_pos0", true, true];
sleep 1;
titletext ["Switching Position","BLACK FADED", 0.1];
if (vehicle _caller != _caller) then {_caller action ["GetOut", vehicle _caller]; sleep 0.5};

switch (typeOf _vcl) do {
		//MH60 - Rear Door
		case "MH60S_DZ": {_caller attachTo [_vcl,[-0.5,0.8,-2]]; _caller setDir 305;};
		case "MH60S_DZE": {_caller attachTo [_vcl,[-0.5,0.8,-2]]; _caller setDir 305;};
		case "MH60S": {_caller attachTo [_vcl,[-0.5,0.8,-2]]; _caller setDir 305;};
		//UH1Y - Right Door
		case "UH1Y_DZ":  {_caller attachTo [_vcl,[0.5,-3.5,-1.4]]; _caller setDir 105;};
		case "UH1Y_DZE":  {_caller attachTo [_vcl,[0.5,-3.5,-1.4]]; _caller setDir 105;};
		case "UH1Y":  {_caller attachTo [_vcl,[0.5,-3.5,-1.4]]; _caller setDir 105;};
		//V3S - Front Right
		case "V3S_Civ":  {_caller attachTo [_vcl,[0.85,0.8,-0.75]]; _caller setDir 45; };
		//MH6J - Front Right
		case "MH6J_EP1" { _caller attachTo [_vcl,[1.0,1.7,-2.0]]; _caller setDir 45; };
		//TT650_INS - Rear
		case "TT650_INS":  { _caller attachTo [_vcl,[-0.15,-0.3,-1.5]; _caller setDir 180; };
}; 

_caller setpos getpos _caller;
_caller setVehicleInit "this switchMove 'aidlpknlmstpslowwrfldnon_player_idlesteady02'";
processInitCommands; 
_caller disableAI "anim";
sleep 0.1;
titletext ["","BLACK IN", 0.1];
call compile preprocessFileLineNumbers "heliDoor\p2_mountHelp.sqf";
player switchCamera "Gunner";

diag_log(format["P2DriveByDebug: mount_vcl: %1, P2DZDriveByMode Set!",typeOf _vcl]);
player setVariable ["NORRN_inVehMount", true];

processInitCommands;

if (true) exitWith {};
