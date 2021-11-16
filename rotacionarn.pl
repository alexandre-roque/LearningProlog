concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

remover([],F,F).
remover(X, [X|T], T).
remover(X, [Y|T], [Y|NT]) :- X \== Y, remover(X, T, NT).

pegaDiferentes([],F,F).
pegaDiferentes([A|Lis1],Lis2,Fim):- remover(A,Lis2,Aux),pegaDiferentes(Lis1,Aux,Fim).


removerI(0,L,L).
removerI(_,[],[]).
removerI(Q,[Pr|Lis],Fim):- (Q > 0 -> removerI(Q-1,Lis,Fim); concatenar([Pr],Lis,Fim)).


rotacionarn(_,[],[]).
rotacionarn(N,Lis,Fim):- removerI(N,Lis,Aux), pegaDiferentes(Aux,Lis,Aux2), concatenar(Aux,Aux2,Fim).