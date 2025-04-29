empilha (A,B,[A|B]). % [A|B] é o resultado de empilhar A no topo da pilha B.
desempilha(A,[A|B],B) % resultado: restante da pilha após remover o topo

insere(A,F,Fs) :- append(F,[A],Fs). % append(F, [A], Fs) concatena a fila original F com a lista [A] no final. Enfileira: elemento é colocado no fim da fila.
retira(A,[A|F],F) % ret