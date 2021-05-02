function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m)

if nargin~=2
    error('invalid number of arguments inputted')
end
% Now the real challenge is to fill in the correct values of A
A(1,1:m) = 1:m ; 
A(1:n,1) = 1:n;
for i = 2: 1 : n
    for j = 2 :1 :m
        
        %left = 
        %up = 
        A(i,j) =  A(i,j-1) + A(i-1,j) ;
        
    end
end







disp(A)
end
% Things beyond here are outside of your function