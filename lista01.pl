% Exercicio1
analisa_lista([])  :- write('Lista vazia!'), nl.
analisa_lista([H|T]) :-
    write('A cabeça da lista é: '), write(A), nl,
    write('A cauda da lista é: '), write(B), nl.

% Exercicio2
pertence(X, [X|_]).
pertence(X, [_|Y]) :- pertence(X, Y).

remove_duplicados([], []).
remove_duplicados([A|B], C) :-
    pertence(A, B),
    remove_duplicados(B, C).

% Exercicio 3
troca_argumentos([],_,_,[]).
troca_argumentos([A|C], A, X,[X|D]) :- troca_argumentos(C,A,X,D).
troca_argumentos([B|C], A, X, [B|D]) :- troca_argumentos(C,A,X,D).

% Exercicio 4
% O conjunto potência de uma lista vazia é uma lista contendo a lista vazia
potencia([], [[]]).

% Para cada subconjunto gerado da cauda, adiciona o elemento da cabeça
potencia([H|T], P) :-
    potencia(T, PT),
    adiciona(H, PT, PComH),
    append(PT, PComH, P).

% adiciona(Elemento, ListaDeSubconjuntos, NovosSubconjuntosComElemento)
adiciona(_, [], []).
adiciona(X, [Sub|Subs], [[X|Sub]|Resto]) :-
    adiciona(X, Subs, Resto).


% Exercicio 5
mais_longa([], [_|_]).
mais_longa([_|A], [_|B]) :- mais_longa(A, B).


% Exercicio 6
distancia((X1,Y1), (X2,Y2), D) :-
    DX is X2 - X1,
    DY is Y2 - Y1,
    D is sqrt(DX*DX + DY*DY).


% Exercicio 8
nesimo([A|_], 1, A).
nesimo([_|Y], N, X) :- N > 1, N1 is N - 1, nesimo(Y, N1, X).


% Exercicio 9
media([], 0) :- !.

% Predicado principal
media(Lista, Media) :-
    soma_e_conta(Lista, Soma, Contador),
    Media is Soma / Contador.

% soma_e_conta(Lista, Soma, Contador) - retorna soma e número de elementos
soma_e_conta([], 0, 0).
soma_e_conta([H|T], Soma, Contador) :-
    soma_e_conta(T, Soma1, Contador1),
    Soma is Soma1 + H,
    Contador is Contador1 + 1.
