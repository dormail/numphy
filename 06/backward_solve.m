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
% Uebungszettel-Nr: Blatt 6
% Aufgabennummer:   6.1 b)
% Program name:     backward_solve
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x = backward_solve(LR, y)
	x = y;
	n = size(LR,1);
	x(n) = y(n) / LR(n,n); % letztes element manuell
	% alle weiteren elemente mit for schleife
	for i = (n-1):1
		x(i) = (y(i) - LR(i,i+1) * x(i+1)) / LR(i,i);
	end
end
