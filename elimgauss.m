function[U]=elimgauss(A)
[n,m]=size(A);
U = A;
for k = 1:n - 1
    for i = k + 1:n
        for j = n:-1:k
            U(i,j) = U(i,j)-(U(i,k)/U(k,k))*U(k,j);
        end
    end
end
end