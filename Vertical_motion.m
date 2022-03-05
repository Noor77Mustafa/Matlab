% Vertical motion under gravity
g = 9.81; % acceleration due
% to gravity
Vi = 60; % initial velocity in
% meters/sec
t = 0 : 0.01 : 12.3; % time in second
s = Vi * t-g/2 * t .^ 2; % vertical displacement
% in meters
plot(t, s,'k','LineWidth',5)
title( 'Vertical motion under gravity' )
xlabel( 'time' ), ylabel( 'vertical displacement' )
grid
