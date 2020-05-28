%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Numerische Mathematik fuer Physik und Ingenieurwissenschaften 2020     %%%
%%%  Programmierabgaben (Praktischer Teil des Uebungungsblattes)            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Student 1: Luca Daniel, Dietrich
%  Unimail-adress: luca.dietrich@tu-dortmund.de
%
%  Student 2: Muhammed Tahir, Kamcili
%  Unimail-adress: tahir.kamcili@tu-dortmund.de
%
%  Student 3: Matthias Werner Yarael, Maile
%  Unimail-adress: matthias.maile@tu-dortmund.de
%
%  Student 4: Alfredo, Manente
%  Unimail-adress: alfredo.manente@tu-dortmund.de
%
%
% Uebungszettel-Nr: Blatt 5
% Aufgabennummer:   5.1 b)
% Program name:     myQuadraturSum1DTest
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Das Skript testet die Funktion myQuadraturSum1D mit zwei Testfunktionen
% f(x) (Runge Funktion), und g(x) = exp(x) + 1.
% Dazu wird die genauigkeit bei verschiedenen N (menge an Unterteilungen)
% bei trapez und simpson regel gemessen (an beiden Funktionen)

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

% graph anmerkungen
title('Integral der Runge-Funktion bei verschiedenen N');
legend('Trapezregel', 'Simpsonregel');
xlabel('N');
ylabel('I_N(f)');

subplot(2,1,2)
loglog(n,I_g_trapez);
hold on;
loglog(n,I_g_simpson);

% graph anmerkungen
title('Integral der Funktion f(x) = 1 + exp(x) bei verschiedenen N');
legend('Trapezregel', 'Simpsonregel');
xlabel('N');
ylabel('I_N(f)');
% myQuadraturSum1D_test.m end 
