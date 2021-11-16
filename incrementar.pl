incrementar([],[]).
incrementar([I|J], [K|L]) :- incrementar(J,L), K is (I+1).