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
% Uebungszettel-Nr: Blatt 7
% Aufgabennummer:   7.1 b) c)
% Program name:     MyBisectTest.m
%
% Program(version): MATLAB R2020a
% OS:               Windows 10 64bit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Das Programm testet die Funktion mybisect und plotet die Fehler mit dem
%Semilog-Befehl ab.
function myBisectTest()
f = @ (x) (cos(2.*x)).^2-x.^2;

[x,e,v] = mybisect(f, 0, 0.75);

figure('Name', 'PA7.1.fig','Numbertitle','off');
semilogy((1:1:length(e)),e,'LineWidth',1);

%c) Da das Bisektionsverfahren den Fehler in jeder Iteration laut der
%Theorie halbiert, ist die logarithmische Konvergenzrate, die durch das
%lineare Abfallen in dem Semilog-Plot angegeben wird übereinstimmend mit
%der theorethischen Konvergenzgeschwindigkeit.