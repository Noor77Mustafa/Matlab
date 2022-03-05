%figure(1)
%[X ,Y] = meshgrid(-10:.5:10);
%R = sqrt(X.^2 * Y.^2) + eps;
%Z = sin(R) ./R;
%mesh(Z);

figure(2)
[X ,Y] = meshgrid(-5:.25:5);
Z = peaks(X,Y);
meshc(Z);

figure(3)
[X ,Y, Z] = peaks(50);
surfc(X,Y,Z);
axis([-5 5 -5 5 -10 10]);

figure(4)
[X ,Y] = meshgrid(-5:.25:5);
Z = X.*exp(-X.^2 - Y.^2);
[DX, DY] = gradient(Z, .5, .5);
contour(X,Y,Z)
hold on
quiver(X, Y, DX, DY)
hold off 