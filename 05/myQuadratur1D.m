% myQuadratur1D.m start 

% f function, w quadratur gewichte, x stuetzstellen
function I = myQuadratur1D(f,w,x)
	I = 0;
	for i = 1:length(w)
		I = I + w(i) * f(x(i));
	end
end

% myQuadratur1D.m end
