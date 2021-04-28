PROGRAM ardillas_asesinas;

USES crt;

TYPE
lista=STRING[20];
producto = RECORD
		cod_pieza : Integer;
		denominacion : lista;
		stock_actual : Integer;
		valor_unitario : Real;
		END;
pedido = RECORD
		num_pedido : Integer ;
		cod_pieza : Integer;
		piezas_pedidas : Integer;
		END;
registro1=ARRAY[1..20] of producto;
registro2=ARRAY[1..20] of pedido;	
VAR
long1, long2:integer;		


FUNCTION menu : integer;
	VAR 
i : integer;
	BEGIN
		WRITELN('Opciones: ');
		WRITELN('1. Dar de ALTA un nuevo PEDIDO');
		WRITELN('2. RECIBIR un PEDIDO');
		WRITELN('3. LISTAR informacion de PIEZAS');
		WRITELN('4. LISTAR informacion de PEDIDOS');
		WRITELN('5. SALIR del PROGRAMA');
REPEAT Write('Pulsa el numero de la opcion:'); 
READLN(i);
UNTIL(1<=i)AND(i<=5);
menu := i;
	END;


PROCEDURE anadir_pieza(VAR registro_piezas:registro1;VAR long1:integer);

VAR
i : integer;
c : char;
BEGIN
		REPEAT
			i:=1+long1;
		CLRSCR;
                       WRITE('Inserte el codigo de la pieza: ');
		READLN(registro_piezas[i].cod_pieza);
		WRITE('Inserte el nombre de la pieza: ');
		READLN(registro_piezas[i].denominacion);
		WRITE('Stock actual: ');
		READLN(registro_piezas[i].stock_actual);
		WRITE('Precio de las piezas: ');
		READLN(registro_piezas[i].valor_unitario);
		long1:=long1+1;
			WRITELN;
                                   	REPEAT	
WRITELN('Quiere seguir introduciendo datos? S/N');	
READLN(c);
UNTIL (UPCASE(c)='N')OR(UPCASE(c)='S');

UNTIL UPCASE(c)='N';
END;

PROCEDURE anadir_pedido(VAR registro_pedido:registro2;VAR long2:integer);

VAR
i : integer;
c : char;
BEGIN
			REPEAT
			i:=1+long2;
WRITELN('Inserte numero del pedido:');
		READLN(registro_pedido[i].num_pedido);
			WRITELN('Inserte numero de la pieza');
			READLN(registro_pedido[i].cod_pieza);
WRITELN('Numero de piezas pedidas');
			READLN(registro_pedido[i].piezas_pedidas);
			long2:=long2+1;
REPEAT		
WRITELN('Quiere seguir introduciendo datos? S/N');
READLN(c);
UNTIL (UPCASE(c)='N')OR(UPCASE(c)='S');
UNTIL UPCASE(c)='N';
END;



PROCEDURE visualizar1(CONST registro_piezas:registro1;long1 : integer);

	VAR
 i : integer;

	BEGIN
		FOR i := 1 TO long1 DO 
BEGIN
	Writeln('> PIEZA ',i);
			Writeln('     Cod_Pieza: ', registro_piezas[i].cod_pieza);
		            Writeln('     Denominacion: ', registro_piezas[i].denominacion);
			Writeln('     Stock_Actual: ', registro_piezas[i].stock_actual);
                                    Writeln('     Valor Unitario: ', registro_piezas[i].valor_unitario:3:2);
                        END;
	END;





PROCEDURE visualizar2(CONST registro_piezas:registro2;long2:integer);

	VAR
 i : integer;

	BEGIN
		FOR i := 1 TO long2 DO
BEGIN
	Writeln('> PIEZA ',i);
			Writeln ('Numero de pedido: ', registro_piezas[i].num_pedido);
Writeln('Cod_Pieza: ', registro_piezas[i].cod_pieza);
			Writeln('Piezas pedidas: ', registro_piezas[i].piezas_pedidas);
		END;
END;


//PROGRAMA PRINCIPAL

BEGIN
long1:=0;
long2:=0;
REPEAT
     CLSCR
     CASE opcion OF
          1:BEGIN END;
          2:BEGIN END;
          3:BEGIN END;
          4:BEGIN END;
UNTIL opcion=5

readln;

END.

long1:=0;
long2:=0;
anadir_pieza(r1,long1);
WRITELN(long1);
visualizar1(r1,long1);

readln()
