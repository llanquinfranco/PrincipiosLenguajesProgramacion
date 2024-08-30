{ A partir de una funcion denominada expo, con los parametros x y n devuelva
el valor de x elevado a la n, donde x es un numero real y n entero. }
PROGRAM ejercicio11;
    VAR x: real; n: integer;
FUNCTION expo(x: real; n: integer): real;
    VAR i: integer; resultado: real;
    BEGIN
        resultado := 1;
        FOR i := 1 TO n DO
        BEGIN
            resultado := resultado * x;
        END;
        expo := resultado;
    END;
BEGIN
    write('Ingrese la base X: ');
    read(x);
    write('Ingrese el exponente N: ');
    read(n);
    write('X elevado a la N = ', expo(x, n));
END.