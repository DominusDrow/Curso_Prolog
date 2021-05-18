%programa que calcula y simplifica derivadas de forma simbólica
%autor;Vasquez Lopez Alfredo Omar 


%predicado principal para ejecutar el programa
derivar :- write('Ingrese la fucnion a derivar f(x)= '),read(F),derivar(F,x,DX),nl,write('f\'(x)= '),write(DX).

%caso base derivar un numero
derivar(X,_,0):- number(X). 

%caso base derivar una variable
derivar(X,X,1).

%caso base derivar un exponente
derivar(X^N,X,N*X^NN) :- N>0, NN is N-1.

%caso inductivo derivar una suma 
derivar(U+V,X,DU+DV) :- derivar(U,X,DU) , derivar(V,X,DV).

%caso inductivo derivar una multiplicacion 
derivar(U*V,X,U*DV) :- number(U), derivar(V,X,DV).
derivar(U*V,X,V*DU) :- number(V), derivar(U,X,DU).
derivar(U*V,X,U*DV+DU*V) :- not(number(U)), not(number(V)), derivar(U,X,DU), derivar(V,X,DV).


