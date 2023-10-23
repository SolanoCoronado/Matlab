function[aprox, error, n] = serietaylor()
syms x
f = input('Ingrese la función en base x: ')
x = input('Ingrese el valor de x: ')
a = input('Ingrese el valor de a: ')
prec = input('Ingrese la precision : ')
itermax = input('Ingrese el valor maximo de iteraciones: ')

n = 0;
fna = subs(f,"x",a);
xa=x - a;
an = fna*(xa)^n/factorial(n);
aprox = an;
error = prec + 1;

while error > prec && n < itermax
    n = n + 1;
    fn = diff(f,"x",n);
    fna = subs(fn,"x",a);
    an = fna*(xa)^n/factorial(n);
    aproxant = aprox;
    aprox = aprox + an;
    error = abs(aprox - aproxant);
end
aprox = vpa(aprox);
error= vpa(error);
end

