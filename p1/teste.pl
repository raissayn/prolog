maximo(A,[A]).
maximo(A,[A|B]) :- maximo(C,B), A > C.
maximo(C,[A|B]) :- maximo(C,B), C >= A.

comp(1,[A]).
comp(X, [_|B]) :- comp(X1, B), X is X1 + 1;

nesimo(1,[A|_],A).
nesimo(N,[A|B],X) :- N1 -1, nesimo(N1, B, X)

