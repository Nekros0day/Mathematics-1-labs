function [f, Df, x0, tol]=aupp8(x)
f=@(x)0.5*(x-2).^2-2*cos(2*x)-1.5;
Df=@(x)x+4*sin(2*x)-2;
x0=4;
tol=0.5e-8;
end