% myPotenzmethode.m start

function [z,lambda] = myPotenzmethode(A,z0,tol,maxit)
	xk = z0;
	for i = 1:maxit + 1
		% abbruch bei zu vielen iterationen
		if i > maxit 
			break;
		end

		% berechne naechsten vektor
		xk = A * xk;
		xk = xk / det(xk);

		% berechne naechsten eigenwert
		lk 




% myPotenzmethode.m end
