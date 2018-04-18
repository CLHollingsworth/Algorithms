function [root,fx,ea,iter] = falsePosition(f,xl,xu,es,maxiter)
%False Position 
% This function using multiple iterations to find the root of a function
% using a false position equation. It uses either a iteration cap or a
% error goal to stop running and return the value of the root.
%   Inputs
%func-the function being evaluated
%xl-the lower guess
%xu-the upper guess
%es-the desired relative error (default to 0.0001%)
%iter- the number of iterations desired (default to 200)
%   Outputs
%root-the estimated root location
%fx-the function evaluated at the root location
%ea-the approximate relative error(%)
%iter-how many iterations were performed
format long
if nargin<3 % requires this many inputs to run
    error('Atleast 3 inputs are needed')
end
if nargin<4 %defaults the error value if it is not input
    es=0.0001;
end
if nargin<5 %defaults max iterations if it is not input
    maxiter=200;
end
iter=1;
ea=1; %define inital error as 100%
fxl=f(xl);% finds function values at location
fxu=f(xu);
xrold=(xu+xl)/2;
while iter<maxiter  %this runs the program until one of the criteria is met
iter=iter+1;
xr=xu-((fxu*(xl-xu))/(fxl-fxu)); %equation to find the root of the guess
%define the old root to be used in error calculation
if f(xl)*f(xu)<0 %if statement finds which side of the estimate the real root lies on
    xu=xr;
if f(xl)*f(xu)>0
    xl=xr;
else%this means the approximation has reached the actual value
    root=xr;
end
ea=abs((xr-xrold)/xr); %calculates relative error
xrold=xr;
end
root=xr;
ea=ea+0;
iter=iter;
fx=f(xr);
end


