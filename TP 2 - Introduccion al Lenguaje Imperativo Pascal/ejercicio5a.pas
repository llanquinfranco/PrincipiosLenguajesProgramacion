{ Escribir un algoritmo que determine si un numero es par }
PROGRAM ejercicio5a;
    VAR numero: integer; { Variables }
PROCEDURE esPar(a: integer);
    BEGIN
        IF (a mod 2) = 0 THEN 
            write('El numero ', a, ' es PAR')
        ELSE 
            write('El numero ', a, ' es IMPAR')
    END;
BEGIN { Inicia el programa principal }
    write('Ingrese un numero: ');
    read(numero);
    esPar(numero);
END. { Finaliza el programa principal }