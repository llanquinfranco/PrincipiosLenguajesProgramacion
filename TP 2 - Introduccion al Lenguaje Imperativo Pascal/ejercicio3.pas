{Dado el radio R de una esfera, calcular e imprimir su superficie y su volumen. 
Utilice un solo procedimiento para realizar todos estos calculos}
PROGRAM ejercicio3;
    VAR r: integer; { Variables }
PROCEDURE calcular(r: integer);
    BEGIN
        writeln('Superficie de la esfera: ', 4 * PI * (r * r)); {4 π r 2}
        writeln('Volumen de la esfera: ', (4 / 3) * PI * (r * r * r)); {4/3 π r³}
    END;
BEGIN { Inicia el programa principal }
    write ('Escriba el radio R de una esfera: ');
    read(r);
    calcular(r);
END. { Finaliza el programa principal }