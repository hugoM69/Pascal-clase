PROGRAM siete;
USES CRT;
VAR
	c: Char;	
	maxi,actual,exit : Integer;
BEGIN
	actual := 0;
	exit := 0;
	maxi := 0;
    WHILE exit = 0 DO BEGIN
        c := READKEY;
        WRITELN(c);
        CASE ORD(c) OF
            48: actual := actual+1;
            49: IF actual > maxi THEN
                    maxi := actual;
            35: exit := 1;
            ELSE 
                WRITELN('ERROR, solo se admiten 0, 1 y # para salir');
        END;
        
        END;
    WRITELN('El numero maximo de ceros seguidos ha sido: ', maxi);
END.
