nelementos([],0).
nelementos([_|T],N) :- nelementos(T,X), N is (X+1).