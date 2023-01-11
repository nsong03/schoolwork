function countone = ballsandbins(n,m)
bins = zeros(m,1);
ballcount = n;
while(ballcount > 0)
    x=randi(m);
    bins(x) = bins(x)+1;
    ballcount = ballcount-1;
end
binswithone = 0;
for i = 1:m
    if(bins(i)==1)
        binswithone = binswithone+1;
    end
end
countone = binswithone;