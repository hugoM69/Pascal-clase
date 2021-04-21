PROGRAM ardillas_asesinas;

USES crt;
FUNCTION menu : integer;
	BEGIN
		WRTIELN('Opciones: ');
		WRTIELN('1. Dar de ALTA un nuevo PEDIDO');
		WRTIELN('2. RECIBIR un PEDIDO');
		WRTIELN('3. LISTAR informacion de PIEZAS');
		WRTIELN('4. LISTAR informacion de PEDIDOS');
		WRTIELN('5. SALIR del PROGRAMA');
		READLN(menu);
	END;
VAR
	
BEGIN

END.