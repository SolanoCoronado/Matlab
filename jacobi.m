function jacobimetodo(A,b,x,tol,itermax)
n=length(x);
for k=1:m
    w=x;
    for i=1:n
        s=A(i,1:i-1)*w(1:i-1)+A(i,i+1:n)*w(i+1:n);
	x(i)=(b(i)-s)/A(i,i)
    end
    if norm(w-x,inf)<tol
        return
    end
    fprintf(k)
    for i=1:n
        fprintf(i,x(i)
    end
end
        

