% Modulos necesarios
concatenacion([], L, L).
concatenacion([H|L1], L2, [H|L3]) :- concatenacion(L1, L2, L3).

pertenece(E, [E|_]).
pertenece(E, [_|L]) :- pertenece(E, L).

longitud([], 0).
longitud([_|L], R) :- longitud(L, R1), R is R1 + 1.

% Inciso a) rotación a la izquierda. Ej. entra [1,2,3,4] y sale [2,3,4,1]
rotacionIzquierda([H|L], R) :- concatenacion(L, [H], R).

% Inciso b) rotación a la derecha. Ej. entra [1,2,3,4] y sale [4,1,2,3]
rotacionDerecha(L, [H|R]) :- rotar(L, R, H).
rotar([H], [], H).
rotar([H|T], [H|T1], R) :- rotar(T, T1, R).

% Inciso c) eliminación de todas las ocurrencias de un elemento
elimina(K, [], []).
elimina(K, [K| L1], L2) :- elimina(K , L1, L2).
elimina(K, [H| L1], [H| L2]) :- elimina(K , L1, L2).

% Inciso d) sustitución de todas las ocurrencias de un elemento por otro
sustituir(_, _, [] ,[]).
sustituir(H, M, [H|L1], [M|L2]) :- sustituir(H, M, L1, L2).
sustituir(H, M, [K|L1], [K|L2]) :- sustituir(H, M, L1, L2).

% Inciso e) cardinalidad (cantidad de elementos no repetidos) Ej. entra [1,2,1,3,4] y sale 4
cardinalidad([], 0).                                            
cardinalidad([K| L1], R) :- elimina(K, L1, L2), cardinalidad(L2, R1), R is R1 + 1.

% Inciso f) inversión. Ej. entra [1,2,3,4] y sale [4,3,2,1]
inversion([], []).
inversion([H|L], R) :- inversion(L, R1), concatenacion(R1, [H], R).

% Inciso g) sufijo



/* Inciso h) generar a partir de una lista el palíndromo correpondiente. 
Por ejemplo, a partir de abcd se genera el palíndromo abcddcba */
palindromo(L1, R) :- inversion(L1, L2), concatenacion(L1, L2, R).

/* Inciso i) duplicar los elementos de una lista. 
Por ejemplo, el resultado de doblar [1,2,3] es [1,1,2,2,3,3] */
duplicar([], []).
duplicar([H|L1], [H, H|L2]) :- duplicar(L1, L2).