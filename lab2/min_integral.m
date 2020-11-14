function q=min_integral(f,I,n,k)


x=linspace(I(1),I(2),n+1);
h=(I(2)-I(1))/n;
if k == 1
        q=sum(h*f(x(1:n)))
elseif k==2
        q=sum(h*f(x(1:n+1)))

elseif k==3
        q=sum(h*f((x(1:n)+x(2:n+1))./2))

elseif k==4
        q=sum( (h/2)*(f(x(1:n))+f(x(2:n+1))) )
end

%Uppgift 3
%a)
%min_integral(@(x)exp(-x.^2) ,[0 1], 100 , 1)

%b)
%min_integral(@(x)1./(1+x.^2) ,[-1 1], 100 , 1)

%c)
%min_integral(@(x)tan(sqrt(x)) ,[0 1], 100 , 1)