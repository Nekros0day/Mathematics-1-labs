n=100;
f=@(x)x.*sin(x); a=0; b=1;
x=linspace(a,b,n+1);
h=(b-a)/n;

m=(x(1:n)+x(2:n+1))./2

q=sum( h*f(m) )