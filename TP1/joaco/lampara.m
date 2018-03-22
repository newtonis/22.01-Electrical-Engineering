tension = [9.7,10,9.9,10,9.9];
nrodedivdecorriente = [88,87.5,87,86,85];
corrienteenmA = nrodedivdecorriente.*0.2;
temperatura = [50,85,115,140,150];

corrienteenA = corrienteenmA.*0.001;
resistencia= tension./corrienteenA;

plot(tension,corriente);
%plot(temperatura,corriente);
%plot(temperatura,resistencia);