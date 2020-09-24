%Inputs: funItg:function file
%        a, b: interval
%        n: number of sub-intervals
%Output: v: value of Simpson's rule
function v=simpsons(funItg,a,b,n)
    h = (b-a)/n;
    v = (feval(funItg, a) + feval(funItg, b));
    odds = 0;
    for i=1:2:n
        odds = odds + feval(funItg, (a + (i*h)));
    end
    odds = odds * 4;
    evens = 0;
    for i=2:2:n-1
        evens = evens + feval(funItg, (a+(i*h)))
    end
    evens = evens * 2;
    v = v + odds + evens;
    v = v * (h/3);
end