concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

reverter([],[]).
reverter([Pr|Lis],Fim):- reverter(Lis,Lis2),concatenar(Lis2,[Pr],Fim).