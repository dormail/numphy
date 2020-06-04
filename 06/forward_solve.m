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
% Program name:     forward_solve
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function y = forward_solve(LR, b)
	% erster eintrag wird durch kopieren des gesamten Vektors 
	% uebernommen
	y = b;
	n = size(LR,1);
	% der rest mit einer for schleife
	for i = 2:n
		y(i) = b(i) - LR(i, i-1) * y(i-1);
	end
end

