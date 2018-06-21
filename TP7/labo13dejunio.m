clc;

radfq=2*pi*freq;
phase=(-atan(freq/4800.0))*180/pi;
figure
ax1 = subplot(2,1,1);
y1=semilogx(radfq,db);
title(ax1,'LAB Bode diagram');
ylabel(ax1,'Magnitude(dB)');
xlim([10e2 10e4]);
ylim([-15 0]);
ax2 = subplot(2,1,2);
y2=semilogx(radfq,phase);
ylabel(ax2,'Phase(deg)');
xlabel('Frequency(rad/s)');
xlim([10e2 10e4]);
ylim([-90 0]);
