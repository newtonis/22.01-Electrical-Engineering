% %Tensiones en General%
% VRS = 146*exp(i*0);
% VST = 146*exp(i*(-120)*pi/180);
% VTR = 146*exp(i*(-240)*pi/180);
% V_MAT = [VRS VST VTR];
% compass(V_MAT);
% title('Diagrama tensiones de fase');

% %Caso R-R-R%
% IRS = 0.35*exp(i*0);
% IST = 0.36*exp(i*(-120)*pi/180);
% ITR = 0.46*exp(i*(-240)*pi/180);
% IR = IRS-ITR;
% IS = IST-IRS;
% IT = ITR-IST;
% IF_MAT = [IRS IST ITR];
% IL_MAT = [IR IS IT];
% compass(IF_MAT);
% title('Caso R-R-R - Diagrama corrientes de fase/linea');

% %Caso L-L-L%
% IRS = 1.4*exp(i*0);
% IST = 1.38*exp(i*(-120)*pi/180);
% ITR = 1.22*exp(i*(-240)*pi/180);
% IR = IRS-ITR;
% IS = IST-IRS;
% IT = ITR-IST;
% IF_MAT = [IRS IST ITR];
% IL_MAT = [IR IS IT];
% compass(IF_MAT);
% title('Caso L-L-L - Diagrama corrientes de fase/linea');

% %Caso R/L-R/L-R/L%
% IRS = 1.48*exp(i*0);
% IST = 1.48*exp(i*(-120)*pi/180);
% ITR = 1.38*exp(i*(-240)*pi/180);
% IR = IRS-ITR;
% IS = IST-IRS;
% IT = ITR-IST;
% IF_MAT = [IRS IST ITR];
% IL_MAT = [IR IS IT];
% compass(IF_MAT);
% title('Caso R/L-R/L-R/L - Diagrama corrientes de fase/linea');

%Caso R-R/L-L%
IRS = 0.36*exp(i*0);
IST = 1.47*exp(i*(-210)*pi/180);
ITR = 1.24*exp(i*(-330)*pi/180);
IR = IRS-ITR;
IS = IST-IRS;
IT = ITR-IST;
IF_MAT = [IRS IST ITR];
IL_MAT = [IR IS IT];
compass(IF_MAT);
title('Caso R-R/L-L - Diagrama corrientes de fase/linea');
