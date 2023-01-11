N = 50;
theta = (0:1:N)*pi/N;
chebnodes = cos(theta);
theta2 = (0:1:2*N)*pi/N;
chebnodes2 = cos(theta2);
f = @(x)(abs(x-1i));
samples = zeros(N+1,1);
for i = 1:(N+1)
    samples(i) = f(chebnodes(i));
end
extension = zeros(2*N,1);
extension(1) = samples(1);
extension(N+1) = samples(N+1);
for i = 1:(N-1)
    extension(N+1+i) = samples(N+1-i);
    extension(N+1-i) = samples(N+1-i);
end

yhat = fft(extension)/(2*N);
ahat = zeros(N+1,1);
ahat(1) = yhat(1);
ahat(N+1) = yhat(N+1);
for i = 2:(N)
    ahat(i) = 2*yhat(i);
end

p = 1+2^0.5;
c = 3^0.5;
kvals = (0:0.01:N);
bound = 2.*c.*p.^(-kvals);
nums = (0:1:N);

hold on
scatter(nums, abs(ahat));
plot(kvals, bound);
set(gca,'YScale','log');




