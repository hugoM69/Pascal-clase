PROGRAM uno;
VAR
	i,N : Integer;
	Count, Sum : Real;
	
BEGIN
	READLN(N);
	Count := 1-(1/4);
	FOR i := 3 TO N DO BEGIN
		Sum := 1-(1/sqr(i));
	    IF ODD(i) THEN
		    Sum := Sum * (-1);
		Count := Count * Sum;
    END;
	WRITELN(Count:2:2);
	
END.