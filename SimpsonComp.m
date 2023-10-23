function [I] = SimpsonComp(f, a, b, n)
    % Definir la función f(x) como una variable simbólica
    syms x;   
    % Calcular el ancho del subintervalo h
    h = (b - a) / n;
    
    % Inicializar las sumas para términos pares e impares
    sum_pares = 0;
    sum_impares = 0;
    
    % Calcular las sumas por separado
    for i = 1:n-1
        xi = a + i * h;
        if mod(i, 2) == 0
            sum_pares = sum_pares + subs(f, "x", xi);
        else
            sum_impares = sum_impares + subs(f, "x", xi);
        end
    end
    
    % Aplicar la fórmula de Simpson 1/3
    I = (h / 3) * (subs(f, "x", a) + 4 * sum_impares + 2 * sum_pares + subs(f, "x", b));
    I=vpa(I)
