function [x11, x12, x21, x22, x31, x32]=problem2()
    %Case 1
    c1 = [0.2:0.2:1];
    A = vander(c1);
    xsol = ones(size(c1, 2), 1);
    b = A*xsol;
    x11=naiv_gauss(A, b);
    x12=A\b;
    
    %Case 2    
    c2 = [0.1:0.1:1];
    A = vander(c2);
    xsol = ones(size(c2, 2), 1);
    b = A*xsol;
    x21=naiv_gauss(A, b);
    x22=A\b;
    
    %Case 3
    c3 = [0.05:0.05:1];
    A = vander(c3);
    xsol = ones(size(c3, 2), 1);
    b = A*xsol;
    x31=naiv_gauss(A, b);
    x32=A\b;
    
end