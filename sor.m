% SOR: solve linear system with SOR iteration
% Usage: [x, nit]=sor(A, b, x0, omega, d, tol, nmax)
% Inputs:
%           A: an  n x n-matrix
%           b: the rhs vector, with length n
%           x0: start vector for iteration
%           tol: error tolerance
%           w: relaxation parameter, (1 < w < 2)
%           d: band width of A
% Outputs:
%           x: the solution vector
%           nit: number of iterations
function [x, nit]=sor(A, b, x0, w, d, tol, nmax)
    nit=0;
    x=x0;
    xk=x0;
    err=checkerr(xk, A);
    while (nit < nmax) & (abs(err) > abs(tol))
        %Go through all x^k's to findx^k+1's
        for i=1:size(x0, 1)
            %Calc both sums
            sum1=0;
            sum2=0;
            %1st Sum
            for j=1:i-1
            %for j=i-d:i-1
                sum1 = sum1 + A(i, j)*x(j,1);
            end
            %2nd Sum
            for j=i+1:size(x0,1)
            %for j=i+1:i+1+floor(d/2)
                sum2 = sum2 + A(i, j)*xk(j,1);
            end
            
            x(i, 1)=(1-w)*xk(i,1)+w*(1/A(i,i))*(b(i,1)-sum1-sum2);
        end  
        %Update xk
        xk=x;
        
        %Increment nit
        nit = nit+1;
        
        %Recheck error
        err=checkerr(x,A);
    end
    
    
    %Helper function to check error
    %Input: xk, current approximation
    %       A, matrix
    %Output: err, maximum amount of error
    function err=checkerr(xk, A)
        %Try using xk as solution, then subtract rhs vector
        errMatrix=A*xk-b;
        
        %Set err to maximum error
        err=max(errMatrix);
    end
end    