clc;
%fijamos wc y variamos xi
%x_ es el símbolo que se parece a epsilon
wc=100;
w={0.1*wc 10*wc};
%w es la banda de frecuencias en las que queremos que nos muestre el
%grafico
x_ =[0.1 , 0.2 ,0.3 ,0.5 , 0.7 ,1.0];
%la función tf nos arma el polinomio (transfer function)
% el primer argumento es el numerador y el segundo el denominador

H1=tf([1],[(1/wc)^2 x_(1)/wc 1]);
H2=tf([1],[(1/wc)^2 x_(2)/wc 1]);
H3=tf([1],[(1/wc)^2 x_(3)/wc 1]);
H4=tf([1],[(1/wc)^2 x_(4)/wc 1]);
H5=tf([1],[(1/wc)^2 x_(5)/wc 1]);
H6=tf([1],[(1/wc)^2 x_(6)/wc 1]);


bode(H1,H2,H3,H4,H5,H6,w)
