%% Newton Raphson Method
vo=55;
c=15;
m=80;
t=6;
g=9.81;
zt=@(z)(vo.*(exp(-(c./m).*t))-(((m.*g)./c).*(1-exp(-(c./m).*t)))-z);
%ztprime=diff(zt);
%nr=6-(zt./ztprime);
fplot(zt)
%%
syms x
d=-1.5.*x.^6-2.*x.^4+12.*x;
first=diff(d);
fplot(d)
fplot(first)
%%
mn=@(x)-9*x^5-8*x^3+12;
fplot(mn)
xlim([-20,20])