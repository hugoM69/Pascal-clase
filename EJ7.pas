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
        IF ORD(c) = 48 THEN
            actual := actual+1
        ELSE
            IF ORD(c) = 49 THEN BEGIN
                IF actual > maxi THEN
                    maxi := actual;
                actual := 0;
                END
            ELSE
                IF ORD(c) = 35 THEN
                    exit := 1
                ELSE 
                    WRITELN('ERROR, solo se admiten 0, 1 y # para salir');
        END;
    WRITELN('El numero maximo de ceros seguidos ha sido: ', maxi)
END.
