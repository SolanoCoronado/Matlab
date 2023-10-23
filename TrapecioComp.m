function  [I] = TrapecioComp(f, a, b, n)
    % f es la funcion que se va a integrar
    % a, b: Los límites de integración.
    % n: El número de subintervalos.
    
    syms x %Variable simbolica

   
    h = (b - a) / n; % calculo de h

    % Inicializa la suma de los valores en los extremos
    suma = subs(f, "x", a) + subs(f, "x", b);

    % Suma los valores en los puntos intermedios de los subintervalos.
    for i = 1:n-1
        xi = a + i * h;
        suma = suma + 2 * subs(f, "x", xi);
    end

    % Fórmula del trapecio compuesto.
    I = (h / 2) * suma;
    I=vpa(I) %convertimos a valor numerico

end