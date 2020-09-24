%Inputs: f, the function
%        x0, guess 1
%        x1, guess 2
%        to1, error tolerance
%        nmax, max iterations
%Outputs: x, result of newton iterations
function x=mysecant(f,x0,x1,tol,nmax)
    i=1;
    err=feval(f,x1);
    while (i<nmax+1 && err > tol)
        x=x1-((x1-x0)/(feval(f,x1)-feval(f,x0)))*(feval(f,x1));
        x0 = x1;
        x1 = x;
        err=feval(f,x);
        disp(sprintf("Iteration = %d, Nmax = %d, X%d = %.11f, Error = %.15f, Tolerance = %.15f", i, nmax, i, x, err, tol));
        if(le(err,tol))
            disp(sprintf("Error less than tolerance"));
        end
        i=i+1;
    end
end