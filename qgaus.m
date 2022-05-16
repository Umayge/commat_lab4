function S = qgaus(f,a,b,n)
  h = (b-a)/n; x=a:h:b; x(length(x))=[];
  x0=x+h/2; xp=x0+h*sqrt(3/20); xm=x0-h*sqrt(3/20);
  S=(h/18)*(5*sum(feval(f,xm))+8*sum(feval(f,x0))+5*sum(feval(f,xp)));