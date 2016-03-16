func=@(x1,x2) x1^2+x1*x2-10;
x0=1.5;
es=0.0001;
maxit=50;
[x,f,ea,iter]=newtmult(func,x0,es,maxit)
