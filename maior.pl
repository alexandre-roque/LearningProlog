maior([U],U).

maior([Pr|Lis],Ma):- maior(Lis,AuxM), (Pr < AuxM ->   Ma = AuxM ; Ma= Pr).