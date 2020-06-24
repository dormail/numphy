% my_jacobi.m start

function [x, numit] = my_jacobi(A,b,x0,eps,maxit)
	% e0 = eingangsfehler 
	e0 = norm(A * x0 - b) / norm(b);

	n = size(A)(1); % die dimension
	x = x0;
	xnew = x;
	numit = maxit;

	% for schleife fuer iterationsschritte
	for k = 1:maxit
		% for schleife fuer einzelnen eintraege in xnew
		for i = 1:n
			% variable fuer a_ij x_j^k zurueck setzen
			summe = 0; 
			% for schleife um durch matrix zu iterieren
			for j = 1:n
				if j == i
					continue
				end
				summe = summe + A(i,j) * x(j);
			end
			xnew(i) = (b(i) - summe) / A(i,i);
		end

		% überpruefung auf vorzeitigen abbruch
		abweichung = norm(A * x - b);
		if abweichung < (eps * e0)
			numit = k;
			break;
		end
		x = xnew;
	end
end

% my_jacobi.m end
