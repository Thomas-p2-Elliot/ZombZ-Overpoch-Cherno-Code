KRON_Scramble = {
	private ["_in","_out","_en","_p2out","_n"];
	_in = _this;
	_en  = _in select 1;
	_out = _in select 0;
	_pu =  _in select 2;
	_n = 0;
	if (_en > 0) then {
		_out = [_out] call {
			private["_in","_i","_arr","_out"];
			_in=_this select 0;
			_arr = toArray(_in);
			_out=[];
			for "_i" from 0 to (count _arr)-1 do {
				_out=_out+[toString([_arr select _i])];
			};
			_out
		};
		_out = [str _out,'"','']  call {
			private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
			_str=_this select 0;
			_arr=toArray(_str);
			_la=count _arr;
			_old=_this select 1;
			_new=_this select 2;
			_na=[_new] call {
				private["_in","_i","_arr","_out"];
				_in=_this select 0;
				_arr = toArray(_in);
				_out=[];
				for "_i" from 0 to (count _arr)-1 do {
					_out=_out+[toString([_arr select _i])];
				};
				_out
			};
			_lo=[_old] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out
				};
				_len=count (_arr);
				_len
			};
			_ln=[_new] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {	
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out 		
				};
				_len=count (_arr);
				_len
			};
			_out="";
			for "_i" from 0 to (count _arr)-1 do {
				_tmp="";
				if (_i <= _la-_lo) then {
					for "_j" from _i to (_i+_lo-1) do {
						_tmp=_tmp + toString([_arr select _j]);
					};
				};
				if (_tmp==_old) then {
					_out=_out+_new;
					_i=_i+_lo-1;
				} else {
					_out=_out+toString([_arr select _i]);
				};
			};
			_out
		};
		_out = [ _out,',.,','.'] call {
			private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
			_str=_this select 0;
			_arr=toArray(_str);
			_la=count _arr;
			_old=_this select 1;
			_new=_this select 2;
			_na=[_new] call {
				private["_in","_i","_arr","_out"];
				_in=_this select 0;
				_arr = toArray(_in);
				_out=[];
				for "_i" from 0 to (count _arr)-1 do {
					_out=_out+[toString([_arr select _i])];
				};
				_out
			};
			_lo=[_old] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out
				};
				_len=count (_arr);
				_len
			};
			_ln=[_new] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {	
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out 		
				};
				_len=count (_arr);
				_len
			};
			_out="";
			for "_i" from 0 to (count _arr)-1 do {
				_tmp="";
				if (_i <= _la-_lo) then {
					for "_j" from _i to (_i+_lo-1) do {
						_tmp=_tmp + toString([_arr select _j]);
					};
				};
				if (_tmp==_old) then {
					_out=_out+_new;
					_i=_i+_lo-1;
				} else {
					_out=_out+toString([_arr select _i]);
				};
			};
			_out
		};
		_out = [ _out,',,,',','] call {
			private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
			_str=_this select 0;
			_arr=toArray(_str);
			_la=count _arr;
			_old=_this select 1;
			_new=_this select 2;
			_na=[_new] call {
				private["_in","_i","_arr","_out"];
				_in=_this select 0;
				_arr = toArray(_in);
				_out=[];
				for "_i" from 0 to (count _arr)-1 do {
					_out=_out+[toString([_arr select _i])];
				};
				_out
			};
			_lo=[_old] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out
				};
				_len=count (_arr);
				_len
			};
			_ln=[_new] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {	
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out 		
				};
				_len=count (_arr);
				_len
			};
			_out="";
			for "_i" from 0 to (count _arr)-1 do {
				_tmp="";
				if (_i <= _la-_lo) then {
					for "_j" from _i to (_i+_lo-1) do {
						_tmp=_tmp + toString([_arr select _j]);
					};
				};
				if (_tmp==_old) then {
					_out=_out+_new;
					_i=_i+_lo-1;
				} else {
					_out=_out+toString([_arr select _i]);
				};
			};
			_out
		};
		_out = [ _out,',]]',']'] call {
			private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
			_str=_this select 0;
			_arr=toArray(_str);
			_la=count _arr;
			_old=_this select 1;
			_new=_this select 2;
			_na=[_new] call {
				private["_in","_i","_arr","_out"];
				_in=_this select 0;
				_arr = toArray(_in);
				_out=[];
				for "_i" from 0 to (count _arr)-1 do {
					_out=_out+[toString([_arr select _i])];
				};
				_out
			};
			_lo=[_old] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out
				};
				_len=count (_arr);
				_len
			};
			_ln=[_new] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {	
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out 		
				};
				_len=count (_arr);
				_len
			};
			_out="";
			for "_i" from 0 to (count _arr)-1 do {
				_tmp="";
				if (_i <= _la-_lo) then {
					for "_j" from _i to (_i+_lo-1) do {
						_tmp=_tmp + toString([_arr select _j]);
					};
				};
				if (_tmp==_old) then {
					_out=_out+_new;
					_i=_i+_lo-1;
				} else {
					_out=_out+toString([_arr select _i]);
				};
			};
			_out
		};
		_out = [ _out,'[[,','['] call {
			private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
			_str=_this select 0;
			_arr=toArray(_str);
			_la=count _arr;
			_old=_this select 1;
			_new=_this select 2;
			_na=[_new] call {
				private["_in","_i","_arr","_out"];
				_in=_this select 0;
				_arr = toArray(_in);
				_out=[];
				for "_i" from 0 to (count _arr)-1 do {
					_out=_out+[toString([_arr select _i])];
				};
				_out
			};
			_lo=[_old] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out
				};
				_len=count (_arr);
				_len
			};
			_ln=[_new] call {
				private["_in","_arr","_len"];
				_in=_this select 0;
				_arr=[_in] call {	
					private["_in","_i","_arr","_out"];
					_in=_this select 0;
					_arr = toArray(_in);
					_out=[];
					for "_i" from 0 to (count _arr)-1 do {
						_out=_out+[toString([_arr select _i])];
					};
					_out 		
				};
				_len=count (_arr);
				_len
			};
			_out="";
			for "_i" from 0 to (count _arr)-1 do {
				_tmp="";
				if (_i <= _la-_lo) then {
					for "_j" from _i to (_i+_lo-1) do {
						_tmp=_tmp + toString([_arr select _j]);
					};
				};
				if (_tmp==_old) then {
					_out=_out+_new;
					_i=_i+_lo-1;
				} else {
					_out=_out+toString([_arr select _i]);
				};
			};
			_out
		};
		_p2out = compile _out;
		_p2out = call _p2out;

		{
			_n = _x;
			_n = switch (_n) do {
				default {"0"};
				case 1:{ "P"};
				case 2:{ "l"};
				case 3:{ "a"};
				case 4:{ "y"};
				case 5:{ "e"};
				case 6:{ "r"};
				case 7:{ "2"};
				case 8:{ "O"};
				case 9:{ "K"};
			};

		 	_p2out set [_foreachindex, _n];
		} forEach _p2out;

		_out = "";

		if (_pu) then {
			{
			  _out = _out + format["%1",_x];
			} forEach _p2out;
		} else {
			_out = format["%1%2%3%4",_p2out select 0,_p2out select 1,_p2out select 2,_p2out select 3];
		};

	} else {
		_p2out = [_out] call {
			private["_in","_i","_arr","_out"];
			_in=_this select 0;
			_arr = toArray(_in);
			_out=[];
			for "_i" from 0 to (count _arr)-1 do {
				_out=_out+[toString([_arr select _i])];
			};
			_out
		};
		_n = "";  
		{                                     
			_n = _x;
			_n = switch (_n) do {
				default {0};
				case "P":{1};
				case "l":{2};
				case "a":{3};
				case "y":{4};
				case "e":{5};
				case "r":{6};
				case "2":{7};
				case "O":{8};
				case "K":{9};
			};
			_p2out set [_foreachindex, _n];
		} forEach _p2out;
		_out = 0;
		if (_pu) then {
			_out = ""; 
			{
			  _out = _out + format["%1",_x];
			} forEach _p2out;
		} else {
			_out = format["%1%2%3%4",_p2out select 0,_p2out select 1,_p2out select 2,_p2out select 3];
		};
	};
	_out
};

