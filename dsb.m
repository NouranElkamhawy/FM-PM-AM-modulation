%Abdullah Moheb Ibrahim
%1170330
clc
clear

%--------Givens----------
Fm=1000;
Ac=10;
Fc=10^6;
Am=1;
tm=1/Fm;
tc=1/Fc;
n=0:tm/99:8*tm;
T= 1/(2*Fc);
t=0:T:0.001;

%----- plot message Signal ---
m=Am*cos(2*pi*Fm*n);
subplot(4,1,1);
plot(n,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
grid on;

%----------- plot carrier signal ----------
c=Ac*cos(2*pi*Fc*n);
subplot(4,1,2);
plot(n,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
grid on;

%--------- plot DSB-SC ----------
DSb_SC=m.*c;
subplot(4,1,3);
plot(n,DSb_SC);
xlabel ('Time'); 
ylabel ('Amp'); 
title('DSB-SC');

%---------- DSB_LC ----------------
DSB_LC=(Ac+m).*c;
subplot(4,1,4);
plot(n,DSB_LC);
xlabel('Time');
ylabel('Amplitude');
title('DSB-LC Signal');
grid on;


