function dydt=problem4_function(t,y)

    u=0.012277471;
    v=1-u;

    de=((y(1)+u)^2 + y(3)^2)^(1/2);
    dm=((y(1)-v)^2 + y(3)^2)^(1/2);
    
    dydt=[y(2); y(1)+2*y(4)-v*((y(1)+u)/(de^3))-u*((y(2)-v)/(dm^3)); y(4); y(3)-2*y(2)-v*((y(3))/(de^3))-u*((y(3))/(dm^3));];
end