% myQuadraturSum1D_test.m start 

f = @(x) 1 ./ (1 + 25 * x.^2); % runge
g = @(x) exp(x) + 1; % andere function
% Runge funktion, trapez rule
a = -1;
b = 1;
p = [0, 1];
w = [0.5, 0.5];
N = 100;
disp(myQuadraturSum1D(f,w,p,a,b,N));
disp(myQuadraturSum1D(g,w,p,a,b,N));
% simpson rule
p = [0, 0.5, 1];
w = [1/6, 2/3, 1/6];
disp(myQuadraturSum1D(f,w,p,a,b,N));
disp(myQuadraturSum1D(g,w,p,a,b,N));


% myQuadraturSum1D_test.m end 
