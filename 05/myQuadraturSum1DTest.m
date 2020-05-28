% myQuadraturSum1D_test.m start 
close all;
clear all;

f = @(x) 1 ./ (1 + 25 * x.^2); % runge
g = @(x) exp(x) + 1; % andere function
a = -1;
b = 1;
p_trapez = [0, 1];
w_trapez = [0.5, 0.5];
p_simpson = [0, 0.5, 1];
w_simpson = [1/6, 2/3, 1/6];

n = linspace(1,1000,1000);
I_runge_trapez = n;
I_runge_simpson = n;
I_g_trapez = n;
I_g_simpson = n;
for i = 1:1000
	I_runge_trapez(i) = myQuadraturSum1D(f, w_trapez, p_trapez, -1, 1, n(i));
	I_runge_simpson(i) = myQuadraturSum1D(f, w_simpson, p_simpson, -1, 1, n(i));
	I_g_trapez(i) = myQuadraturSum1D(g, w_trapez, p_trapez, 0, 1, n(i));
	I_g_simpson(i) = myQuadraturSum1D(g, w_simpson, p_simpson, 0, 1, n(i));
end

subplot(2,1,1)
loglog(n,I_runge_trapez);
hold on;
loglog(n,I_runge_simpson);
subplot(2,1,2)
loglog(n,I_g_trapez);
hold on;
loglog(n,I_g_simpson);
% myQuadraturSum1D_test.m end 
