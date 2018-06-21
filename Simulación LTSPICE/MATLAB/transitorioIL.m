clc;
V=5.0;
C=22e-6;
L=5.2e-3;
R1=18;
R2=12;
syms s;
F=V/(s^2+R2*s);
ans=ilaplace(F);
ans
time=[0:0.01:0.7];
ansvec=5.0/12 - (5.0*exp(-12*time))/12;
plot(time,ansvec);s
