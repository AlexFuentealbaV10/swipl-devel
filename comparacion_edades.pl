% --- HECHOS: reutilizamos las edades de los familiares ---
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

% --- REGLAS: Comparación entre edades ---

% X es mayor que Y si su edad es mayor
mayor(X, Y) :- edad(X, EX), edad(Y, EY), EX > EY.

% X es menor que Y si su edad es menor
menor(X, Y) :- edad(X, EX), edad(Y, EY), EX < EY.

% X y Y tienen la misma edad
misma_edad(X, Y) :- edad(X, E), edad(Y, E), X \= Y.
-
