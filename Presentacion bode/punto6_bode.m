H1=tf([1],[1/17.857 1]);
H2=tf([1 0],[1/186666648.8 1]);
H=-190*H1*H2;
%[num,den]=tfdata(H);
%bodenum= cell2mat(num);
%bodeden= cell2mat(den);
%bode_as(bodenum,bodeden);
bode(H,{1e-20,1e30});