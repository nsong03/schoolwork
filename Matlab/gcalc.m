function sum = gcalc(y,x)
sum = y(1);
e0 = cos(x)+1i*sin(x);
ek = 1;
N = length(y);
for k = 2:N
    ek = ek*e0;
    sum = sum + y(k)*ek;
end



