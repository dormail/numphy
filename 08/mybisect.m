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
% Aufgabennummer:   7.1 a)
% Program name:     mybisect.m
%
% Program(version): MATLAB R2020a
% OS:               Windows 10 64bit
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Die Funktion implementiert das Bisektonsverfahren
function [X,e,v] = mybisect(f,x00,x0)
X = [];
X(1) = ((x00+x0)/2);
if f(X(1))*f(x00) < 0, x0 = X(1), end;
if f(X(1))*f(x0) < 0, x00 = X(1), end;
e = [];
e(1) = X(1);
v = [];
v(1) = f(X(1));
if f(X(1)) ~= 0
k=2;
while 1
X = [X ((x00+x0)/2)];
v = [v f(X(k))];
e = [e (abs(X(k) - X(k-1)))];
if f(X(k))*f(x00) < 0, x0 = X(k), end;
if f(X(k))*f(x0) < 0, x00 = X(k), end;
if f(X(k)) == 0, break, end;
if (abs(X(k) - X(k-1)) < 10^-12), break, end;
k = k+1;
end
end



