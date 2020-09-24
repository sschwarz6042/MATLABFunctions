function [t, y, yExact, relErr]=problem1()
% Problem: y'' = y'+2y+cos(x), for 0 <= x <= pi/2
% Boundary Conditions: y(0)=-0.3, y(pi/2)=-0.1
% Exact Solution y(x)= -(sin(x)+3cos(x)) / 10
%y1 = y-, y2=y-', y3=y~, y4=y~'

a=0;
b=pi/2;
alpha=-0.3;
beta=-0.1;

tspan=[a, b];
y0=[alpha; 0; alpha; 1;];

%Solving system of odes
[t,y]=ode45('problem1_function', tspan, y0, 'RelTol', 1*10^-9);

%lambda=(beta-y~(b))/(y-(b) - y~(b))
lambda = ( beta - y(size(y, 1), 3) ) / ( y(size(y,1), 1) - y(size(y, 1), 3) );

%y=lambda*y-(x) + (1-lambda)*y~(x)
%Calculating y values using shooting method:
yfinal=zeros(size(y, 1), 1);
for i=1:size(yfinal, 1)
    yfinal(i, 1) = lambda*y(i, 1) + (1-lambda)*y(i, 3);
end
y=yfinal;

%Plotting y values from shooting method
disp(plot(t, y));


steps=size(y,1);
yExact=zeros(steps, 1);
relErr=zeros(steps, 1);

%Calculating exact values and relative error
for i=1:steps
    yExact(i, 1)= -1*(sin(t(i,1))+3*cos(t(i,1)))/10;
    relErr(i, 1)= y(i, 1)-yExact(i, 1);
end

%Plotting exact solution and relative error
hold on;
disp(plot(t, yExact));
disp(plot(t, relErr));

end

function dydt=problem1_function(t, y)
%y1 = y-, y2=y-', y3=y~, y4=y~'

u=cos(t);
v=2;
w=1;

dydt=[y(2); u+v*y(1)+w*y(2); y(4); u+v*y(3)+w*y(4);];

end