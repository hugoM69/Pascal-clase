PROGRAM cinco;
VAR
	N, Epsilon, r0 ,r1 : Real;	
BEGIN
	READLN(N);
	READLN(Epsilon);
	READLN(r0);
	r1:= r0;
	REPEAT  BEGIN
		r0 := r1;
		r1 := ((N/r0)+r0)/2;
		END;
	UNTIL(ABS(r1-r0)<= Epsilon);
	WRITELN('La raiz vale:  ',r1);  
END.
