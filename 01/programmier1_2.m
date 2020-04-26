%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%  Numerische Mathematik fuer Physik und Ingenieurwissenschaften 2020     %%%
%%%  Programmierabgaben (Praktischer Teil des Uebungungsblattes)            %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Student 1: first name, surname
%  Unimail-adress:
%
%  Student 2: first name, surname
%  Unimail-adress:
%
%  Student 3: first name, surname
%  Unimail-adress:
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
% Aufgabennummer:   e.g. 1.2
% Program name:     e.g. Ausloesung beim Polynom 
%
% Program(version): e.g. Octave-3.8.1
% OS:               e.g. Windows 7 64bit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Description of the program
% e.g.                   
%
% Output: Plot von f(x) direkt und durchs Horner Schema
%
clc;       % clear the Wommand Window
close all; % close all plots etc. 
clear all; % delets all data in the Workspace


x = linspace(0.8, 1.2, 0.4 / (5 * 10^(-5)) );
plot(x,f(x));
hold on
plot(x,horner(x));
legend('f(x) direkt', 'f(x) mit dem Hornerschema')


function tmp = horner(x)
    tmp = x - 7;
    tmp = tmp .* x + 21;
    tmp = tmp .* x - 35;
    tmp = tmp .* x + 35;
    tmp = tmp .* x - 21;
    tmp = tmp .* x + 7;
    tmp = tmp .* x - 1;
    
    %tmp = ((((((x - 7) .* x + 21) .* x - 35) .* x + 35) .* x -21) .* x + 7) .* x -1;
end
    
function tmp = f(x)
    tmp = (x - 1).^7;
end
