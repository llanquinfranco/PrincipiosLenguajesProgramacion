% Pila de bloques [a,b,c,d,e,f,g,h], donde a es el tope de la pila / Coleccion de Hechos
on(a, b).
on(b, c).
on(c, d).
on(d, e).
on(e, f).
on(f, g).
on(g, h).

/* arriba(bloque1, bloque2) devuelve verdadero si Bloque1 está en la 
pila sobre el Bloque2, ya sea directamente o indirectamente */
arriba(X, Y) :- on(X, Y).
arriba(X, Y) :- on(X, S), arriba(S, Y).