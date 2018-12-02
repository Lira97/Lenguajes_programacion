suma([],0):-!.
suma([X],X):-!.
suma([X|L],S):-suma(L,S1),S is X+S1.

elementos([],0):-!.
elementos([_],1):-!.
elementos([_|L],C):-elementos(L,C1),C is C1+1.

promedio([X],X):-!.
promedio(L,P):-suma(L,S),elementos(L,C),P is S/C.

agrega([],Y,Y).
agrega([H|X],Y,[H|Z]):-agrega(X,Y,Z).
oredena(L,R):-oredena_i(L,[],R).
oredena_i([],A,A).
oredena_i([H|T],A,R):-insert(H,A,NA),oredena_i(T,NA,R).
insert(X,[Y|T],[Y|NT]):- X>Y,insert(X,T,NT).
insert(X,[Y|T],[X,Y|T]):- X=<Y.
insert(X,[],[X]).
une(L1, L2, NL) :-agrega(L1, L2, L12),oredena(L12, NL).
