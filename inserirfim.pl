inserirfim(Ele,[],[Ele]).
inserirfim(Ele,[Pr|Lis],[Pr|Fim]) :- inserirfim(Ele,Lis,Fim).