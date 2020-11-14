%Define functions
g=@(x)exp((-x.^2)./2)
h=@(x)x.^2-4.*x-1
f=@(x)g(x)-h(x)

%find interections
firstZero = fzero(f,0);
secondZero = fzero(f,4);

%Area between graphs
q=integral(f,firstZero,secondZero)

%Display graph and area
x=linspace(firstZero,secondZero);
curve1 = exp((-x.^2)./2);
curve2 = x.^2-3.*x+2;
plot(x, curve1);
hold on;
plot(x, curve2);
patch([x fliplr(x)], [curve1 fliplr(curve2)], 'y')