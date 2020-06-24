% my_jacobi_vector.m start

function [x, numit] = my_jacobi_vector(A,b,x0,eps,maxit)
	n = size(A)(1); % die dimension
	% D = Hauptdiagonale von A
	D = eye(n);
	D = D .* A;
	D_inv = D^-1; % inverse von D

	B = eye(n) - D_inv * A;

	% Berechnung des relativen Eingangsfehlers
	e0 = norm(A * x0 - b) / norm(b);

	x = x0;
	numit = maxit;

	for i = 1:maxit
		x = B * x + D_inv * b;
		abweichung = norm(A * x - b);
		if abweichung < (eps * e0)
			numit = i;
			break;
		end
	end
end

% my_jacobi_vector.m end
