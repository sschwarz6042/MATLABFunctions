function Err=NumDerErr(h)

%% Derivative approximation at x = 1
x = 1;

%% Numerical derivative
Num_der = (-3*exp(x)+4*exp(x+h)-exp(x+2*h))/h/2;

%% Real derivative 
Real_der = exp(x);

%% Error 
Err = abs(Num_der-Real_der);

end 
