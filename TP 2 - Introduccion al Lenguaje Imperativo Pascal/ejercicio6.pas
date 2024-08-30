{ Escriba un programa que lea dos numeros y luego permita introducir una opcion,
que puede ser “suma”, “resta”, “multiplicacion” o “division”. A partir de estas 
entradas, segun la opcion elegida realizar el calculo }
PROGRAM ejercicio6;
    VAR a, b: integer; opcion: string;
PROCEDURE suma(a, b: integer);
    BEGIN
        writeln('A + B = ', a + b);
    END;
PROCEDURE resta(a, b: integer);
    BEGIN
        writeln('A - B = ', a - b);
    END;
PROCEDURE producto(a, b: integer);
    BEGIN
        writeln('A * B = ', a * b);
    END;
PROCEDURE division(a, b: integer);
    BEGIN
        writeln('A / B = ', a / b);
    END;
BEGIN
    write('Ingrese un numero A: ');
    readln(a);
    write('Ingrese un numero B: ');
    readln(b);
    writeln('Ingrese una de las siguientes opciones:');
    writeln('suma, resta, multiplicacion, division');
    readln(opcion);
    CASE opcion OF
        'suma': suma(a, b);
        'resta': resta(a, b);
        'multiplicacion': producto(a, b);
        'division': division(a, b);
    ELSE
        write('Opcion incorrecta');
    END;
END.





