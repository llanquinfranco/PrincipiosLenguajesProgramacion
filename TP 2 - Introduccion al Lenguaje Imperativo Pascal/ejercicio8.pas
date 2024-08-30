{ A partir de un procedimiento denominado intercambio(x,y), intercambie sus valores }
PROGRAM ejercicio8;
    VAR a, b: integer; { Variables }
PROCEDURE intercambio(x, y:integer);
    VAR aux : integer;
    BEGIN
        writeln('Numero A antes del intercambio: ', x);
        writeln('Numero B antes del intercambio: ', y);
        aux := x;
        x := y;
        y := aux;
        writeln('Numero A despues del intercambio: ', x);
        writeln('Numero B despues del intercambio: ', y);
    END;
BEGIN { Inicia el programa principal }
    write('Ingrese un numero A: ');
    read(a);
    write('Ingrese un numero B: ');
    read(b);
    intercambio(a, b);
END. { Finaliza el programa principal }