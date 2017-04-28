function [y] = mccorm(xx)
x1 = xx(1);
x2 = xx(2);

term1 = sin(x1 + x2);
term2 = (x1 - x2)^2;
term3 = -1.5*x1;
term4 = 2.5*x2;

y = term1 + term2 + term3 + term4 + 1;

end
