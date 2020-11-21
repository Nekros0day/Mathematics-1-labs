%% 1)

%% a)

A = hilb(12)
dA=det(A)

% Eftersom Determeinanten av A är 2.7698e-78 och ej lika med 0 är matrisen
% inverterbar
% Blir ett väldigt litet tal
%% b)
x = ones([12,1])
b = A*x

% fråga??? eftersom x är lika med "ones([12,1])"?

%% c)

xb = A\b

% vi får inte tillbaka x (x exakt) utan en vector med nästan lika värden
%% d)
Ai = inv(A)

xi = Ai*b
% vi får varningen "Warning: Matrix is close to singular or badly scaled.
% Results may be inaccurate. RCOND =  2.602837e-17."
%Vi får fortfarande fel svar men nära till x (xexact)

%% e)
sA=sym(hilb(12))
sx = sym(ones([12,1]))
sb=sym(A*x)

symres=sym(A\b)

% Nej, blir dock på bråkform
%% f)

for K=1:11
fA = hilb(K)
fAi = inv(fA)
fx = ones([K,1])
fb = fA*fx

fxb = fA\fb
fxi = fAi*fb

if fxb == fx | fxi ==fx
awnsr= K

end

end

%enda gången då svaret blir likamed fx (x exact) är i R^1 det är den enda
%gången hilbert matrisen ineholler endast heltal

%% 2)
%% a)

%se bild

%% b)
m1=1
m2=2
m3=3
m4=4
m5=5
m6=6
mA = [m1 m2 m3 m4 m5 m6]
x6= 1
x5=(1/3)*x6
x4=x5
x1=-x4
x2=2*x1
x3=x2
bx = [x1; x2; x3; x4; x5; x6]

bxres = fA*fx
%% c)

m1=10
m2=10
m3=10
m4=10
m5=10
m6=10
mA = [m1 m2 m3 m4 m5 m6]
x6= 1
x5=(1/3)*x6
x4=x5
x1=-x4
x2=2*x1
x3=x2
bx = [x1; x2; x3; x4; x5; x6]

bxres = mA*bx

% svar bxres= 0
%detta betyder att vi har jämnvikt
%% d)

m1=10
m2=10
m3=10
m4=8
m5=8
m6=8
mA = [m1 m2 m3 m4 m5 m6]
x6= 1
x5=(1/3)*x6
x4=x5
x1=-x4
x2=2*x1
x3=x2
bx = [x1; x2; x3; x4; x5; x6]

bxres = mA*bx
% svar bxres= -3.333333333333334
%detta betyder att vi inte har jämnvikt
%barnen på den negativa axeln är tyngre
%% e)

m1=3
m2=2
m3=4
m4=5
m5=7
m6=1
mA = [m1 m2 m3 m4 m5 m6]
x6= 1
x5=(1/3)*x6
x4=x5
x1=-x4
x2=2*x1
x3=x2
bx = [x1; x2; x3; x4; x5; x6]

bxres = mA*bx

%  m1=3, m2=2, m3=4, m4=5, m5=7, m6=1
%% f)

mA = sym('m',[1 6]) 
x6 = sym('x6')
x5=(1/3)*x6
x4=x5
x1=-x4
x2=2*x1
x3=x2
bx = sym([x1; x2; x3; x4; x5; x6])

bxres = sym(mA*bx)
simpbxres = simplify(bxres)
% vi får utrycket -(x6*(m1 + 2*m2 + 2*m3 - m4 - m5 - 3*m6))/3
%   vi kan observera att lösningen är endast lika med noll då x6 är noll
%   eller då "m1 + 2*m2 + 2*m3 - m4 - m5 - 3*m6" vi kan då observera att
%   "m1 + 2*m2 + 2*m3 = m4 + m5 + 3*m6" för att relationen ska vara likamed
%   0