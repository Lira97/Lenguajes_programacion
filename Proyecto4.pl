rev([],L,L).%hasta que la segundo no sea igual a la primera
rev([X|L],L2,L3) :- rev(L,[X|L2],L3).%llenamos la lista con el cdr de la primera lista
reversa(L1,L2) :- rev(L1,[],L2).%agregamos una lista vacia
palindroma(L) :- reversa(L,L).%duplicamos la lista

longitud([],0). %caso base cuando la lista es o regresa un 0
longitud([_|X],R) :- longitud(X,R1),R is R1+1.%sumano uno para ver la longitud de la lista
longitudPar(L) :- longitud(L,R),0 is R mod 2.%sacamos la modularidad del la longitud

esPermutacion(L1,L2):-longitud(L1,R1),longitud(L2,R2),esPermutacionR(L1,L2,R1,R2).%Se valida el tamaño de las dos listas
esPermutacionR([],_,A,B):-A=B,!.
esPermutacionR([L1|LR],L2,R1,R2):-R1=R2, esPermutacionR(LR,L2,R1,R2), miembro(L1,L2). %Si el tamaño se igual y la lista1 es diferente de vacío
miembro(A,[A|_]).% Caso base del miembro
miembro(A,[_|X]) :- miembro(A,X). % hacemos crd de la lista 
