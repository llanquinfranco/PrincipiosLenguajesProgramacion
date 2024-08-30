{ Sabiendo que la relacion entre temperaturas Celsius (C) y Fahrenheit (F) esta dada
por la formula C = 5/9 × (F − 32), que un algoritmo muestre una tabla de equivalencia
entre grados Celsius y Fahrenheit, para valores entre O° F y 200° F , con intervalos de 10° }
PROGRAM ejercicio13;
    VAR f, i: integer;
FUNCTION calcular(f: integer): real;
    VAR c: real;
    BEGIN
        c := (5/9) * (f - 32);
        calcular := c;
    END;
BEGIN
    FOR i := 0 TO 20 DO
    BEGIN
        writeln((i * 10),'°F = ', calcular(i * 10), '°C');
    END;
END.