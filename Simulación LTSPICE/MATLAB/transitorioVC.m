clc;
V=5.0;
C=22e-6;
L=5.2e-3;
R1=18;
R2=12;
syms s;
F=V/(s+s^2*C*R1);
ans=ilaplace(F)
time=[0:0.0001:0.003];
ansvec=5 - 5*exp(-(73786976294838206464*time)/29219642612755929);
plot(time,ansvec);