function [f1, f2, f3, f4, f5, f6, f7,f8, f9, f10, f11, f12, f13, f14, f15, f16, f17]=problem4(F1, F2, F3, F4)

    A=sparse(21, 17);
    alpha = sqrt(2)/2;
    
    %J2
    %X
    A(1, 1) = -alpha;
    A(4, 1) = 1;
    A(5, 1) = alpha;
    
    %Y
    A(1, 2) = -alpha;
    A(3, 2) = 1;
    A(5, 2) = alpha;
    
    %J3
    %X
    A(2, 3) = -1;
    A(6, 3) = 1;
    %Y
    A(3, 4) = -1;
    A(18, 4) = 1;
    
    %J4
    %X
    A(4, 5) = -1;
    A(8, 5) = 1;
    %Y
    A(7, 6) = 1;
    
    %J5
    %X
    A(5, 7) = -alpha;
    A(6, 7) = -1;
    A(9, 7) = alpha;
    A(10, 7) = 1;
    %Y
    A(5, 8) = -alpha;
    A(7, 8) = -1;
    A(9, 8) = alpha;
    A(19, 8) = 1;
    
    %J6
    %X
    A(8, 9) = -1;
    A(9, 9) = -alpha;
    A(12, 9) = 1;
    A(13, 9) = alpha;
    %Y
    A(9, 10) = -alpha;
    A(11, 10) = 1;
    A(13, 10) = alpha;
    
    %J7
    %X
    A(10, 11) = -1;
    A(14, 11) =1;
    %Y
    A(11, 12) = -1;
    A(20, 12) = 1;
    
    %J8
    %X
    A(12, 13) = -1;
    A(16, 13) = alpha;
    %Y
    A(15, 14) = 1;
    A(16, 14) = -alpha;
    
    %J9
    %X
    A(13, 15) = -alpha;
    A(14, 15) = -1;
    A(17, 15) = 1;
    %Y
    A(13, 16) = -alpha;
    A(15, 16) = -1;
    A(21, 16) = 1;
    
    %J10
    %X
    A(16, 17) = -alpha;
    A(17, 17) = -1;

    b=[0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;F1;F2;F3;F4;];
    A=full(A);
    x=A\b;
    
    f1=x(1,1);
    f2=x(2,1);
    f3=x(3, 1);
    f4=x(4, 1);
    f5=x(5, 1);
    f6=x(6, 1);
    f7=x(7, 1);
    f8=x(8, 1);
    f9=x(9, 1);
    f10=x(10, 1);
    f11=x(11, 1);
    f12=x(12, 1);
    f13=x(13, 1);
    f14=x(14, 1);
    f15=x(15, 1);
    f16=x(16, 1);
    f17=x(17, 1);
    
end