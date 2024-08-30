{Permita leer dos numeros (por teclado) y que imprima (con cartel y valores)
La suma y resta de ambos numeros, utilizando para ello sendas funciones}
PROGRAM ejercicio2a;
    VAR a, b:integer; { Variables }
FUNCTION suma(a: integer; b:integer): integer;
    BEGIN
        suma := a + b;
    END;
FUNCTION resta(a: integer; b:integer): integer;
    BEGIN
        resta := a - b;
    END;
BEGIN { Inicia el programa principal }
    write ('Escriba un numero A: ');
    read(a);
    write ('Escriba un numero B: ');
    read(b);
    writeln('A + B = ', suma(a, b));
    writeln('A - B = ', resta(a, b));
END. { Finaliza el programa principal }