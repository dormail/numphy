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
% Aufgabennummer:   6.1 a)
% Program name:     thomas_decompose
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function LR = thomas_decompose(A)
	% die ersten zwei eintraege durchs kopieren der gesamten Matrix
  	LR = A;
	n = size(A,1);
	% 2,3,...,n-1 mit einer for-schleife
	for i = 2:(n-1) 
		% untere nebendiagonale festlegen (gamma)
		LR(i, i-1) = LR(i, i-1) / LR(i - 1,i - 1);
		% diagonalelemente (alpha)
		LR(i,i) = A(i,i) - LR(i, i-1) * LR(i-1,i);
		% obere nebendiagonale (beta) ist gleich der oberen vorher
		% wurde also durchs kopieren mitgenommen
	end
	% n-te eintraege manuel
	LR(n, n-1) = LR(n, n-1) / A(n-1,n-1);
	LR(n,n) = A(n,n) - LR(n, n-1) * LR(n-1, n);
	LR = sparse(LR);
end
