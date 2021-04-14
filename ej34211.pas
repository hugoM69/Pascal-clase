Program ej2
USES
PROCEDURE rellenar(VAR mat : ar;VAR l : Integer);
    VAR 
        num : integer;
        b : boolean;
        c : char;
    BEGIN
        l := 0;
        b := False;
        REPEAT
            WRITELN('Si no quieres meter mas elementos pulsa la letra a');
            c := READKEY;
            IF c = 'a' THEN
                b := True
            ELSE BEGIN
                READLN(num);
                mat[l] := num;
                l := l+1
                END;
        UNTIL (b) OR (l = 50)
    END;
    
PROCEDURE Ver(CONST li : ar ; long : Integer);
    VAR
        i : integer;
    BEGIN
        FOR i:= 1 TO long DO
            WRITELN(li[i]);
    END;

FUNCTION Media(CONST li : ar ; long : Integer): Integer;
    VAR 
        i : Integer; 
        n : Real;
	BEGIN
	    FOR i := 1 TO long DO
	        n := n + li[i];
	    Media := n/long;
	END;
FUNCTION Moda(CONST li : ar ; long : Integer): Integer;
    VAR 
        i, n, max, r, num,j : Integer;
    BEGIN
        n := 0;
        max := 0;
        num := 0;
        FOR i:= 1 TO long DO BEGIN
            n := li[i];
            r := 0;
            FOR j := i TO long DO
                IF li[j] = n THEN
                    r := r+1;
            IF r > max THEN
                max := r;
                num := n;
            END;
            
    END;

VAR

BEGIN
