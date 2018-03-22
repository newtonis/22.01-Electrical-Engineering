tension = [0.3,1,1.5,1.8,2.5,3.0,3.4,3.7,3.9,4.0,4.1,4.1,4.1];
corriente = [0.05,0.045,0.045,0.040,0.035,0.0325,0.03,0.0275,0.0265,0.0260,0.0250,0.0245,0.0240];
resistencia = tension./corriente;
%resistencia
%plot(resistencia);
%hold on;
potencia = tension.*corriente;
plot(resistencia,potencia);
