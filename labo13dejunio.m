clc;
s=tf('s');
r=10;
c=50;
%H= (1/(r*s*c+1));
%bode(H);
%[num,den]=tfdata(H);
%bode_as(cell2mat(num),cell2mat(den));
%hold on
%freq=log(freq);
semilogx(freq,db);
%semilogx(db)

%phase=(-atan(freq/4800.0))*180/pi;
%semilogx(freq,phase);
