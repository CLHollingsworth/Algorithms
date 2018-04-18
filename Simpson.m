function [I] = Simpson(x,y)
%This function takes given data points in vector form about a dependent variable and independent
%variable and outputs the approximation of the integral.
%   The approximation is done using the Simpson's 1/3 rule, and if there is
%   an odd number of intervals then the last interval is approximated with
%   the trapezoidal rule. If the trapezoidal rule is needed, the user will be alerted to it.
%Inputs-
%   x-Independent variable values
%   y-Dependent variable values
%Outputs
%   I-Approximated integral value
L1=length(x);
L2=length(y);
if L1~=L2 %checking lengths 
error('Vectors must have equal dimensions')
end
space=diff(x);
if range(space)~=0 %checks spacing of x values
    error('Independent variable values must be spaced equally')
end
if mod(L1,2)==0 %determines the need for a trapezoidal rule or not
    warning('The trapezoidal rule will be used on the last interval to allow Simpsons 1/3 rule to be used more effectively')
end
if mod(L1,2)==0 %trapezoidal approximation needed for final interval
   y1=y(1,1:L2-1);%set vector for new Simpsons interval
   x1=x(1,1:L1-1);
   L3=length(x1); %set new vector lengths for approximating
   L4=length(y1);
   x2=x(1,L1-1:L1);%set vector for trapezoidal interval
   y2=y(1,L2-1:L2);
   Isimpson=((x1(1,end)-x1(1,1))/(3.*L3).*((y1(1,1)+4.*(sum(y1(1,2:2:L4)))+2.*(sum(y1(1,3:2:L4-2)))+y1(1,end))));
   Itrapezoid=(x2(1,2)-x2(1,1)).*((y2(1,1)+y2(1,2))./2);
   I=Isimpson+Itrapezoid; %adding both approximations for final approximation
else %no trapezoidal approximation needed
    Isimpson=((x(1,end)-x(1,1))/(3.*L2).*((y(1,1)+4.*(sum(y(1,2:2:end)))+2.*(sum(y(1,3:2:end-2)))+y(1,end))));
    I=Isimpson;
end
end

