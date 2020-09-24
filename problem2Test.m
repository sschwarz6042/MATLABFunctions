function problem2Test()
    %Defining A, b, x0;
    A=sparse(9,9);
    A(1,1)=-2.011;
    A(1,2)=1;
    A(2,1)=1;
    A(2,2)=-2.012;
    A(2,3)=1;
    A(3,2)=1;
    A(3,3)=-2.013;
    A(3,4)=1;
    A(4,3)=1;
    A(4,4)=-2.014;
    A(4,5)=1;
    A(5,4)=1;
    A(5,5)=-2.015;
    A(5,6)=1;
    A(6,5)=1;
    A(6,6)=-2.016;
    A(6,7)=1;
    A(7,6)=1;
    A(7,7)=-2.017;
    A(7,8)=1;
    A(8,7)=1;
    A(8,8)=-2.018;
    A(8,9)=1;
    A(9,8)=1;
    A(9,9)=-2.019;
    A=full(A);
    
    b=[(-0.994974); (1.57407*10^-3); (-8.9677*10^-4); (-2.71137*10^-3); (-4.07407*10^-3); (-5.11719*10^-3); (-5.92917*10^-3); (-6.57065*10^-3); (-0.507084);];
    
    x0=[0.95; 0.9; 0.85; 0.8; 0.75; 0.7; 0.65; 0.6; 0.55;];

    [t1, nit1] = sor(A, b, x0, 1.0, 3, 1*10^-4, 100);
    [t2, nit2] = sor(A, b, x0, 1.1, 3, 1*10^-4, 100);
    [t3, nit3] = sor(A, b, x0, 1.2, 3, 1*10^-4, 100);
    [t4, nit4] = sor(A, b, x0, 1.3, 3, 1*10^-4, 100);
    [t5, nit5] = sor(A, b, x0, 1.4, 3, 1*10^-4, 100);
    [t6, nit6] = sor(A, b, x0, 1.5, 3, 1*10^-4, 100);
    [t7, nit7] = sor(A, b, x0, 1.6, 3, 1*10^-4, 100);
    [t8, nit8] = sor(A, b, x0, 1.7, 3, 1*10^-4, 100);    
    [t9, nit9] = sor(A, b, x0, 1.8, 3, 1*10^-4, 100);
    [t10, nit10] = sor(A, b, x0, 1.9, 3, 1*10^-4, 100);

    disp('1st Case, w=1.0');
    disp('x=');
    disp(t1);
    disp('nit=');
    disp(nit1);

    disp('2nd Case, w=1.1');
    disp('x=');
    disp(t2);
    disp('nit=');
    disp(nit2);    
    
    disp('3rd Case, w=1.2');
    disp('x=');
    disp(t3);
    disp('nit=');
    disp(nit3);    
    
    disp('4th Case, w=1.3');
    disp('x=');
    disp(t4);
    disp('nit=');
    disp(nit4);    
    
    disp('5th Case, w=1.4');
    disp('x=');
    disp(t5);
    disp('nit=');
    disp(nit5);    
    
    disp('6th Case, w=1.5');
    disp('x=');
    disp(t6);
    disp('nit=');
    disp(nit6);    
        
    disp('7th Case, w=1.6');
    disp('x=');
    disp(t7);
    disp('nit=');
    disp(nit7);
    
    disp('8th Case, w=1.7');
    disp('x=');
    disp(t8);
    disp('nit=');
    disp(nit8);
    
    disp('9th Case, w=1.8');
    disp('x=');
    disp(t9);
    disp('nit=');
    disp(nit9);    
    
    disp('10th Case, w=1.9');
    disp('x=');
    disp(t10);
    disp('nit=');
    disp(nit10);    
    
    w=[1.0;1.1;1.2;1.3;1.4;1.5;1.6;1.7;1.8;1.9;];
    nitM=zeros(10, 1);
    nitM(1,1)=nit1;
    nitM(2,1)=nit2;
    nitM(3,1)=nit3;
    nitM(4,1)=nit4;
    nitM(5,1)=nit5;
    nitM(6,1)=nit6;
    nitM(7,1)=nit7;
    nitM(8,1)=nit8;
    nitM(9,1)=nit9;
    nitM(10,1)=nit10;
    
    disp(plot(w, nitM));
end