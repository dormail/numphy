% 4. uebungsblatt

function I = myQuadratur1D(f,w,x)
	I = 0;
	for i = 1:length(w)
		I = I + w(i) * f(x(i));
		disp(i)
	end
end
