%Inputs: funItg:function file
%        a, b: interval
%        n: number of sub-intervals
%Output: v: value of trapezoid rule
function v=trapezoid(funItg,a,b,n)
    h = (b-a)/n;
    v = (1/2)*(feval(funItg, a) + feval(funItg, b));
    for i=1:n-1
        v = v + feval(funItg, (a + (i*h)));
    end
    v = v * h;
end