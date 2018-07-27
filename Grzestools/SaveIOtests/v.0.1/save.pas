uses crt,SaveIO;

var 
	Sdata:SaveDataArray;
	saveM:Metadata;
	
begin
	setlength(Sdata,5);
	readln(Sdata[0]);
	readln(Sdata[1]);
	readln(Sdata[2]);
	readln(Sdata[3]);
	readln(Sdata[4]);
	readln(Sdata[5]);
	writeln('Mdata');
	readln(saveM.date);
	readln(saveM.stage);
	readln(saveM.timeH);
	readln(saveM.timeM);
	Save(saveM,Sdata);
end.