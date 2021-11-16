soma([], 0.0).
soma([X | L], S) :- soma(L, S1), S is X+S1.

nelementos([],0).
nelementos([_|T],N) :- nelementos(T,X), N is (X+1).

medio([],0).
medio(X,M) :- soma(X,S), nelementos(X,N), M is S/N.