clear all;
close all;

f = @(x) (cos(2*x)).^2 - x.^2;
df = @(x) -4 * cos(2*x) * sin(2*x) - 2 * x;

x0 = 0.75;

[x,e,v] = myNewton(f, df, x0);

semilogy(e);
hold on;
