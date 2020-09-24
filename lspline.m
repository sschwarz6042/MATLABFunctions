%Inputs: t:vector, contains knots
%        y:vector, contains the interpolating values at knots
%        x: vector, contains points where the lspline function should be
%        evaluated and plotted
%Output: ls: vector, contains the values of lspline at points x
function ls=lspline(t,y,x)
    
    %First get coefficients for all functions ax+b
    %L0(x) = y0 + (y1-y0)/(t1-t0) * (x-t0)
    acoeff = zeros(1, length(t)-1);
    bcoeff = zeros(1, length(t)-1);
    
    for i = 1:length(acoeff)
        acoeff(i) = (y(i+1) - y(i)) / (t(i+1)-t(i));
        bcoeff(i) = y(i) + (acoeff(i) * (-1 * t(i)));
    end

    %Evaluate at x
    ls = zeros(1, length(x));
    %Go through x values
    for i = 1:length(x)
        %Find which function to use
        for j = 1:length(t)-1
            if (x(i)>=t(j)&&x(i)<=t(j+1))
                ls(i) = acoeff(j) * x(i) + bcoeff(j);
            end
        end
    end
    
    %Plot the function
    hold on;
    plot(t, y, '*'); %Mark data set for reference
    plot(x, ls);
    hold off;
end