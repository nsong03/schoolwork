runs = 1000;
counts = (50:100:1050);
averages = zeros(length(counts),1);
for i = 1:length(counts)
    net = 0;
    for j = 1:runs
        net = net+frisbeegame(counts(i));
    end
    average = net/runs;
    averages(i) = average;
end
hold on
plot(counts,averages)
plot(counts,(counts-2)/2)
