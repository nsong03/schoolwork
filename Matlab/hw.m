alpha = 5;
f = @(k) exp(-alpha*(k-2*pi*0)^2);
g = @(k) exp(-alpha*(k-2*pi*1)^2);
range = (0:0.002:2*3.14159);
sum = zeros(length(range),1);
for i = 1:length(range)
    sum(i) = f(range(i))+g(range(i));
end
plot(range,sum)
N = 60;
