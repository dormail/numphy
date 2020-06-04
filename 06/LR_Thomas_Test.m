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
% Aufgabennummer:   6.1 c) d)
% Program name:     LR_Thomas_Test
%
% Program(version): Octave
% OS:               Fedora 32 Workstation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
clear all;

% testmatrix
A = @(n) gallery('tridiag', n, -2, 8, -2);
% testvektor
b = @(n) [ones(floor(0.5 * n), 1); 2 .* ones(floor(0.5 * n), 1)];

i = 10000;
tic;
LR = thomas_decompose(A(i));
t = toc;
y = forward_solve(LR, b(i));
x = backward_solve(LR, y);
disp(t);
residuum = norm(A(i) * x - b(i))

i = 100000;
tic;
LR = thomas_decompose(A(i));
t = toc;
y = forward_solve(LR, b(i));
x = backward_solve(LR, b(i));
disp(t);
residuum = norm(A(i) * x - b(i))

i = 1000000;
tic;
LR = thomas_decompose(A(i));
t = toc;
y = forward_solve(LR, b(i));
x = backward_solve(LR, b(i));
disp(t)
residuum = norm(A(i) * x - b(i))

i = 10000000;
tic;
LR = thomas_decompose(A(i));
t = toc;
y = forward_solve(LR, b(i));
x = backward_solve(LR, b(i));
disp(t)
residuum = norm(A(i) * x - b(i))

% aufgabe d):
% die rechenzeit t wuchs proportional mit der laenge des vektors b.
% (0.40s, 4.905s, 50s, letzten habe ich nicht abgewartet)
% damit entspricht die rechenzeite O(n), also alpha = 1.

% bei dem gegebenen program wirken n=10 und n=100 als waere es ebenfalls
% O(n) (n wuchs um 10, t wuchs um ungefaher 10).
% fuer 1000 wuerde man die 10fache bzw 100fache rechen zeite von den
% vorherigen erwarten. Die tatsaechliche rechenzeit liegt allerdings
% um etliche groessenordnungen drueber, sodass das gegebene programm
% kein O(n) wachstum besitzt, sondern mehr rechenzeit benoetigt

% eof
