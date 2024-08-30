{ Leer A y B, enteros. Calcular C = A × B 
mediante sumas sucesivas e imprimir el resultado }
PROGRAM ejercicio10;
    VAR a, b: integer;
PROCEDURE sumaSucesiva(a, b: integer);
    VAR c, i: integer;
    BEGIN
        FOR i := 1 TO b DO
        BEGIN
            c := c + a;
        END;
        write('A x B = ', c);
    END;
BEGIN
    write('Ingrese un numero A: ');
    read(a);
    write('Ingrese un numero B: ');
    read(b);
    sumaSucesiva(a, b);
END.