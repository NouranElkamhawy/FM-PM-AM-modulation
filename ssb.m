%Abdullah Moheb Ibrahim
%1170330

clc
clear

%------ Givens -------
Fm=1000;
Ac=10;
Fc=10^6;
Am=1;

tm=1/Fm;
tc=1/Fc;
n=0:tm/99:8*tm;
m=Am*cos(2*pi*Fm*n);
c=Ac*cos(2*pi*Fc*n);
c1=Ac*sin(2*pi*Fc*n);
mh=Am*sin(2*pi*Fm*n);

subplot(4,2,1); plot(n,m);
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

subplot(4,2,2); plot(n,c);
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

subplot(4,1,2); plot(n,c1);
xlabel('Time');
ylabel('Amplitude');
title('Carrier2 Signal');

subplot(4,1,3); plot(n,mh);
xlabel('Time');
ylabel('Amplitude');
title('Message2 Signal');

ssbb=(m.*c)+(mh.*c1);
subplot(4,1,4);
plot(n,ssbb);
xlabel('Time');
ylabel('Amplitude');
title('SSB wave');
grid on;


