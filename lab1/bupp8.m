function [f, Df, x0, tol]=bupp8(x)
f=@(x)x.^3-cos(4*x); 
Df=@(x)3*x.^2 + 4*sin(4*x);
x0=0.75;
tol=0.5e-8;
end