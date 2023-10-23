function[aprox,error,n]=NewtonRaphson()
syms x
f = input('Ingrese la función en base x: ')
a = input('Ingrese el valor de a: ')
prec = input('Ingrese la precision : ')
itermax = input('Ingrese el valor maximo de iteraciones: ')

% Calculamos f(xi)
fa=subs(f,'x',a);
df_dx = diff(f, x); 
% Calculamos f'(xi)
df_dx_a =subs(df_dx,'x',a);
aprox(1)=a-fa/df_dx_a

for n = 2:itermax
    a=aprox(n-1)
    fa=subs(f,'x',a);
    df_dx_a =subs(df_dx,'x',a);
    aprox(n)=a-fa/df_dx_a
    error(n) = abs(aprox(n)-aprox(n - 1));
    if error(n) < prec
        break
    end
end    
aprox = vpa(aprox);
error = vpa (error);
end