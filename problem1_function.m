function dydt=problem1_function(t, y)
%y1 = y-, y2=y-', y3=y~, y4=y~'

u=cos(t);
v=2;
w=1;

dydt=[y(2); u+v*y(1)+w*y(2); y(4); u+v*y(3)+w*y(4);];

end