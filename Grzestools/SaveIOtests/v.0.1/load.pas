uses crt,SaveIO;
var
	i:integer;
	Sdata:SaveDataArray;
	saveM:Metadata;
begin
	writeln('wczytywanie');
	Sdata := Loadsave(saveM);
	writeln('wczytano');
	for i := 0 to 5 do writeln(Sdata[i]);
	writeln('Mdata');
	writeln(saveM.date);
	writeln(saveM.stage);
	writeln(saveM.timeH);
	writeln(saveM.timeM);
	readln;
end.