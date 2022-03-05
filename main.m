function main
figure;
AxesH = axes('NextPlot', 'add');
time  = 500;
[x,y] = trajectory(10, time);
plot(x, y, 'r', 'Parent', AxesH)
[x,y] = trajectory(20, time);
plot(x, y, 'b', 'Parent', AxesH)
[x,y] = trajectory(30, time);
plot(x, y, 'g', 'Parent', AxesH)
[x,y] = trajectory(40, time);
plot(x, y, 'c', 'Parent', AxesH)
end

function [x,y]=trajectory(a,time)
x0=0;
y0=0;
% k=0 ???
angle=a*(pi./180);
v=70;
g=9.81;
t=0:0.1:time;
x = x0+v*cos(angle)*t;
y = y0+v*sin(angle)*t-(g*t.^2)/2;
end