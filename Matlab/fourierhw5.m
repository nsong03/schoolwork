f = @(x)(3./(5-4.*cos(x)));
points = (0:1:107)*2*pi/108;
y = zeros(108,1);
for i = 1:108
    y(i) = f(points(i));
end

yhat = fft(y)/108;
yhattranspose = zeros(108,1);
for i = 1:54
    yhattranspose(54+i) = yhat(i);
    yhattranspose(i) = yhat(i+54);
end
k = (-54:1:53);
guess = @(x)(2.^(-abs(x)));
kguess = linspace(-54,54,400);

hold on
plot(k,yhattranspose)
plot(kguess,guess(kguess))

