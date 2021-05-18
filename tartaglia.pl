%programa que imprime las primeras N filas del triangulo de tartaglia
%autor;Vasquez Lopez Alfredo Omar 


%predicado principal para ejecutar el programa
tartaglia:-write('Ingrese N:'),read(N),triangulo(N,_).

%caso base para un triangulo de una fila
triangulo(1, [[1]]) :- write('\n1\n').

%caso inductivo para un triangulo N>1
triangulo(N, [F, F1 | FN]) :-
    N1 is N-1,
    triangulo(N1, [F1 | FN]),
    sig_fila([0|F1], F),
    nl.

%caso base para la fila siguiente
sig_fila([E],[E]):-write(E).

%caso inductivo para la fila siguiente
sig_fila([E,E2|T],[A|B]):-
    sig_fila([E2|T],B),
    A is E + E2, 
    write(A).
