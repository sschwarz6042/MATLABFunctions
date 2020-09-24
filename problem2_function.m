function dydt=problem2_function(t,y)
%y1=y-, y2=y-', y3=y~, y4=y~'
%y1'=y2
%y2'= -(y2)^2 - y1 + ln(x)
%y3'=y4
%y4'= -(y4)^2 - y3 + ln(x)

dydt=[y(2,1); -1*(y(2,1)^2)-y(1,1) + log(t); y(4, 1); -1*(y(4,1)^2)-y(3,1) + log(t)];

end