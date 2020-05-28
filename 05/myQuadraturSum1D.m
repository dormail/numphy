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
% Aufgabennummer:   5.1 a)
% Program name:     myQuadraturSum1D
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Die Funktion myQuadratur1D berechnet numerisch zusammengesetzte Integrale.
% Sie greift dabei auf die Funktion myQuadratur1D zurueck (vom 4. Uebungszettel)

close all;
clear all;

% f die zu integrierende funktion
% w quadraturgewichte
% p stuetzstellen der quadratur auf einheitsintervall
% a untere grenze
% b obere grenze
% N anzahl an teil intervallen
function I = myQuadraturSum1D(f,w,p,a,b,N)
	I = 0;
	h = (b-a) / N;
	for i = 1 : N
		x = p .* h;
		x = x .+ a + (i-1) * h;
		I = I + h * myQuadratur1D(f,w,x);
	end
end

% myQuadraturSum1D.m end
