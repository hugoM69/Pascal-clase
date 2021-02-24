PROGRAM dos;
VAR
	i,j,N,Divis, numero : Integer;
	Count : Real;
	
BEGIN
    numero := 0;
	READLN(N);
	FOR i := 1 TO N DO BEGIN
		Divis := 0;
		FOR j := 1 TO i DO
			IF FRAC(i/j) = 0 THEN
				Divis := Divis + 1;
				
		IF Divis <= 2 THEN BEGIN
			Writeln(i,' Es primo');
			numero := numero + 1 ;
			END;
		END;
	WRITELN('Hay ',numero,' numeros primos');
END.