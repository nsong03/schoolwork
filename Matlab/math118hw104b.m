% define N first
N = 50;
xinU = linspace(-1,1,N+1)'; % uniform
xinC = cos(linspace(-pi,0,N+1)'); % Chebyshev
xout = linspace(-1,1,500)';
f = @(x) 1.0 ./ (1+9*x.^2);
youtU = interpolate1(xinU,f(xinU),xout);
youtC = interpolate1(xinC,f(xinC),xout);
yerrU = abs(youtU - f(xout));
yerrC = abs(youtC - f(xout));
figure(1);
plot(xout,f(xout),'k-','linewidth',1); hold on;
plot(xout,youtU,'r-','linewidth',1);
plot(xinU,f(xinU),'k.','markersize',10); hold off;
figure(2);
plot(xout,f(xout),'k-','linewidth',1); hold on;
plot(xout,youtC,'b-','linewidth',1);
plot(xinC,f(xinC),'k.','markersize',10); hold off;
figure(3);
semilogy(xout,yerrU,'r-','linewidth',1); hold on;
semilogy(xout,yerrC,'b-','linewidth',1); hold off;