compactar([],[]).
compactar([VAR],[[1,VAR]]).
compactar([VAR,VAR|A], [[B,VAR]|L]) :- compactar([VAR|A], [[X, VAR]|L]), B is (X+1).
compactar([VAR,VER|A], [[1, VAR], [X, VER]|L]) :- compactar([VER|A], [[X, VER]|L]), (VAR \== VER).