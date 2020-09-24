%Inputs: f, the function
%        df, the function's derivative
%        x0, initial guess
%        to1, error tolerance
%        nmax, max iterations
%Outputs: x, result of newton iterations
function x=mynewton(f,df,x0,tol,nmax)
    x=x0;
    i=1;
    err=feval(f,x0);
    while (i<nmax+1 && err > tol)
        x=x-((feval(f, x))/(feval(df, x)));
        err=feval(f,x);
        disp(sprintf("Iteration = %d, Nmax = %d, X%d = %.11f, Error = %.15f, Tolerance = %d", i, nmax, i, x, err, tol));
        if(le(err,tol))
            disp(sprintf("Error less than tolerance"));
        end
        i=i+1;
    end
end