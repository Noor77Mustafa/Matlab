function B = magnetic_plates(R,r1)
unot = 12.5664e-7;
epsilon = 8.85e-12;
E = 5500;
B = unot*epsilon*E*(R^2)/(2*r1);
end 
