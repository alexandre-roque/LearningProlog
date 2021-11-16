pai(domingos, sonia).
pai(domingos, sandro).
pai(domingos, sergio).
mae(maria, sonia).
mae(maria, sandro).
mae(maria, sergio).
pai(ernandesAvo, ernandes).
pai(ernandesAvo, reginaAmelia).
pai(ernandesAvo, joseRoberto).
pai(ernandesAvo, magali).
pai(ernandesAvo, marcio).
pai(ernandesAvo, zePequeno).
pai(ernandesAvo, reginaCelia).
pai(ernandesAvo, luiz).
pai(ernandesAvo, auxiliadora).
mae(cirene, ernandes).
mae(cirene, reginaAmelia).
mae(cirene, joseRoberto).
mae(cirene, magali).
mae(cirene, marcio).
mae(cirene, zePequeno).
mae(cirene, reginaCelia).
mae(cirene, luiz).
mae(cirene, auxiliadora).
pai(ernandes, alexandre).
pai(ernandes, ana).
pai(ernandes, andrea).
mae(sonia, alexandre).
mae(sonia, ana).
mae(sonia, andrea).
familia(X, P) :-    pai(X, P), 
                    mae(X, P).
avo(X, P)      :-   familia(R, P), 
                    familia(X, R).
irmao(X, P)  :- pai(R, X), 
                pai(R, P), 
                mae(M, X), 
                mae(M, P), 
                X\=P.
tio(X, P) :-    familia(F, P), 
                irmao(F, X).

avos(X, R)     :- findall(Y, avo(Y, X), R).
pais(X, R)      :- findall(Y, familia(Y, X), R).
irmaos(X, R)  :- findall(Y, irmao(Y, X), R).
tios(X, R)       :- findall(Y, tio(Y, X), R).
