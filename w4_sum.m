t=0;n=1;p=2;
a=0;b=2^t;
m=10;ii=[];nn=[];mk=[];si=[];
for k=1:m
nn=[nn,n];
mk=[mk,p];
i0=quad(f,a,b);
i0=quad(f,a,b,abs(i0*1e-10));
ii=[ii,i0];
sum(ii)
si=[si,sum(ii)];
t=t+1;
a=b;
b=2^t;
p=p*2;
n=n+1;
end
res=[nn',mk',ii',si']