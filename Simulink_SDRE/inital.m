clear
clc

%
ReadPath_coef = 'D:\研究所/論文/coef3.txt';
ReadPath_command_t = 'D:\研究所/論文/command_t3.txt';
global Ld Lq Rs Lambda_m Polepairs J B Ldq coef command_t
[Ld,Lq,Rs,Lambda_m,Polepairs,J,B] = initial_value;

Ldq = Ld - Lq;
rate1 = 3;
rate2 = 1;
timestep = 1e-5;

coef = readmatrix(ReadPath_coef);
command_t = readmatrix(ReadPath_command_t);



