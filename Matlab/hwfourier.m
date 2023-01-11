N = 60;
alpha = 5;
nvals = (1:1:N);
points = 2*pi*nvals/N;
f = pergaussian(N,alpha);
samples=zeros(length(points),1);
for i = 1:length(points)
    samples(i) = f(points(i));
end

fourier = abs(fft(samples));
lamb = lambda(2*pi,N);
M = @(x) exp(alpha*(abs(x)/(2*alpha))^2-abs(x)/(2*alpha)*abs(x));
krange = (-N/2:0.005:N/2);
mvals = zeros(length(krange),1);
for i = 1:length(mvals)
     mvals(i) = M(krange(i));
end
hold on
kvals = (-N/2+1:1:N/2);
plot(krange,mvals)

scatter(kvals,fourier)

set(gca,'YScale','log')

