/*MÁXIMO/2 que retorna o maior de uma lista de inteiros.*/
maximo(A, [A]).
maximo(A, [A|B]) :- maximo(C, B), A > C.
maximo(C, [A|B]) :- maximo(C, B), C >= A.


/*Comprimento/2 que calcula o comprimento de uma lista*/
comprimento(0,[ ]).
comprimento(N,[_|B]) :- comprimento(N1,B), N is N1 +1.

/*Nesimo/3 que encontra o nésimo valor de uma lista*/
nesimo(1,[A|_],A).
nesimo(N,[_|B],X) :-N1 is N-1, nesimo(N1,B,X).

/*Total/2 que calcula a soma dos valores de uma lista de inteiros*/
total([], 0).
total([A|B],T) :- total(B,S), T is A+S. 

/* permutação usando o predicado seleciona*/
seleciona(X, [X|Y], Y).
seleciona(X, [Y|Z], [Y|W]) :- seleciona(X, Z, W).

permuta(A, [B|D]) :- seleciona(B, A, C), permuta(C, D).
permuta([], []).