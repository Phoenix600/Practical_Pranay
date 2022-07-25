clc
clear all
close all

syms w;
syms n;

digits(2);

factor = input('Enter constant factor in expression - ');

wl=input('Enter lower integral limit - ');
wh=input('Enter upper integral limit - ');

fl=input('Enter length of filter -');

Hd=exp(-1i*factor*w);

% wl=-pi/4;
% wh=pi/4;

Hn=(1/(2*pi))*Hd*exp(1i*w*n);

Hdn=int(Hn,w,wl,wh);

for m=0:fl-1
    if factor == m
        Hn=(1/(2*pi))*1;
        Hdn=int(Hn,w,wl,wh);
        H(m+1)=abs(subs(Hdn,n,m));
    else
        H(m+1)=abs(subs(Hdn,n,m));
    end
end

% For rectangular window wn=1
wn=1;

for m=0:fl-1
    h(m+1)=H(m+1)*wn;
end

% Hw=zeros(1,5);
w1=0:0.01:pi/4;
L=length(w1);
Hw=zeros(1,L);

s=1;
for w1=0:0.01:wh
    for N=0:fl-1
        Hw(s)=abs(Hw(s)+h(N+1)*(exp(-1i*w1*N)));
    end
    s=s+1;
end

w1=0:0.01:wh;
plot(w1,Hw,'*r','LineWidth',1,...
                'MarkerEdgeColor','r',...
                'MarkerFaceColor','r',...
                'MarkerSize',5);
xlabel('Frequency')
ylabel('Magnitude Response of LPF')
title('Frequency response of LPF')
grid on

