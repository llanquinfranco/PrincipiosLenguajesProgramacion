% Suma
suma(0, Y, Y).
suma(succ(X), Y, succ(R)) :- suma(X, Y, R).

% Resta
resta(X, 0, X).
resta(s(X), s(Y), R) :- resta(X, Y, R).

% Multiplicacion
multi(_, 0, 0).
multi(X, s(0), X).
multi(X, s(Y), R) :- multi(X, Y, T), suma(X, T, R).