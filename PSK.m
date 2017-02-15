function PSK(g,f)
 
%Modulaci�n PSK
%Ejemplo para ingresar datos:
%PSK([1 0 1 1 1 0 0 0 1 1],2)
 
if nargin > 2
 
error('Demasiados argumento de entrada');
 
elseif nargin==1
 
f=1;
 
end
 
if f<1;
 
error('Frecuencia tiene que se mayor que 1');
 
end
 
t=0:2*pi/99:2*pi;
 
cp=[];sp=[];
 
mod=[];mod1=[];bit=[];
 
for n=1:length(g);
 
if g(n)==0;
 
die=-ones(1,100);%Modulante
 
se=zeros(1,100);%Se�al
 
else g(n)==1;
 
die=ones(1,100);%Modulante
 
se=ones(1,100);%Se�al
 
end
 
c=sin(f*t);
 
cp=[cp die];
 
mod=[mod c];
 
bit=[bit se];
 
end
 
bpsk=cp.*mod;
 
subplot(2,1,1);plot(bit,'LineWidth',1.5);grid on;
 
title('Se�al Binaria');
 
axis([0 100*length(g) -2.5 2.5]);
 
subplot(2,1,2);plot(bpsk,'LineWidth',1.5);grid on;
 
title('Modulaci�n PSK');
 
axis([0 100*length(g) -2.5 2.5]);