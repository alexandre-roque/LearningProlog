remover(X, [X|T], T).
remover(X, [Y|T], [Y|NT]) :- X \== Y, remover(X, T, NT).

concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

maior([U],U).
maior([Pr|Lis],Ma):- maior(Lis,AuxM), (Pr < AuxM ->   Ma = AuxM ; Ma= Pr).

ordenar([],[]).
ordenar([A],[A]).
ordenar(E,L) :- maior(E,M), remover(M,E,I), ordenar(I,A), concatenar(A,[M],L).