function S=qleft(f,a,b,n)
  h=(b-a)/n; x=a:h:b; x=x(1:n);
  S=h*sum(feval(f,x));