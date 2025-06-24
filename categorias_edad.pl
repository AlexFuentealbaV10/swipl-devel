% --- HECHOS: edades de los familiares ---
edad(matias, 5).
edad(oscar, 2).
edad(marcelo, 15).
edad(roberto, 95).
edad(isabel, 67).
edad(elias, 4).
edad(amalia, 70).
edad(tiziana, 2).
edad(sara, 34).
edad(ana, 65).
edad(martin, 20).
edad(andrea, 28).

% --- REGLAS: Clasificación por edad según Taxonomía de la madre de Matías ---

% Bebe: 0 a 2 años inclusive
bebe(X) :- edad(X, Y), Y =< 2.

% Niño: 3 a 9 años
nino(X) :- edad(X, Y), Y >= 3, Y =< 9.

% Adolescente: 10 a 20 años
adolescente(X) :- edad(X, Y), Y >= 10, Y =< 20.

% Adulto: 21 a 69 años
adulto(X) :- edad(X, Y), Y >= 21, Y =< 69.

% Anciano: 70 años en adelante
anciano(X) :- edad(X, Y), Y >= 70.
