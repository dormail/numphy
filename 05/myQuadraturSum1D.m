% myQuadraturSum1D.m start 

% f die zu integrierende funktion
% w quadraturgewichte
% p stuetzstellen der quadratur auf einheitsintervall
% a untere grenze
% b obere grenze
% N anzahl an teil intervallen
function I = myQuadraturSum1D(f,w,p,a,b,N)
	I = 0;
	h = (b-a) / N;
	for i = 1 : N
		x = p .* h;
		x = x .+ a + (i-1) * h;
		I = I + h * myQuadratur1D(f,w,x);
	end
end

% myQuadraturSum1D.m end
