
r = 0;

if base10>0
    baseTemp = zeros(1,floor(log2(base10)));
    i = 1;
    
    while base10>0
        r =  mod(base10 , 2 );
        baseTemp(i) = r;
        base10 = floor(base10/2);
        i = i+1;
    end
    base2 = fliplr(baseTemp);
    
    
else if base10 == 0
        base2 = [0];
    end
end

