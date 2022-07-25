clc;
clear all;
close all;
N=input('enter the value of N : ');
y=input('enter the sequence Y[K]=')
yr=real(y);
yi=imag(y);
t=0:N-1;
subplot(3,1,1);
stem(t,yr);
xlabel('TIME');
ylabel('AMPLITUDE')
title('INPUT SIGNAL');
grid on;
subplot(3,1,2);
stem(t,yi);
xlabel('Time');
ylabel('AMPLITUDE');
title('INPUT SIGNAL');
grid on;
x=ifft(y,N)
subplot(3,1,3);
stem(t,x);
xlabel('Time');
ylabel('AMPLITUDE');
title('OUTPUT SIGNAL');
grid on;
x=ifft(y,yr)
