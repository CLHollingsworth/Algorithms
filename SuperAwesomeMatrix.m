function [output] = SuperAwesomeMatrix(r,c)
%Homework 5 Super Awesome Matrix Creator
%   This function makes a matrix that has rows and columns that are
%   input by the user. The first row and column are numbered acorss and
%   down counting by one. The following rows and columns, each cell is
%   determined by adding the cell above and to the left of it.
% Inputs-- r-number of rows
%          c-number of columns
%Output --ans- The Super Awesome Matrix
output=[];
if nargin ~=2
    error('Function needs 2 inputs')
end
for k=1:r %rows
    for h=1:c %colums
        if k==1
            output(k,h)=h;
        elseif h==1
            output(k,h)=k;
        else
            output(k,h)=output(k-1,h)+output(k,h-1);
        end
    end
end





