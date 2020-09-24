function [x, nit]=jacobi(A, b, x0, tol, nmax)
    x=x0;
    xk=x0;
    err=checkerr(xk, A);
    nit=0;
    
    while (nit < nmax) & (abs(err) > tol)
        for i=1:size(xk,1)
            sum1=0;
            for j=1:size(x0,1)
                if(j==i)
                    sum1 = sum1 + 0;
                else
                    sum1 = sum1 + A(i, j)*xk(j,1);
                end
            end
            
            x(i, 1) = (1/A(i, i))*(b(i,1) - sum1);
        end
        nit = nit+1;
        xk = x;
        err=checkerr(xk,A);
    end
 
    %Helper function to check error
    %Input: xk, current approximation
    %       A, matrix
    %Output: err, maximum amount of error
    function err=checkerr(xk, A)
        %Try using xk as solution, then subtract rhs vector
        errMatrix=A*xk-b;
        
        %Set err to first entry
        err=errMatrix(1,1);
        
        %Find maximum error and set err to maximum error
        for i=1:size(errMatrix)
            if errMatrix(i, 1) > err
                err=errMatrix(i, 1);
            end
        end
    end
end