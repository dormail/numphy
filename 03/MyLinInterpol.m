% MyLinInterpol.m start 

% evaluiert xEval zu mit der linearean stueckweisen interpolation
% stueztstellen (x(i), f(i))
% iteriert durch xEval, ruft funktion MyPiecewiesInterVal auf
function result = MyPiecewiseInterpol(x,f, xEval)
	result = []
	for i = 1 : length(xEval)
		result(i) = MyPiecewiseInterVal(x, f, xEval(i))
	end
end

function val = MyPiecewiseInterVal(x,f, xVal)
	for i = 1 : length(x) - 1
		% falls xVal auf einer Stuetzstelle liegt
		if x(i) == xVal
			val = x(i)
		end
		if x(i+1) == xVal
			val = x(i+1)
		end
		% val = wert links + steigung * differenz
		if x(i) < xVal && xVal < x(i+1)
			val = f(i) + (xVal - x(i)) * (f(i + 1) - f(i)) / (x(i+1) - x(i))
		end
	end
end
	

% MyLinInterpol.m end
