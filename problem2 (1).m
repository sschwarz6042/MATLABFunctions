function [x, y, z]=problem2()
    %Starting with x'''(t) = -2x'' + xt
    %x(0)=1
    %x'(0)=2
    %x''(0)=3
    %
    %Renamed to:
    %x = x, x' = y, x'' = z
    %
    %Solving:
    %x' = y
    %y' = z
    %z' = xt - 2z

    xn=1;
    yn=2;
    zn=3;
    h=0.1;
    t=0;
    
    %Computing 10th Euler step:
    %xn1 = x_{n+1}, xn = x_{n}
    for i=1:10       
        xn1 = xn + h*(yn); 
        yn1 = yn + h*(zn);
        zn1 = zn + h*(xn*t - (2*zn));
    
        xn = xn1;
        yn = yn1;
        zn = zn1;
        t=t+h;
    end

    x=xn;
    y=yn;
    z=zn;
    
end