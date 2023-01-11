function pergaussian = pergaussian(n,alpha)
pergaussian = @(x) 0;
for i=1:n
    pergaussian = @(x) pergaussian(x) + exp(-alpha*(x-2*pi*i)^2);
end