T = 16;
a=1;
b=2;
c=37;
f0=1;
N = 1024;
w = sqrt(4*a*c-b^2)/(2*a);
mu = b/(2*a);
v = fft(ufunction(a,b,c,T,f0,N));


continuous = ufourier(a,f0,w,mu,omega,5000);
omega = pi*N/(2*T);
h = (2*omega/5000);
interval = (-omega:h:omega);
plot(interval,abs(continuous))
lamb = lambda(T,N);


hold on
plot(interval,abs(continuous))
plot(lamb,(T/N*1/(2*pi)^0.5)*abs(v),'Marker','o')
hold off
xlim([-20 20])




