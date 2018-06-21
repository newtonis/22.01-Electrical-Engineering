clc;
%fijamos wc y variamos xi
%x_ es el símbolo que se parece a epsilon
wc=100;
w={0.1*wc 10*wc};
%w es la banda de frecuencias en las que queremos que nos muestre el
%grafico
x_ =[0 , 0.1 ,1.0];
%la función tf nos arma el polinomio (transfer function)
% el primer argumento es el numerador y el segundo el denominador
H=tf(zeros(1,1,length(x_))); 
asympcurv = false;
%nota: con la curva asintotica no tiene la restriccion de w
for i =1:length(x_)
%    H(:,:,i)=tf([1],[(1/wc)^2 x_(i)/wc 1]);
    H(:,:,i)=tf([1/(wc)^2 0 0],[(1/wc)^2 x_(i)/wc 1]);
    if ~asympcurv
        bode(H(:,:,i),w);
        hold on;
    else
        [num,den]=tfdata(H(:,:,i));
        bodenum= cell2mat(num);
        bodeden= cell2mat(den);
        bode_as(bodenum,bodeden);
        hold on;
    end
end


    