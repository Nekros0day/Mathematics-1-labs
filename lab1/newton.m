f=@(x)x.^3-cos(4*x); 
Df=@(x)3*x.^2 + 4*sin(4*x);

x=0.75;
xs=linspace(-2,2);
kmax=10; tol=0.5e-8;
plot(xs,f(xs));
grid on;
hold on;
for k=1:kmax
h=-f(x)/Df(x);
x=x+h;
disp([x h])
if abs(h)<tol
    plot(x, f(x), '*')
    break
end

end
