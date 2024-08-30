{ Escribir un algoritmo para verificar si N es divisible por M }
PROGRAM ejercicio5b;
    VAR n, m: integer; { Variables }
PROCEDURE esDivisible(n, m: integer);
    BEGIN
        IF (n mod m) = 0 THEN 
            write('El numero ', n, ' es divisible por ', m)
        ELSE 
            write('El numero ', n, ' NO es divisible por ', m)
    END;
BEGIN { Inicia el programa principal }
    write('Ingrese un numero N: ');
    read(n);
    write('Ingrese un numero M: ');
    read(m);
    esDivisible(n, m);
END. { Finaliza el programa principal }