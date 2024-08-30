% Inciso a) inclusión: A ⊆ B
inclusion([], L2).
inclusion([X| L1], L2) :- borrar(X, L2, R), inclusion(L1, R).

% Modulo que busca si un elemento pertenece a una lista y lo "borra"
borrar(X, [X| L1], L1).
borrar(X, [K| L1], [K| L2]) :- borrar(X, L1, L2).

% Inciso b) igualdad: (A ⊆ B) ∧ (B ⊆ A)
igualdad(L1, L2) :- inclusion(L1, L2), inclusion(L2, L1).

% Inciso c) unión: A ∪ B
union(L1, L2, R) :- concatenacion(L1, L2, L3), eliminarRepetidos(L3, R).

eliminarRepetidos([], []).
eliminarRepetidos([E| L], [E| R1]) :- eliminarRepetidos(L, R), elimina(E, R, R1).

elimina(K, [], []).
elimina(K, [K| L1], L2) :- elimina(K , L1, L2).
elimina(K, [H| L1], [H| L2]) :- elimina(K , L1, L2).

concatenacion([], L, L).
concatenacion([H|L1], L2, [H|L3]) :- concatenacion(L1, L2, L3).

% Inciso d) intersección: A ∩ B
interseccion([], L2, []).
interseccion([E| L1], L2, [E| R]) :- pertenece(E, L2), interseccion(L1, L2, R).
interseccion([E| L1], L2, R) :- interseccion(L1, L2, R).

pertenece(E, [E|_]).
pertenece(E, [_|L]) :- pertenece(E, L).

% Inciso e) diferencia: A - B = A ∩ B'
interseccion([], L2, []).
interseccion([E| L1], L2, R) :- pertenece(E, L2), interseccion(L1, L2, R).
interseccion([E| L1], L2, [E| R]) :- interseccion(L1, L2, R).

pertenece(E, [E|_]).
pertenece(E, [_|L]) :- pertenece(E, L).