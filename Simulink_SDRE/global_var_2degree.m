function [I1, I2,I3, L1, Lc1, L2, Lc2, L3, Lc3, m1, m2,m3, g] = global_var_2degree


L1 = 0.5;
Lc1 = L1/2;
L2 = 0.5;
Lc2 = L2/2;
L3 = 0.6;
Lc3 = L3/2;

m1= 8.5;
m2= 4.6;
m3= 2.5;
g=9.8;

I1 = m1*Lc1^2 /3;
I2 = m2*Lc2^2 /3;
I3 = m3*Lc3^2 /3;


end