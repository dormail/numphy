% my_gauss_seidel.m start
function [x, numit] = my_gauss_seidel(A,b,x0,eps,maxit)
	n = size(A)(1); % dimension

	% D und L wie im skript definiert
	I = eye(n);
	D = I .* A; % D = Diagonale
	L = tril(A) - D; % L = unteres Dreieck

	% damit B und c nicht immer berechnet werden müssen
	B = I - inv(D + L) * A;
	c = inv(D + L) * b;

	% startwerte
	x = x0;
	numit = 0;

	% relativer eingangsfehler
	e0_rel = norm(A * x0 - b) / norm(x0);

	for i = 1:maxit + 1
		if i > maxit % warnung
			warning('Maximum number of iterations reached');
		end
		x = B * x + c;

		e = norm(A * x - b);

		if e < eps * e0_rel % abbruch bei kleinem fehler
			break;
		end

		numit = numit + 1;
	end
end

% my_gauss_seidel.m end
