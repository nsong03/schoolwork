runs = 1000;
m = 100;
n = (1:1:300);
expectedvalue = zeros(length(n),1);
averages = zeros(length(n),1);
for i = 1:length(n)
    net = 0;
    for j = 1:runs
        net = net+ballsandbins(n(i),m);
    end
    average = net/runs;
    averages(i) = average;
end
hold on
scatter(n,averages)
plot(n,(99/100).^(n-1).*n)