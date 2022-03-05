function [x,y]=trajectory(a,time)
x0=0;
y0=0;
% k=0 ???
angle=a*(pi./180);
v=70;
g=9.81;
t=0:0.1:time;
x=x0+v*cos(angle)*t;
y=y0+v*sin(angle)*t-(g*t.^2)/2;
end