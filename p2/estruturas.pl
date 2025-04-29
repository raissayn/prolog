empilha (A,B,[A|B]). % [A|B] é o resultado de empilhar A no topo da pilha B.
desempilha(A,[A|B],B) % resultado: restante da pilha após remover o topo / remove topo, último que entrou 

insereFila(A,F,Fs) :- append(F,[A],Fs). % append(F, [A], Fs) concatena a fila original F com a lista [A] no final. Enfileira: elemento é colocado no fim da fila.
retiraFila(A,[A|F],F) % retira primeiro elemento que entrou 

% representação de árvore em Prolog
no(a,b,c).
no(b,d,nada).
no(d,nada,nada).
no(c,e,f).
no(e,nada,g).
no(f,nada,nada).
no(g,nada,nada).

% pre ordem
pre(nada) :- !.
pre(X) :- write(X), write(" "), no(X,E,D), pre(E), pre(D).

% em ordem 
em(nada) :- !.
em(X) :- no(X,E,D), em(E), write(X), write(" "), em(D).

% pos ordem
pos(nada) :- !.
pos(X) :- no(X,E,D), pos(E), pos(D), write(X), write(" ").

% outra forma de representação de árvore em Prolog
insere(X,vazia, no(X,vazia,vazia)) :- !.
insere(X,no(X,E,D), no(X,E,D)) :- !.
insere(X,no(I,E,D), no(I,Es,D)) :- X < I, !, insere(X,E,Es).
insere(X,no(I,E,D), no(I,E,Ds)) :- insere (X,D,Ds).

preordem(vazia) :- !.
preordem(no(I,E,D)) :- write(I), write(" "), preordem(E), preordem(D).

insLista([],vazia).
insLista([A|B],T,Ts) :- insere(A,T,T1), insLista(B,T1,Ts).

