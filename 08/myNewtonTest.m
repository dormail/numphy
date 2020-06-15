clear all;
close all;

f = @(x) (cos(2*x)).^2 - x.^2;
df = @(x) -4 * cos(2*x) * sin(2*x) - 2 * x;

x0 = 0.75;
x00 = 0;

[x1,e1,v1] = myNewton(f, df, x0);
[x2,e2,v2] = mybisect(f, x00, x0);

semilogy(e1);
hold on;
semilogy(e2);

