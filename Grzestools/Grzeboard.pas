unit Grzeboard;

interface

	function GetKey:smallint;

Implementation

uses crt;	
	
	function GetKey:smallint;
		var
			ch :widechar;
			int :smallint;
		begin
			ch := Readkey;
			if byte(ch) = 0 then 
				begin
					ch := readkey;
					int := byte(ch)+255;
				end
			else int := byte(ch);
			Getkey := int;
		end;

end.				