function s = qtrap(f ,a,b,n)
  h=(b-a)/n;
  x=a:h:b;
  x=x(1:n+1);
  s=(h/2)*(feval(f,x(1))+feval(f,x(n+1))+2*sum(feval(f,x(2:n))));