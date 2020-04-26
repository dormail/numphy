%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Numerische Mathematik fuer Physik und Ingenieurwissenschaften 2020     %%%
%%%  Programmierabgaben (Praktischer Teil des Uebungungsblattes)            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Student 1: Tahir Kamcili
%  Unimail-adress: Tahir.Kamcili@tu-dortmund.de
%
%  Student 2: Luca Daniel Dietrich
%  Unimail-adress:
%
%  Student 3: Matthias Maile
%  Unimail-adress: matthias.maile@tu-dortmunde.de
%
%  Student 4: first name, surname
%  Unimail-adress:
%
%  Student 5: first name, surname
%  Unimail-adress:
%
%  Student 6: first name, surname
%  Unimail-adress:
%
% Uebungszettel-Nr: e.g. Blatt 1
% Aufgabennummer:   e.g. 1.1
% Program name:     e.g. e-Funktion 
%
% Program(version): e.g. Matlab 9.8
% OS:               e.g. Debian 10 64 bit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description of the program
% e.g.                   
% Intput: n ist die Menge an Termen fuer die Bestimmung von e
%
% Output: Plot der Konvergenz der Taylor-Reihe der e-Funktion am Punkt 
% x = -5.5
%
clc;       % clear the Wommand Window
close all; % close all plots etc. 
clear all; % delets all data in the Workspace

format long

% a) exp(-5.5) mit verschiedenen precisions
n = linspace(3,30,10);
for i = 1 : 1 : 10
    y1(i) = e(n(i),-5.5);
    y2(i) = e_sign(n(i), -5.5);
end

% ausgabe: plot und konsole
plot(n,y1);
disp(y1);
hold on
plot(n,y2);
disp(y2);

% fak(x) berechnet fakultaet von x rekursiv
function tmp=fak(x)
    if x <= 1
        tmp = 1;
    else
        tmp = x .* fak(x-1);
    end
end

% e(n,x) berechnet e^x mit n iterationen ueber die summe
function e=e(n,x)
    e = 0;
    for i = 0 : 1 : n
        e = e + x.^i / fak(i);
    end
end

% e_sign(n,x) berechnet e^x mit n iterationen, benutzt jedoch den kehrwert.
function tmp = e_sign(n,x)
    if x > 0
        tmp = e(n,x);
    elseif x < 0
        tmp = 1 / e(n, -1 * x);
    elseif x == 0
        tmp = 0;
    end
end
    
    