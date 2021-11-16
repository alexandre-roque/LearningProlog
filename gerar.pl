gerar(E,E,[E]).
gerar(A,B,[A|X]) :- N is (A+1), gerar(N,B,X).