function yout = interpolate1(xin,yin,xout)
xin = xin(:);
yin = yin(:);
xout = xout(:); % make into a column vector
n = length(xin);
m = length(xout);
yout = zeros(m,1);
for j=1:n
lj = ones(m,1);
for k=1:n
if k==j, continue; end
fac = 1.0 / ( xin(j) - xin(k) );
lj = lj * fac .* ( xout - xin(k) );
end
yout = yout + yin(j) .* lj;
end