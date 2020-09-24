%Inputs: f:function file
%        a, b: interval
%        n: size of Romberg table
%Output: R: R(n,n) in the Romberg table
function R=romberg(f,a,b,n)
    R = zeros(n, n);
    h = b-a;
    R(1,1) = (feval(f,a) + feval(f,b)) * (h/2);
    for i=1:n-1
        R(i+1, 1) = R(i, 1)/2;
        h = h/2;
        for k=1:2^(i-1)
            R(i+1, 1) = R(i+1, 1) + h * feval(f, (a +(2*k-1)*h));
        end
    end
    for j=2:n
        for i=j:n
            R(i, j) = R(i, j-1) + (1/((4^(j-1))-1))*(R(i, j-1) - R(i-1, j-1));
        end
    end    
end