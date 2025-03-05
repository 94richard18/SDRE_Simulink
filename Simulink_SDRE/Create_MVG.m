function [M,V,G_sd] = Create_MVG(Theta1,Theta3,d_Theta1,d_Theta3)
%[I1, I2,I3, L1, Lc1, L2, Lc2, L3, Lc3, m1, m2,m3, g] = global_var_2degree;


[I1, I2,I3, L1, Lc1, L2, Lc2, L3, Lc3, m1, m2,m3, g] = global_var_2degree;

M_11 = I1 + I2/4 + (L1^2)*(m1/16 + m2/16 + m2*sin(Theta1/2)^2 /4 + (1/2)*m3*sin(Theta1/2)^2);
%M_11 = I1 + I2/4 + (L1^2)*(m1/16 + m2/16 + m2*sin(Theta1/2)^2 /2 + m3*sin(Theta1/2)^2);
M_12 = m3*L1*L3*sin(Theta1/2)*sin(Theta3)/2;
M_21 = m3*L1*L3*sin(Theta1/2)*sin(Theta3)/2;
M_22 = I3 + (m3*(L3)^2 /4);

V_11 = d_Theta1*((L1^2)*(m2*sin(Theta1)/2 + m3*sin(Theta1))); 
%V_11 = d_Theta1*(-m3*L1*L3*sin(Theta1/2)*cos(Theta3)/4); 
V_12 = d_Theta3*(-m3*L1*L3*sin(Theta1/2)*cos(Theta3)/2);
V_21 = d_Theta1*(m3*L1*L3*cos(Theta1/2)*sin(Theta3)/4);
V_22 = 0;

if abs(Theta1) <1e-10
    a = 1;
    % b = 0;
else
    a = sin(Theta1/2)/(Theta1/2);
    % b = cos(Theta1)/Theta1;
end

if abs(Theta3) <1e-10
    
    c = 1;
else
    
    c = sin(Theta3)/Theta3;
end



G_11 = a*g*L1*(m1 + 3*m2 + 4*m3);
%G_22 = m3*L3*g*c/4;
G_22 = m3*L3*g*c;

M = [M_11 M_12;M_21 M_22];
V = [V_11 V_12;V_21 V_22];

G_sd=[G_11 0;0 G_22];

end