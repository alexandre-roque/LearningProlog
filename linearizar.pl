concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).

linearizar([Pr|[]],Pr).
linearizar([Pr|[Se|Lis]],Fim):- concatenar(Pr,Se,Aux), linearizar([Aux|Lis],Fim).