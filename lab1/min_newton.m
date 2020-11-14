function  x = min_newton(f,Df,x0,tol)

%f=@(x)x.^3-cos(4*x); 
%Df=@(x)3*x.^2 + 4*sin(4*x);
%x0=0.75;
%tol=0.5e-8;

kmax=10; 
for k=1:kmax
h=-f(x0)/Df(x0);
x0=x0+h;
if abs(h)<tol
    x=x0;
    break
end

end
