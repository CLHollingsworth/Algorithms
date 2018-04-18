 x=[1 2 3 4 5 6 7 8];
y=[10 12 14 16 18 20 22 24];
L1=length(x);
L2=length(y);
y1=y(1,1:L2-1);%set length for new Simpsons interval
   x1=x(1,1:L1-1);
   L3=length(x1);
   L4=length(y1);
   x2=x(1,L1-1:L1);%set length for trapezoidal interval
   y2=y(1,L2-1:L2);
    Isimpson=((x1(1,end)-x1(1,1))/(3.*L3).*((y1(1,1)+4.*(sum(y1(1,2:2:end)))+2.*(sum(y1(1,3:2:end-2)))+y1(1,end))));
  Itrapezoid=(x2(1,2)-x2(1,1)).*((y2(1,1)+y2(1,2))./2);
   I=Isimpson+Itrapezoid;
   