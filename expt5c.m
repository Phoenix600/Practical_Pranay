clc;
clear all;
close all;
N=input('Enter the value of N: ');
x=input('Entre the input sequence X(n): ');
h=input('Enter the input sequence h(n): ');

X=fft(x,N);
disp(X);

H=fft(h,N);
disp(H);
y=X.*H;
disp(y);

y=ifft(y,N);
disp(y);
t=0:N-1;
stem(t,y,'-r');
xlabel('Time');
ylabel('Amplitude');
title('Circular COnvoluton OF Two Sequence');
grid on;


