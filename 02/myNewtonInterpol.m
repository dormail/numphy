x = [-1, 0, 2];
disp(basisPolynomial(2, x, 1));

function y = myNewtonInter(x, f)
    
end

function c = coef(x,f,i)
    if i == 0
        c = f(1);
    else
        c = f(i) - p(
    end
end

% evaluiert das k-te polynom 
function p = p(c, k, x, x0)
    p = 0;
    for i = 0 : k
        p = p + c(i + 1) * basisPolynomial(k, x, x0);
    end
end


% evaluiert das i-te basis polynom der stellen x an der stelle x0
function y = basisPolynomial(i, x, x0)
   if i == 0
       y = 1;
   else
       y = basisPolynomial(i - 1, x, x0) * (x0 - x(i));
   end
end