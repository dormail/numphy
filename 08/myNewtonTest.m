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
% Uebungszettel-Nr: Blatt 8
% Aufgabennummer:   8.1 b), c)
% Program name:     myNewtonTest.m
%
% Program(version): Octave
% OS:               Fedora 32 WS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Die Funktion testet das Newtonverfahren
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

% zu c):
% beim Newton verfahren erwarten wir eine immer schneller werdende Konvergenz (e < c * q^(2^n)), aufgrund der
% quadratischen Konvergenz.
% Daher steigt der graph hier auch an, während der des bisektionverfahrens weiter sinkt (aufgrund 
% der linearen Konvergenz).
