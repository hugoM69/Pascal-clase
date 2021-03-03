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
        IF ORD(c) = 48 THEN
            actual := actual+1
        ELSE
            IF ORD(c) = 49 THEN BEGIN
                IF actual > maxi THEN
                    maxi := actual
                END
            ELSE
                IF ORD(c) = 35 THEN
                    exit = 1
                ELSE 
                    exit = 2;
        END;
    IF exit = 2 THEN
        WRITELN('ERROR, solo se admiten 0 y 1');
    WRITELN('El numero maximo de ceros seguidos ha sido: ', maxi)
END.
