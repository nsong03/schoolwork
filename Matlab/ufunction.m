function [t,u] = ufunction(a,b,c,T,f0,N)
h = T / (N-1);
t=(0:h:T);
u = zeros(N, 1);
w = (4*a*c-b^2)^0.5/(2*a);
mu = b/(2*a);
for i = 1:N
    u(i) = f0/(w*a)*sin(w*(t(i)))*exp(-mu*(t(i)));
end