KRON_StrToArray = {
	private["_in","_i","_arr","_out"];
	_in=_this select 0;
	_arr = toArray(_in);
	_out=[];
	for "_i" from 0 to (count _arr)-1 do {
		_out=_out+[toString([_arr select _i])];
	};
	_out
};

KRON_StrLeft = {
	private["_in","_len","_arr","_out"];
	_in=_this select 0;
	_len=(_this select 1)-1;
	_arr=[_in] call KRON_StrToArray;
	_out="";
	if (_len>=(count _arr)) then {
		_out=_in;
	} else {
		for "_i" from 0 to _len do {
			_out=_out + (_arr select _i);
		};
	};
	_out
};

KRON_StrLen = {
	private["_in","_arr","_len"];
	_in=_this select 0;
	_arr=[_in] call KRON_StrToArray;
	_len=count (_arr);
	_len
};

KRON_StrRight = {
	private["_in","_len","_arr","_i","_out"];
	_in=_this select 0;
	_len=_this select 1;
	_arr=[_in] call KRON_StrToArray;
	_out="";
	if (_len>(count _arr)) then {_len=count _arr};
	for "_i" from ((count _arr)-_len) to ((count _arr)-1) do {
		_out=_out + (_arr select _i);
	};
 _out
};
	
KRON_StrMid = {
	private["_in","_pos","_len","_arr","_i","_out"];
	_in=_this select 0;
	_pos=abs(_this select 1);
	_arr=[_in] call KRON_StrToArray;
	_len=count(_arr);
	if ((count _this)>2) then {_len=(_this select 2)};
	_out="";
	if ((_pos+_len)>=(count _arr)) then {_len=(count _arr)-_pos};
	if (_len>0) then {
		for "_i" from _pos to (_pos+_len-1) do {
			_out=_out + (_arr select _i);
		};
	};
	_out
};

