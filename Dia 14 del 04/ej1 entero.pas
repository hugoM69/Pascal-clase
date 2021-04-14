Program ej1;
USES CRT;
TYPE ar = ARRAY[1..20] of Integer;

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
        UNTIL (b) OR (l = 20)
    END;
    
PROCEDURE Ver(CONST li : ar ; long : Integer);
    VAR
        i : integer;
    BEGIN
        FOR i:= 1 TO long-1 DO
            WRITELN(li[i]);
    END;

FUNCTION maxpos (CONST li : ar ; long : Integer): Integer;
    VAR
        max,i : integer;
    BEGIN
        max := li[1];
        maxpos := 1;
        FOR i := 1 TO long DO 
            IF li[i] > max THEN BEGIN
                max := li[i];
                maxpos := i;
                END;
        WRITELN('La posicion del maximo es:',maxpos);
    END;
    
FUNCTION minpos (CONST li : ar ; long : Integer): Integer;
    VAR
        min,i : integer;
    BEGIN
        min := li[1];
        minpos := 1;
        FOR i := 1 TO long DO 
            IF li[i] < min THEN BEGIN
                min := li[i];
                minpos := i;
                END;
        WRITELN('La posicion del minimo es:',minpos);
    END;
    
PROCEDURE cambiar(VAR lis : ar; pos1,pos2 : Integer);
    VAR
        n : Integer;
    BEGIN
        n := lis[pos1];
        lis[pos1] := lis[pos2];
        lis[pos2] := n;
    END;
    
VAR
	a : ar;
	leng : integer;
BEGIN
    rellenar(a,leng);
    IF leng <>0 THEN BEGIN
        Ver(a,leng);
        cambiar(a,maxpos(a,leng),minpos(a,leng));
        Writeln('Lista modificada');
        Ver(a,leng)
        END;
END.
