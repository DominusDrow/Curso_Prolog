
%se utiliza la definicion inductiva
%1)se cumple para el primer elemento  2)se cumple para el resto de elementos


%decimos que 1 es natural (es el primer elemento de los naturales)
natural(1).

%decimos que si se cumple para (N-1) -> se cumpre para N
natural(N) :- number(N), N>1, N2 is N-1, natural(N2).



%en prolog a -> b se escribe b:-a

