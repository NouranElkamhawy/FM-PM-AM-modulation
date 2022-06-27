%Abdullah Moheb Ibrahim
%1170330

clc
clear

%------ Givens -------
Fm=1000;
Ac=10;
Fc=10^6;
Am=1;
kp=10;
kf=1000*pi;
tm=1/Fm;
tc=1/Fc;
n=0:tm/99:8*tm;
m=Am*cos(2*pi*Fm*n);
%------- FM modulation -------
F=(Am/(2*pi*Fm))*sin(2*pi*Fm*n);
FM=Ac*cos((2*pi*Fc*n)+kf*F);
subplot(2,1,1);
plot(n,FM);
xlabel ('Time'); 
ylabel ('Amp'); 
title('FM');

%-------- PM modulation ------
pmm=Ac*cos((2*pi*Fc*n)+kp.*m);
subplot(2,1,2);
plot(n,pmm);
xlabel ('Time'); 
ylabel ('Amp'); 
title('PM');