KRON_StrIndex = {
	private["_hay","_ndl","_lh","_ln","_arr","_tmp","_i","_j","_out"];
	_hay=_this select 0;
	_ndl=_this select 1;
	_out=-1;
	_i=0;
	if (_hay == _ndl) exitWith {0};
	_lh=[_hay] call KRON_StrLen;
	_ln=[_ndl] call KRON_StrLen;
	if (_lh < _ln) exitWith {-1};
	_arr=[_hay] call KRON_StrToArray;
	for "_i" from 0 to (_lh-_ln) do {
		_tmp="";
		for "_j" from _i to (_i+_ln-1) do {
			_tmp=_tmp + (_arr select _j);
		};
		if (_tmp==_ndl) exitWith {_out=_i};
	};
	_out
};

KRON_StrInStr = {
	private["_out"];
	_in=_this select 0;
	_out=if (([_this select 0,_this select 1] call KRON_StrIndex)==-1) then {false} else {true};
 	_out
};


KRON_Replace = {
	private["_str","_old","_new","_out","_tmp","_jm","_la","_lo","_ln","_i"];
	_str=_this select 0;
	_arr=toArray(_str);
	_la=count _arr;
	_old=_this select 1;
	_new=_this select 2;
	_na=[_new] call KRON_StrToArray;
	_lo=[_old] call KRON_StrLen;
	_ln=[_new] call KRON_StrLen;
	_out="";
	for "_i" from 0 to (count _arr)-1 do {
		_tmp="";
		if (_i <= _la-_lo) then {
			for "_j" from _i to (_i+_lo-1) do {
				_tmp=_tmp + toString([_arr select _j]);
			};
		};
		if (_tmp==_old) then {
			_out=_out+_new;
			_i=_i+_lo-1;
		} else {
			_out=_out+toString([_arr select _i]);
		};
	};
	_out
};

KRON_StrUpper = {
	private["_in","_out"];
	_in=_this select 0;
	_out=toUpper(_in);
	_out
};

KRON_StrLower = {
	private["_in","_out"];
	_in=_this select 0;
	_out=toLower(_in);
	_out
};

KRON_ArrayToUpper = {
	private["_in","_i","_e","_out"];
	_in=_this select 0;
	_out=[];
	if ((count _in)>0) then {
		for "_i" from 0 to (count _in)-1 do {
			_e=_in select _i;
 			if (typeName _e=="STRING") then {
 				_e=toUpper(_e);
 			};
			_out set [_i,_e];
		};
	};
	_out
};

