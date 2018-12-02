liga(fortran,algol60).
liga(algol60,cpl).
liga(cpl,bcpl).
liga(bcpl,c).
liga(c,cmasmas).
liga(simula67,cmasmas).
liga(algol60,simula67).
liga(simula67,smalltalk80).

ruta(L,L).
ruta(L,X):-liga(L,F),ruta(F,X).

fact(0,1).
fact(N,F):-N1 is N-1,fact(N1,F1),F is N * F1.

agrega([],Y,Y).
agrega([H|X],Y,[H|Z]):-agrega(X,Y,Z).

potencia(A,1,A).
potencia(A,B,R):-B>1,B1 is B-1,potencia(A,B1,R1),R is A * R1.

longitud([],0).
longitud([_|X],R) :- longitud(X,R1),R is R1+1.

miembro(A,[A|_]).
miembro(A,[_|X]) :- miembro(A,X).

construye(q(X,X)).
entrada(A,q(X,Y),q(X,Z)):- Y=[A|Z].
salida(A,q(X,Z),q(Y,Z)):- X=[A|Y].
enlace(q([],[])).

construyeN([]).
entradaN(A,X,Y):- agrega(X,[A],Y).
salidaN(A,X,Y):- X=[A|Y].

stack([]).
push(A,X,Y):- agrega([A],X,Y).
pop(A,[A|T],T).

stackL(q(X,X)).
pushL(A,q(X,Z),q([A|X],Z)).
popL(A,q(X,Z),q(Y,Z)):- X=[A|Y].


agregaL(q(L1,E1),q(L2,E2)q(L3,E3)):- E1=L2,L3=L1,E1=E2.
