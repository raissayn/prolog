
% inserção ordenada (lista já está ordenada!)
insereord(X,[Y|T],(X,Y|T)) :- X =< Y, !.
insereord(X,[Y|L],[Y|Lo]) :- insereord(X,L,Lo).
insereord(X,[],[X]). 

ordenaInsere([A|B], L) :- ordenaInsere(B, Li), insereird(A.Li,L).
ordenaInsere([],[]).

apaga(X,[X|Y],Y) :- !.
apaga(X,[Y|Z],[Y|Zs]) :- apaga(X,Z,Zs).

min(X,[X]) :- !.
min(X,[X|Y]) :- min(N,Y), X < N, !.
min(X,[_|Y]) :- min(X,Y).

removeMin(M,L,Lo) :- min(M,L), apaga(M,L,Lo).

ordenaSelecao(L,[M|S]) :- removeMin(M,L,Lo), ordenaSelecao(Lo,S).
ordenaSelecao([],[]).