function t = shear_stressStrain(y,E,v)
% y is shear strain
% G is modules of elasticity 
% v is poissons ratio 
% y = tan(phi)
G = E/2*(1+v);
t = G*y;
end 