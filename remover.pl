remover(_,[],[]).
remover(E,[E|Lis],SemR):- remover(E,Lis,SemR).
remover(E,[E2|Lis], [E2|SemR]):-  E \== E2, remover(E, Lis, SemR).