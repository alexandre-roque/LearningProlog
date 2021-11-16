adjacente(E1,E2,[E1,E2|_]).
adjacente(E1,E2,[Pr|Lis]):- Pr\==E1,adjacente(E1,E2,Lis).