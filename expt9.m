clc;
clear all;
close all;
Fs = 44100;      % sampling frequency 
channels = 1;    % mono and sterio channel 
bits = 16;       % bits 
r = audiorecorder(Fs,bits,channels);
duration = 5;
disp("Recording Started");
recordblocking(r,duration);
disp("Recording Stopped");
x = getaudiodata(r);
%sound(x,Fs,bits);           in command window
t = 0 : 1/Fs : (length(x)-1)/Fs;


%Time Domain Plot
subplot(2,1,1);
plot(t,x,"linewidth",1.5);
xlabel("Time in seconds");
ylabel("Amplitude");
title("Time Domain plot of the recorded signal");


%Frequency Domain analysis
n=length(x);
F=0:(n-1)*Fs/n;
y = fft(x,n);
Fo = (-n/2:n/2-1).*(Fs/n);
yo = fftshift(y);
Ayo = abs(yo);
subplot(2,1,2);
plot(Fo,Ayo,"linewidth",1.5);
xlabel("Frequency");
ylabel("Amplitude");
title("Frequency Domain plot of the recorded signal");