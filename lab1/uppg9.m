%f=@(x)(3+sin(2*x))/(1+exp(0.03*x))-1.2;
f=@(x)0.33*(x-3).^2-3*cos(3*x)-1.1;
x0=0;
x=fzero(f,x0)
xs=linspace(-2, 0);
plot(xs, f(xs))
grid on