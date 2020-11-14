I=[-1 0]
f=@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2;
m=(I(1)+I(2))/2
x=linspace(-2, 7);
plot(x,f(x));
axis([-2 7 -1 1]), grid on

abt= f(I(1))*f(I(2))
amt= f(I(1))*f(m)
if((amt<0 & abt>0) | (amt>0 & abt<0))
    I(2)=m
else
    I(1)=m
end
    