{Leer un numero real y mostrar si es mayor, menor, o igual a cero, utilizando 
una funcion “mayor” que debe implementar}
PROGRAM ejercicio4;
    VAR a: Real; { Variables }
FUNCTION mayor(a: Real): string;
    BEGIN
        IF a > 0 THEN 
            mayor := 'El numero es MAYOR a 0'
        ELSE IF a = 0 THEN 
            mayor := 'El numero es IGUAL a 0'
        ELSE 
            mayor := 'El numero es MENOR a 0'
    END;
BEGIN { Inicia el programa principal }
    write('Ingrese un numero: ');
    read(a);
    write(mayor(a));
END. { Finaliza el programa principal }