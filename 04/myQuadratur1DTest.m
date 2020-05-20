% test funktion

% die funktion
f = @(x) x^(-2);

% integrationsgrenzen
a = 0.5;
b = 1;

% Trapezregel
x = [a,b]; % erzeugung der stuetzstellen
w = (b-a)/2; % erzeugung der Gewichte

I_trapez = myQuadratur1D(f,w,x);
I_trapez

% Simpsonregel
x = linspace(a, b, 3); % stuetzstellen
w = (b-a)/6 * [1, 4 , 1];
I_simpson = myQuadratur1D(f,w,x);
I_simpson

% newton-cotes
x = linspace(a, b, 4); % stuetzstellen
w = (b-a)/8 * [1, 3, 3, 1];
I_simpson = myQuadratur1D(f,w,x);
I_simpson

