%% Question 1 part a 
s= @(x) sin(x);
f=@(x) -(1/6).*x.^3+x;
g=@(x) -sin(x);
hold on
fplot(s,[-pi,pi])
fplot(f,[-pi,pi])
fplot(g,[-pi,pi])
refline(0,0)
grid on
legend ('s','f','g')
hold off
%% Question 1 part b
h=@(x) abs(s-f);
l=@(x) abs(s-g);
j=@(x) s-f;
k=@(x) s-g;
a=integral(h,-pi,pi);
b=integral(l,-pi,pi);
c=integral(j,-pi,pi);
d=integral(k,-pi,pi);
%% Question 2
clc
s= @(x) sin(x);
b=@(x) ((16.*x.*(pi-x))./((5.*pi.^2)-4.*x.*(pi-x)));
sb=@(x) sin(x)-((16.*x.*(pi-x))./((5.*pi.^2)-4.*x.*(pi-x)));
c=@(x) sin(x)-((16.*x.*(pi-x))./((7.*pi.^2)-4.*x.*(pi-x)));
MIO=integral(sb,0,pi);
MIU=integral(sb,-pi,0);
MOU=integral(c,-pi,0);
c1=sin(-pi/6);
c2=c(-pi/6);
Ex=abs(c1-c2);
d1=sin(-pi/3);
d2=c(-pi/3);
Ex=abs(d1-d2);
%% Question 3 
s= @(x) sin(x);
f=@(x) -(1/6).*x.^3+x;
hold on
fplot(s,[-pi,pi])
fplot(f,[-pi,pi])
refline(0,0)
grid on
legend ('s','f')
hold off
h=@(x) s(x)-f(x);
JUI=integral(h,(-pi)/4,0);
%% Question 4
s= @(x) sin(x);
L=@(x) 2.*x./pi;
SL=@(x) sin(x)- 2.*x./pi;
ANSmiddle=integral(SL,0,1/2*pi);
ANSfinal=ANSmiddle*4