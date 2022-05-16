a=0;b= 2*pi;n=2;
sigma = 2;
i0=quad(f,a,b);
i0=quad(f,a,b,abs(i0*1e-15))
nn=[];ii=[];m=10;
for k=1:m
  nn=[nn,n];
  ii=[ii,qtrap(f,a,b,n)];
  n=n*2;
end
r3=i0-ii;
r4=ii(2:m)-ii(1:m-1);r4=[0,r4];
r5=r4/(2^sigma-1);
r6=r4(2:m-1)./r4(3:m);
r7=log2(abs(r6));
r6=[0,0,r6];
r7=[0,0,r7];
res=[nn',ii',r3',r4',r5',r6',r7']