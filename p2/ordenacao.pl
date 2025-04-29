
% inserção ordenada (lista já está ordenada!)
insereord(X,[Y|T],(X,Y|T)) :- X =< Y, !.
insereord(X,[Y|L],[Y|Lo]) :- insereord(X,L,Lo).
insereord(X,[],[X]). 
