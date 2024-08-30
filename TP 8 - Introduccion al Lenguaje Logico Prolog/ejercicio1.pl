% Progenitores
progenitor(cecilia,gabriel).
progenitor(jorge,carlos).
progenitor(juan, ana).
progenitor(maria, ana).
progenitor(pedro,pablo).
progenitor(maria,pablo).
progenitor(juan,luis).
progenitor(maria,luis).
progenitor(pedro,luciano).
progenitor(laura,luciano).
progenitor(laura,ariel).
progenitor(pedro,ariel).
progenitor(tomas,pedro).
progenitor(jose,juan).
progenitor(daniel,laura).
progenitor(andrea,laura).
progenitor(eugenia,maria).
progenitor(martin,maria).
progenitor(eugenia,rodolfo).
progenitor(martin,rodolfo).
progenitor(eugenia,sandra).
progenitor(martin,sandra).
progenitor(rodolfo,damian).
progenitor(claudia,damian).
progenitor(norma,andrea).
progenitor(carlos,andrea).
progenitor(norma,cecilia).
progenitor(carlos,cecilia).
progenitor(javier,gabriel).
progenitor(silvia,carlos).

% Femeninos
femenino(nela). % t amo<3
femenino(ana).
femenino(maria).
femenino(laura).
femenino(eugenia).
femenino(andrea).
femenino(sandra).
femenino(claudia).
femenino(norma).
femenino(cecilia).
femenino(silvia).

% Masculinos
masculino(fran).
masculino(juan).
masculino(pedro).
masculino(ariel).
masculino(luciano).
masculino(luis).
masculino(pablo).
masculino(tomas).
masculino(jose).
masculino(jorge).
masculino(javier).
masculino(gabriel).
masculino(carlos).
masculino(damian).
masculino(rodolfo).
masculino(martin).
masculino(daniel).

% Inciso a)
padre(X, Y) :- progenitor(X, Y), masculino(X).
madre(X, Y) :- progenitor(X, Y), femenino(X).
hermano(X, Y) :- progenitor(P, X), progenitor(P, Y), X \= Y.
abuelo(X, Z) :- progenitor(X, Y), progenitor(Y, Z).
bisabuelo(X, W) :- progenitor(X, Y), progenitor(Y, Z), progenitor(Z, W).
tio(X, Y) :- hermano(X, P), progenitor(P, Y).
primo(X, Y) :- progenitor(P, X), tio(P, Y). 
% Ancestro (Recursivo)
ancestro(X, Y) :- progenitor(X, Y).
ancestro(X, Y) :- progenitor(X, H), ancestro(H, Y).

% Inciso b)
casado(nela, fran).
casado(juan, maria).
casado(eugenia, martin).
casado(daniel, andrea).
casado(cecilia,javier).
casado(pedro, laura).
casado(rodolfo, claudia).
casado(norma,carlos).

% Inciso c)
soltero(X) :- (masculino(X); femenino(X)), not(casado(X, _); casado(_, X)).
amante(X, Y) :- progenitor(X, H), progenitor(Y, H), not(casado(X, Y); casado(Y, X)), X \= Y.
suegra(X, Y) :- progenitor(X, H), (casado(H, Y); casado(Y, H)), femenino(X).
suegro(X, Y) :- progenitor(X, H), (casado(H, Y); casado(Y, H)), masculino(X).