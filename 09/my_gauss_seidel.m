% my_gauss_seidel.m start
function [x, numit] = my_gauss_seidel(A,b,x0,eps,maxit)
	n = size(A)(1); % dimension

	% D und L wie im skript definiert
	I = eye(n);
	D = I .* A; % D = Diagonale
	L = tril(A) - D; % L = unteres Dreieck

	B = I - inv(D + L) * A;
	c = inv(D + L) * b;
	x = x0;
	iterator = 0;

	for i = 1:maxit
		x = B * x + c;

		iterator = iterator + 1;
	end
end

% my_gauss_seidel.m end
