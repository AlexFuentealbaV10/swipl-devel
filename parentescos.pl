% --- HECHOS: relaciones familiares directas ---

padre(roberto, oscar).
padre(roberto, marcelo).
padre(marcelo, martin).
padre(marcelo, tiziana).
padre(martin, matias).

madre(isabel, oscar).
madre(isabel, marcelo).
madre(sara, martin).
madre(sara, tiziana).
madre(ana, matias).

esposa(isabel, roberto).
esposa(sara, marcelo).
esposa(ana, martin).

esposo(roberto, isabel).
esposo(marcelo, sara).
esposo(martin, ana).

% --- REGLAS: parentescos familiares extendidos ---

% hijo(X,Y): X es hijo/a de Y
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

% hermano(X,Y): comparten al menos un padre o madre, y no son la misma persona
hermano(X, Y) :- padre(P, X), padre(P, Y), X \= Y.
hermano(X, Y) :- madre(M, X), madre(M, Y), X \= Y.

% abuelo(X,Y): X es abuelo de Y
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo(X, Y) :- padre(X, Z), madre(Z, Y).

% abuela(X,Y): X es abuela de Y
abuela(X, Y) :- madre(X, Z), madre(Z, Y).
abuela(X, Y) :- madre(X, Z), padre(Z, Y).

% nieto(X,Y): X es nieto/a de Y
nieto(X, Y) :- abuelo(Y, X).
nieto(X, Y) :- abuela(Y, X).

% bisabuelo(X,Y): X es bisabuelo de Y
bisabuelo(X, Y) :- abuelo(X, Z), padre(Z, Y).
bisabuelo(X, Y) :- abuelo(X, Z), madre(Z, Y).

% bisnieto(X,Y): X es bisnieto/a de Y
bisnieto(X, Y) :- bisabuelo(Y, X).

% tio(X,Y): X es hermano de padre/madre de Y
tio(X, Y) :- padre(P, Y), hermano(X, P).
tio(X, Y) :- madre(M, Y), hermano(X, M).

% sobrino(X,Y): X es hijo de hermano/a de Y
sobrino(X, Y) :- hijo(X, P), hermano(P, Y).

% primo(X,Y): comparten abuelos
primo(X, Y) :- abuelo(A, X), abuelo(A, Y), X \= Y.

% cuñado(X,Y): X es esposo de hermana de Y o hermano de esposa de Y
cuñado(X, Y) :- esposo(X, Z), hermano(Z, Y).
cuñada(X, Y) :- esposa(X, Z), hermano(Z, Y).
