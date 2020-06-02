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
% Aufgabennummer:   6.1
% Program name:     thomas_decompose
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function LR = thomas_decompose(A)
  	LR = A;
	n = size(A,1);
	% die ersten zwei eintraege sind trivial
	%LR(1,1) = A(1,1);
	%LR(1,2) = A(1,2);
	% 2,3,...,n-1 mit einer for-schleife
	for i = 2:(n-1) 
		% diagonalelemente
		LR(i,i) = A(i,i) - LR(i, i-1) / LR(i, i-1);
		% untere nebendiagonale festlegen
		LR(i, i-1) = A(i, i-1) / LR(i,i);
		% obere nebendiagonale
		LR(i, i+1) = A(i, i+1);
	end
	% n-te eintraege manuel
	A(n,n) = A(n,n) - LR(n-1, n-2) * LR(n-1, n);
	LR(n, n-1) = A(n, n-1) / A(n,n);
	%LR = sparse(LR);
end
