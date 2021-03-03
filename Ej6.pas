PROGRAM cinco;
USES CRT;
VAR
	c1,c2 : Char;	
	{i : Integer;}
BEGIN
	c1 := READKEY;
	c2 := READKEY;
	{i := ord(c1)+ord(c2)-48;}
	{WRITELN('Debug(c1,c2,i): ',c1,' ',c2,' ',i-48,' ',ord(c1),' ',ord(c2),' ',(i));}
	WRITELN('La suma es: ', chr(ord(c1)+ord(c2)-48)); 
END.
