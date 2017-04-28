function [y] = rosensc(xx)
for ii = 1:4
    xxbar(ii) = 15*xx(ii) - 5;
end

sum = 0;
for ii = 1:3
	xibar = xxbar(ii);
	xnextbar = xxbar(ii+1);
	new = 100*(xnextbar-xibar^2)^2 + (1-xibar)^2;
	sum = sum + new;
end

y = (sum - 3.827*10^5) / (3.755*10^5);

end
