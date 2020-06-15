function [x, e, v] = myNewton(f, df, x0)
	e = 10^-12; % Genauigkeit

	% rueckgabe werte
	x(50) = 0; % vektor fuer iterierte
	e(50) = 0; % vektor fuer fehler
	v(50) = 0; % vektor fuer funtionswerte

	% startwert setzen
	x(1) = x0;

	for i = 2:50
		v(i) = f(x(i));
		x(i) = x(i-1) + v(i-1) / df(x(i-1));
		e(i) = abs(x(i) - x(i-1));
	end
end
