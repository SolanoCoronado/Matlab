function[aprox,error,n]=bsectionvec()
syms x
f = input('Ingrese la función en base x: ')
a = input('Ingrese el valor de a: ')
b = input('Ingrese el valor de b: ')
prec = input('Ingrese la precision : ')
itermax = input('Ingrese el valor maximo de iteraciones: ')

fa=subs(f,'x',a);
fb=subs(f,'x',b);
if fa*fb>0 %Diferente a la fórmula de la presentación para no acostumbrarse a las fórmulas
    disp('El intervalo no contiene una raiz')
    aprox = 'nd';
    error = 'nd';
    n = 'nd';
    return
end
    aprox(1) = (a + b)/2;
    fxn = subs(f,'x',aprox(1));
    
for n = 2:itermax
    if fa*fxn<0
        b=aprox(n - 1);
        fb=fxn;
    else 
        a=aprox(n - 1);
        fa=fxn;
    end
    aprox(n) = (a + b)/2;
    fxn = subs(f,'x',aprox(n));
    error(n) = abs(aprox(n)-aprox(n - 1));
    if error(n) < prec
        break
    end
end
aprox = vpa(aprox);
error = vpa (error);
end