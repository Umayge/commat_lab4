function S=qsimp(f,a,b,n)
  h=(b-a)/n; x=a:h:b;
  S=(h/3)*(feval(f,x(1))+feval(f,x(n+1))+4*sum(feval(f,x(2:2:n)))+2*sum(feval(f,x(3:2:n-1))));