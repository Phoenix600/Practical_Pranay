x=input('enter the sequene x');
h=input('enter the sequene h');
sx=input('enter starting point of x');
sh=input('enter starting point of h');
sy=sx+sh;
 
lx=length(x); 
lh=length(h); 
 
ky=sy:((lx+lh-1)+sy-1);
 
if lx>lh 
h=[h zeros(1,lx-lh)]; 
else 
x=[x zeros(1,lh-lx)]; 
end 
 
y=zeros(1,lx+lh-1); 
x=fliplr(x); 
 
for i=1:length(y)
    
if i<=length(x) 
y(i)=sum(x(1,length(x)-i+1:length(x)).*h(1,1:i)); 
else 
j=i-length(x); 
y(i)=sum(x(1,1:length(x)-j).*h(1,j+1:length(h))); 
end 
 
end
lx=length(x); 
lh=length(h); 
 
kx=sx:(lx+sx-1);
kh=sh:(lh+sh-1);
 
 subplot(3,1,1)
stem(kx,x)
subplot(3,1,2)
stem(kh,h)
subplot(3,1,3)
stem(ky,y);