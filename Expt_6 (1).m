% B44 Vishal Tikle
% 1. Z transform of a sequence x(n) = [1 2 3 4 5] without built in function

clc;
clear all;
close all;
x=input('Enter the sequence x(n) : ');
l=length(x);
X=0;
z=sym('z');
for i=0:l-1
	X=X+x(i+1)*z^(-i);
end
disp('Display output');
disp(X);


% 2.  Z transform of sin(n)
syms z n
f= sin(n);
r=ztrans(f);
disp('Z transform using function');
disp(r);

% 3. Z transform of e^(m + n)
syms z n m
y= exp(m+n);
rr=ztrans(f);
disp("Z transform using function");
disp(rr);
