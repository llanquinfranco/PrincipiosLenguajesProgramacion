{ Imprimir por pantalla una lista de 20 numeros consecutivos, 
los cuales comienzan con un numero ingresado por teclado }
PROGRAM ejercicio7;
    VAR numero, contador: integer; { Variables }
BEGIN { Inicia el programa principal }
    write('Ingrese un numero: ');
    read(numero);
    writeln('Lista de numeros consecutivos:');
    FOR contador := 1 TO 20 DO
    BEGIN
        writeln(numero);
        numero := numero + 1;
    END;
END. { Finaliza el programa principal }