PROGRAM tres;
VAR
	i,N, Sum, Pre : Integer;

BEGIN
	i := 1;
	Sum, Pre := 0;
	READLN(N);
	WHILE Sum < N DO BEGIN
		Pre := Sum
		Sum := Sum + i;
		i := i + 1;
		END;
	
END.