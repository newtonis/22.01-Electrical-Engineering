clc;
V=5.0;
C=22e-6;
L=5.2e-3;
R1=18;
R2=12;
syms s;
F=V/(s*(s*L+R2));
ans=ilaplace(F);
ans
time=[0:0.0001:0.003];
ansvec=5/12 - (5*exp(-(30000*time)/13))/12;
plot(time,ansvec);