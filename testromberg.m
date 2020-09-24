%Output: plot of error
function [tri, trii, d1, d2]=testromberg()
    n=5;
    tri=romberg('sin', 0, pi, n);
    trii=romberg('sqrt', 0, 1, n);
    
    for i=1:n
        %tri(i, i+1) will have error
        tri(i, i+1) = tri(i,i) - 2;
        trii(i, i+1) = trii(i,i) - (2/3);
        %tri(i, i+2) will have change in error
        if(i > 1)
            tri(i, i+2) = tri(i, i+1) - tri(i-1, i);        
            trii(i, i+2) = trii(i, i+1) - trii(i-1, i);
        end
    end

    d1 = quad('sqrt', 0, 1, (1*10^(-9)));
    d2 = quadl('sqrt', 0, 1, (1*10^(-9)));
end