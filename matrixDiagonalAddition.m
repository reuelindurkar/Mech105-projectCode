n = 4;
m = 5;
A = zeros(n,m)


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