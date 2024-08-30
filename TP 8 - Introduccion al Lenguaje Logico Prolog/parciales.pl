% Parcial 2019
/* Defina un predicado llamado elemento(K,L,S) donde S es la suma de 
los elementos de la lista L hasta llegar a la posicion K */
elemento(0, L, 0).
elemento(K, [H| L], S) :- K1 is K - 1, elemento(K1, L, S1), S is S1 + H.  

% Parcial 2023
/* Definir el predicado generar(LI, LS, L), donde L es la lista de listas.
Los elementos de L son una lista conformada por 2 elementos, en donde el segundo
elemento es el doble del primero. Los primeros elementos de cada sublista son
los numeros naturales que comienza en LI y va incrementandose hasta llegar a LS */
generar(LS, LS, [[LS, D]]) :- D is LS * 2.
generar(LI, LS, [[LI, D]| L]) :- LI2 is LI + 1, generar(LI2, LS, L), D is LI * 2.

/* Definir el predicado sumar(L, L1) donde L es una lista de listas
y L1 es una lista de cuyos elementos es la suma de la lista en la posicion
correspondiente. Por ejemplo, si L = [[1,2,3],[4]], L1 = [[6],[4]] */
sumar([], []).
sumar([E| L], [[R]| L1]) :- sumaLista(E, R), sumar(L, L1).

sumaLista([], 0).
sumaLista([H| L], R) :- sumaLista(L, R1), R is R1 + H.

% Universidad de Catalunya UPC ¿?
/* 1) Escribe un predicado prod(L,P) que signifique: "P es el producto de los elementos de 
la lista de enteros dada L". Debe poder generar la P y tambien comprobar una P dada */
prod([], 0).
prod([E], E).
prod([E| L], P) :- prod(L, P1), P is P1 * E.

/* 2) Escribe un predicado pEscalar(L1,L2,P) que signifique: "P es el producto escalar de
los vectores L1 y L2", donde los vectores se representan como listas de enteros. El 
predicado debe fallar si los dos vectores tienen longitudes distintas */
pEscalar([], [], 0).
pEscalar([E1| V1], [E2| V2], P) :- pEscalar(V1, V2, R), P is R + (E1 * E2).

% Parcial 2017
% Definir la relacion lista(N,L) que verifique si L es la lista de longitud N cuyos elementos son N
lista(0, []).
lista(N, L) :- buscar(N, N, L).

buscar(N, 0, []).
buscar(N, I, [N|L1]) :- I2 is I - 1, buscar(N, I2, L1).

% Parcial 2022
/* Escribe un predicado cuantoN(L,R) que dada una lista de enteros L, escriba la
lista R tal que cada elemento de L, cree una lista de cada elemento y cuantas
veces aparece este elem en L */
cuantoN([], []).
cuantoN([E| L], R) :- armar([E| L], R).

armar([], []).
armar([E| L1], [[E,N]| R]) :- contar(E, L1, N), borrar(E, L1, L2), armar(L2, R).

borrar(E, [], []).
borrar(E, [E| L1], L2) :- borrar(E, L1, L2).
borrar(E, [H| L1], [H| L2]) :- borrar(E, L1, L2).

contar(E, [], 1).
contar(E, [E| L], R) :- contar(E, L, R1), R is R1 + 1.
contar(E, [H| L], R) :- contar(E, L, R).