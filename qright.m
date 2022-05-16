function s = qright(f ,a,b,n)
  h=(b-a)/n;
  x=a:h:b;
  x=x(2:n+1);
  s=h*sum(feval(f,x));