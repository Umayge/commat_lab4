function s = qcenter(f ,a,b,n)
  h=(b-a)/n;
  x=a:h:b;
  x=x(1:n);
  s=h*sum(feval(f,x+h/2));