% Inciso a) concatenacion
concatenacion([], L, L).
concatenacion([H|L1], L2, [H|L3]) :- concatenacion(L1, L2, L3).

% Inciso b) pertenencia de un elemento
pertenece(E, [E| _]).
pertenece(E, [_| L]) :- pertenece(E, L).

% Inciso c) cantidad de ocurrencias de un elemento
cantOcurrencias(E, [], 0).
cantOcurrencias(E, [E| L], R) :- cantOcurrencias(E, L, R1), R is R1 + 1.
cantOcurrencias(E, [_| L], R) :- cantOcurrencias(E, L, R).

% Inciso d) eliminación de la primera ocurrencia de un elemento
elimina(H, [R, H|L1], [R|L1]).
elimina(H, [H|L1], L2) :- elimina(H, L1, L2).
elimina(H, [R, T|L1], [R, T|L2]) :- elimina(H, [T|L1], [T|L2]).

% Inciso e) sustitución de la primera ocurrencia de un elemento por otro
sustitucion(H, E, [R, H|L1], [R, E|L1]).
sustitucion(H, E, [R, T|L1], [R, T|L2]) :- sustitucion(H, E, [T|L1], [T|L2]).

% Inciso f) longitud
longitud([], 0).
longitud([_| L], R) :- longitud(L, R1), R is R1 + 1.

% Inciso g) prefijo
prefijo([], L2).
prefijo([E| L1], [E| L2]) :- prefijo(L1, L2).