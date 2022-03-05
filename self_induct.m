function L = self_induct(N, A, Len)

u_not = 12.5664e-7;

L = (u_not* N^2 * A)/Len;

end 
% self inductance of one conducter 
% L is inductance. N is number of turns in coil, A is area in m^2. len is
% length in meters. 