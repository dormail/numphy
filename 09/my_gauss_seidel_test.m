% testskript fuer gauss seidel algorithmus

A = [4 2 0; 2 5 2; 1 2 5];
b = [2;2;2];

x0 = [0;0;0];

eps = 10^-6;

maxit = 50;

A \ b
my_gauss_seidel(A,b,x0,eps,maxit)