KRON_Compare = {
	private["_k","_n","_s","_i","_c","_t","_s1","_s2","_l1","_l2","_l"];
	_k=[_this,"CASE"] call KRON_findFlag;
	_n=0;
	_s=0;
	for "_i" from 0 to 1 do {
		_t=_this select _i;
		switch (typeName _t) do {
			case "SCALAR": {_n=1};
			case "BOOL": {_this set [_i,str(_t)]};
			case "SIDE": {_this set [_i,str(_t)]};
			case "STRING": {if !(_k) then {_this=[_this] call KRON_ArrayToUpper}};
			default {_n=-1};
		};
	};
	_s1 = _this select 0;
	_s2 = _this select 1;
	if (_n!=0) exitWith {
		if (_n==1) then {
			if (_s1<_s2) then {_s=-1} else {if (_s1>_s2) then {_s=1}};
		};
		_s	
	};
	_s1 = toArray(_s1);
	_s2 = toArray(_s2);
	_l1 = count _s1;
	_l2 = count _s2;
	_l=if (_l1<_l2) then {_l1} else {_l2};
	for "_i" from 0 to _l-1 do {
		if ((_s1 select _i)<(_s2 select _i)) then {
			_s=-1; 
			_i=_l;
		} else {
			if ((_s1 select _i)>(_s2 select _i)) then {
				_s=1;
				_i=_l;
			};
		};
	};
	if (_s==0) then {
		if (_l1<_l2) then {
			_s=-1;
		} else {
			if (_l1>_l2) then {_s=1};
		};
	};
	_s
};

KRON_ArraySort = {
	private["_a","_d","_k","_s","_i","_vo","_v1","_v2","_j","_c","_x"];
	_a = +(_this select 0);
	_d = if ([_this,"DESC"] call KRON_findFlag) then {-1} else {1};
	_k = if ([_this,"CASE"] call KRON_findFlag) then {"CASE"} else {"nocase"};
	_s = -1;
	if (typeName (_a select 0)=="ARRAY") then {
		_s=0;
		if (((count _this)>1) && (typeName (_this select 1)=="SCALAR")) then {
			_s=_this select 1;
		};
	};
	for "_i" from 0 to (count _a)-1 do {
		_vo = _a select _i;
		_v1 = _vo;
		if (_s>-1) then {_v1=_v1 select _s};
		_j = 0;
		for [{_j=_i-1},{_j>=0},{_j=_j-1}] do {
			_v2 = _a select _j;
			if (_s>-1) then {_v2=_v2 select _s};
			_c=[_v2,_v1,_k] call KRON_Compare;
			if (_c!=_d) exitWith {};
			_a set [_j+1,_a select _j];
		};
		_a set [_j+1,_vo];
	};
	_a
};

KRON_findFlag = {
	private["_in","_flg","_arr","_out"];
	_in=_this select 0;
	_flg=toUpper(_this select 1);
	_arr=[_in] call KRON_ArrayToUpper;
	_out=_flg in _arr;
	_out
};

KRON_getArg = {
	private["_in","_flg","_fl","_def","_arr","_i","_j","_as","_aa","_org","_p","_out"];
	_in=_this select 0;
	_flg=toUpper(_this select 1);
	_fl=[_flg] call KRON_StrLen;
	_out="";
	if ((count _this)>2) then {_out=_this select 2};
	_arr=[_in] call KRON_ArrayToUpper;
	if ((count _arr)>0) then {
		for "_i" from 0 to (count _in)-1 do {
			_as = _arr select _i;
			if (typeName _as=="STRING") then {
				_aa = [_as] call KRON_StrToArray;
				_p = _aa find ":";
				if (_p==_fl) then {
					if (([_as,_fl] call KRON_StrLeft)==_flg) then {
						_org = _in select _i;
						_out=[_org,_p+1] call KRON_StrMid;
					};
				};
			};
		};
	};
 	_out
};


KRON_getArgRev = {
	private["_in","_flg","_fl","_def","_arr","_i","_j","_as","_aa","_org","_p","_out"];
	_in=_this select 0;
	_flg=toUpper(_this select 1);
	_fl=[_flg] call KRON_StrLen;
	_out="";
	if ((count _this)>2) then {_out=_this select 2};
	_arr=[_in] call KRON_ArrayToUpper;
	if ((count _arr)>0) then {
		for "_i" from 0 to (count _in)-1 do {
			_as = _arr select _i;
			if (typeName _as=="STRING") then {
				_aa = [_as] call KRON_StrToArray;
				_p = _aa find ":";
				if (_p+1==(count _aa)-_fl) then {
					if (([_as,_p+1] call KRON_StrMid)==_flg) then {
						_org = _in select _i;
						_out=[_org,_p] call KRON_StrLeft;
					};
				};
			};
		};
	};
 	_out
};