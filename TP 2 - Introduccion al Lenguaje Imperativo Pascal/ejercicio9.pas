{ Leer una serie de numeros reales, terminando la serie con un cero. A continuacion debe
imprimir los datos a medida que se los ingresa junto con la suma parcial de los mismos }
PROGRAM ejercicio9;
    VAR numero, sumaParcial: real;
BEGIN
    write('Ingrese un numero: ');
    read(numero);
    WHILE numero <> 0 DO
    BEGIN
        sumaParcial := sumaParcial + numero;
        writeln('Suma Parcial: ', sumaParcial);
        write('Ingrese otro numero: ');
        read(numero);
    END;
    write('Suma Final: ', sumaParcial);
END.