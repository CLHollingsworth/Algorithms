function [root,fx,ea,iter] = bisect(func,xl,xu,es,maxiter)
%Bisection Summary of this function goes here
%   Detailed explanation goes here
%   Inputs
%func-function being evaluated
%xl-lower guess
%xu-upper guess
%es-desired relative error (default to 0.0001%)
%iter-number of iterations desired (default to 50)
%   Outputs
%root-estimated root location
%fx-the function value at the root
%ea-approximate relative error (%)
%iter-number of iterations
%
format long
if nargin<3
        error('At least 3 input arguments needed')
end
test=func(xl)*func(xu);
if test>0    
    error('No sign change') %test to make sure there is sign change on interval
end
if nargin<4 || isempty(es), es=0.0001;
end
if nargin<5 || isempty(maxiter), maxiter=50;
end
iter=0;
xr=xl;
ea=100;
while true
    iter=iter+1;
    xrold=xr;
    xr=(xl+xu)/2;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    test=func(xl)*func(xu);
    if test<0
        xu=xr;
    elseif test>0
        xl=xr;
    else
        ea=0;
    end
    if ea<=es || iter>maxiter 
        break
    end
end
    root=xr;
    fx=func(xr);
    ea=ea
    iter=iter
end
