PROGRAM cinco;
VAR
	N, Epsilon, r0 ,r1 : Real;	
BEGIN
	READLN(N);
	READLN(Epsilon);
	READLN(r0);
	r1:= ((N/r0)+r0)/2;
	WHILE NOT (ABS(r1-r0)<= Epsilon) DO BEGIN
		r0 := r1;
		r1 := ((N/r0)+r0)/2;
	END;
	WRITELN('La raiz vale:  ',r1);
	
END.