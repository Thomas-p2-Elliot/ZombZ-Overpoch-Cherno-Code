private ["_long"];
_long = ;
private ["_cariMsgSend","_cariName","_pos","_target"];_target = _this select 0;
_cariName = name _target;_pos = getPosATL player;
titleText ["Open chat. Type your message. Then hit escape and walk forward a little to send.","PLAIN DOWN"];
cariWait = true;
cariMsg = '';cariMsgHandle = [] spawn {
	disableSerialization;
	while {cariWait} do {
		_display = findDisplay 24;
		if (!isNull _display) then {
			_chat = _display displayCtrl 101;
			_txt = ctrlText _chat;
			cariMsg = _txt;
		};
		uiSleep .01;
	};
};waitUntil {(_pos distance (getPosATL player)) > 1;};
cariWait = false;
terminate cariMsgHandle;
_cariMsgSend = format ["if (name player == '%2') then {titleText ['%1','PLAIN DOWN'];};",cariMsg,_cariName];
[_cariMsgSend] call cariRE;