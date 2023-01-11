function sum = hcalc(y,x)
sum = y(1);
N = length(y);
e0 = cos(x)+1i*sin(x);
ek = cos((-N/2+1)*x)+1i*sin((-N/2+1)*x);
y = y*ek;
for k = 1:N-1
    sum = sum + y(k)*e0;
end

