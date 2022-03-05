g = 9.81; % Gravity in m/s/s.
vo = input('What is the launch speed in m/s? ');
tho = input('What is the launch angle in degrees? ');
tho = pi*tho/180; % Conversion of degrees to radians.
txmax = (2*vo/g) * sin(tho);
xmax = txmax * vo * cos(tho);
dt = txmax/100;
t = 0:dt:txmax;
x = (vo * cos(tho)) .* t;
y = (vo * sin(tho)) .* t - (g/2) .* t.^2;
vx = vo * cos(tho);
vy = vo * sin(tho) - g .* t;
v = sqrt(vx.*vx + vy.*vy); % Speed
th = (180/pi) .* atan2(vy,vx); % Angular direction
tymax = (vo/g) * sin(tho);
xymax = xmax/2;
ymax = (vo/2) * tymax * sin(tho);
disp(['Range in meters = ',num2str(xmax),',' ...
' Duration in seconds =', num2str(txmax)])
disp('')
disp(['Maximum altitude in meters = ',num2str(ymax), ...
', Arrival at this altitude in seconds = ', num2str(tymax)])
plot(x,y,'k',xmax,y(size(t)),'o',xmax/2,ymax,'o')
title(['Projectile flight path: v_o = ', num2str(vo), 'm/s' ...
', \theta_o = ', num2str(180*tho/pi), 'degrees'])
xlabel('x'), ylabel('y') % Plot of Figure 1.
figure % Creates a new figure.
plot(v,th,'r')
title('Projectile speed vs. angle')
xlabel('V'), ylabel('\theta') % Plot of Figure 2.