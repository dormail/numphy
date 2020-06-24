% testskript fuer gauss seidel algorithmus

n = 20;

A = [4 2 0; 2 5 2; 1 2 5];
b = [2;2;2];
		
[A, b] = my_test_system(n);

x0 = b;

eps = 10^-6;

maxit = 10;

A \ b
[x, numit] = my_gauss_seidel(A,b,x0,eps,maxit)
