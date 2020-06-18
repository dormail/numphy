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
% Aufgabennummer:   8.1 a)
% Program name:     myNewton.m
%
% Program(version): Octave
% OS:               Fedora 32 WS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Die Funktion implementiert das Newtonverfahren
function [x, e, v] = myNewton(f, df, x0)
	e = 10^-12; % Genauigkeit

	% rueckgabe werte
	x = []; % vektor fuer iterierte
	e = []; % vektor fuer fehler
	v = []; % vektor fuer funtionswerte

	% startwert setzen
	x(1) = x0;
	x(2) = x0 - f(x0) / df(x0);

	for i = 2:50
		v = [v f(x(i))];
		x = [x (x(i-1) + v(i-1) / df(x(i-1)))];
		e = [e (abs(x(i) - x(i-1)))];
	end
end
