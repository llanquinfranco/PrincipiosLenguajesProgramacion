{Permita leer dos numeros (por teclado) y que imprima (con cartel y valores)
El producto y la division, utilizando procedimientos}
PROGRAM ejercicio2b;
    VAR a, b:integer; { Variables }
PROCEDURE producto(a: integer; b:integer);
    BEGIN
        writeln('A * B = ', a * b);
    END;
PROCEDURE division(a: integer; b:integer);
    BEGIN
        writeln('A / B = ', a / b);
    END;
BEGIN { Inicia el programa principal }
    write ('Escriba un numero A: ');
    read(a);
    write ('Escriba un numero B: ');
    read(b);
    producto(a, b);
    division(a, b);
END. { Finaliza el programa principal }