unit SaveIO;

interface


	var
		errors:boolean;
		LastErrorMsg:string;
	
	type
		SaveDataArray = array of string;
		Metadata = record //informacje dotycz¹ce sejwa, mo¿na powiêkszyæ lub zamieniæ na dynamiczne
			date,stage:string;
			timeH,TimeM:integer;
		end;
		
	procedure Save(Mdata:Metadata;Sdata:SaveDataArray);

	function Loadsave(var Mdata:Metadata):SaveDataArray; //parametr tej funkcji to tak naprawde drugi wynik
	
Implementation
uses crt,sysutils;	
	var
		f:textfile;
		version:string;
	
	procedure Save(Mdata:Metadata;Sdata:SaveDataArray);
		var
			i:integer;
		begin
			assign(f,'save.txt');
			rewrite(f);
			writeln(f,version);
			writeln(f,Mdata.date);
			writeln(f,Mdata.stage);
			writeln(f,Mdata.timeH);
			writeln(f,Mdata.timeM);
			writeln(f,length(Sdata));
			for i := 0 to length(Sdata) do writeln(f,Sdata[i]);
			writeln(f,'end of save');
			close(f);
		end;
	
	function Loadsave(var Mdata:Metadata):SaveDataArray;
		var 
			i,x:integer;
			str:string;
		begin
			assign(f,'save.txt');
			reset(f);
			readln(f,str);
			if str=version then
				begin
					readln(f,Mdata.date);
					readln(f,Mdata.stage);
					readln(f,Mdata.timeH);
					readln(f,Mdata.timeM);
					readln(f,i);
					setlength(Loadsave,i);
					for x := 0 to i do
						begin
							readln(f,LoadSave[x]);
							if eof(f) then
								begin
									errors := true;
									LastErrorMsg :='Save is invalid';
									break;
								end;
						end;
				end
			else
				begin
					errors := true;
					LastErrorMsg :='Save version is invalid';
				end;
			close(f);
		end;

initialization
	begin
		version := 'v.0.1';
		errors := false;
		LastErrorMsg := '';
	end;
end.	