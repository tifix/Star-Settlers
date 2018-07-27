uses crt,sysutils;

var
	ch:widechar;

begin
	writeln('Bajtoznaki by HakierGrzonzo 2K18');
	window(1,2,80,25);
	while true do
		begin
			ch := ReadKey;
			if byte(ch)=0 then 
				begin
					ch := ReadKey;
					writeln('Bajt: ',byte(ch));
				end
			else writeln('znak: ',byte(ch),' (',ch,')');
		end;
end.		