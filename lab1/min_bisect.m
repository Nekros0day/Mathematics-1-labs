function  [m, I] = min_bisect(f,I,tol)

%Uppgift 4
%min_bisect(@(x)(x-2.5).*exp(-0.5*(x-2).^2)+0.2 ,[-1 0], 0.5e-8)

%Uppgift 5
%min_bisect(@(x)kastbanan(x),[11 12], 0.5e-8)


%möbius
%min_bisect(@(x)exp(-3*x.^2)-2*sin(x), [0 1], 10^-4)

kmax=5
for k=1:kmax
m=(I(1)+I(2))/2
amt= f(I(1))*f(m)
if (abs(f(m))<tol) 
    break

elseif(amt<0)
    I(2)=m;
else
    I(1)=m;


end

end
end