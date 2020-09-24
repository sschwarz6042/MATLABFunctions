%Input: a, b, c: coefficients for the polynomial ax^2+bx+c=0
%Output: r1, r2: The two roots of the polynomial 
function [r1, r2] = smartquadroots(a, b, c)
    %Uses r1*r2 = c/a to get r2
    r1 = ((0-b) + sqrt((b^2)-(4*a*c)))/(2*a);
    r2 = (r1 * a)/(c);
end