%Input: a: Newton's divided differences
%        x: the points for the data set to interpolate,
%            same as in divdiff
%        t: the points where the polynomial should be evaluated
%Output: v: the value of polynomial at the points in t
function v = polyvalue(a, x, t)
    v = 0;
    ind = 1;
    for i = 2:length(a)
        for j = 1:i
            if(i == 2)
                v = v + a(2, ind);                
            
            
            else
                v = v + a(i, ind)*(t - a(j,1))
                
            end
          
       
        end
        
        ind = ind + 1;
    end

end