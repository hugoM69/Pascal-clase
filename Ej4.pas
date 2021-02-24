PROGRAM cuatro;
VAR
	i ,N ,Sum ,Divis : Integer;	
BEGIN
	READLN(N);
	Sum := 0;
	FOR i := 1 TO (N-1) DO
		IF FRAC(N/i) = 0 THEN BEGIN
			Sum := Sum + i;
			WRITELN(i);
			END;
	WRITELN(Sum);
	
END.