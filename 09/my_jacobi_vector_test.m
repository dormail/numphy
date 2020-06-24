% test des vektor basierten Jacobi loesers

%my_jacobi_vector(A,b,x0,eps,maxit)

A = [4 2 0; 2 5 2; 1 2 5];
b = [2; 2; 2];

x0 = [1; 1; 1];
eps = 10^-6;
maxit = 50;

% genau loesung:
disp(A \ b);
% mit jacobi bestimmt:
disp(my_jacobi(A,b,x0,eps,maxit));

