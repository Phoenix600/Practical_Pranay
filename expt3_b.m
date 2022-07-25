clc; 
clear all; 
close all; 
 
a = input('Enter width of pulse : ');
t= input('Enter duration of pulse : ');
 
x=rectpuls(t,a); % function to generate rectangular pulse.
 
subplot(2,1,1);
plot(t,x,'-b');
grid on;
axis([-2 2 0 2])%to see pulse properly
xlabel('time');
ylabel('Amplitude w.r.t. time');
title('Rectangular pulse');
 
X=fft(x);
 
subplot(2,1,2);
plot(t,fftshift(abs(X)),'-r');% fftshift is to bring zero frequency component at the center of axis.
grid on;
xlabel('time');
ylabel('Amplitude w.r.t. time');
title('Amplitude Plot');
