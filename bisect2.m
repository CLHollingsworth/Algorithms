function [root,ea,fx,iter]=bisect2(f,xl,xu,es,maxiter)

%   Input    
% - f is the function 
% - xl and xu are the left and right endpoints
% - es is the tolerance (0.0001 default)
% - maxiter is the max iterations wanted to be run (50 is default)
%
%   Output 
% - root is the zero
% - fx is the function value at the root
% - ea approximate relative error
% - iter is the iterations that were run
%
format long
ya=f(xl);
yb=f(xu);
iter=0;
if ya*yb > 0 
    return,
end
max1=1+round((log(xu-xl)-log(es))/log(2));
while 1
    iter=iter+1;
for k=1:max1
	root=(xl+xu)/2;
	fx=f(root);
	if fx==0
		xl=root;
		xu=root;
	elseif yb*fx>0
		xu=root;
		yb=fx;
	else
		xl=root;
		ya=fx;
	end
	if xu-xl < es, break,end
end
end

root=(xl+xu)/2;
ea=abs(xu-xl);
fx=f(root);