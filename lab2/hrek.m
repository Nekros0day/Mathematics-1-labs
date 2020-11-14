n=100;
f=@(x)x.*sin(x); a=0; b=1;
x=linspace(a,b,n+1);
h=(b-a)/n;
q=sum(h*f(x(1:n+1)))