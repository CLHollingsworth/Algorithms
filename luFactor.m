function [L, U, P] =luFactor(A)
%LU Decomposition of a Matrix 
% This function decomposes a given matrix into a lower triangular matrix(L),an
% upper triangular matrix(U), and a pivot matrix(P). These matrices that
% are ouputted can be used to solve the original set of equations.
%   The decomposition is done by using partial pivoting and a form of
%   Gauss-Elimination. 
%Inputs
% - A = Coefficient matrix 
%Outputs
% - L = Lower triangular matrix;
% - U = Upper triangular matrix;
% - P = Pivot Matrix
[r,c] = size(A); 
L=eye(r,c);
P=eye(r,c); 
U=A;
for j = 1:r
  [~, m] = max(abs(U(j:r, j)));     
  m = m+j-1;
  if m ~= j
    U([m,j],:)=U([j,m], :);   % interchange rows m and j in U
    P([m,j],:)=P([j,m], :);   % interchange rows m and j in P
    if j >= 2  
      L([m,j],1:j-1) =L([j,m], 1:j-1);   % interchange rows m and j in columns 1:j-1 of L
    end
  end
  for i = j+1:r      
    L(i, j)=U(i, j) / U(j, j);
    U(i, :)=U(i, :) - L(i, j)*U(j, :);
  end
  L=L
  U=U
  P=P
end
