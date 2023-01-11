function lamb = lambda(T,N)
lamb = zeros(N,1);
for i = 1:N
    if i <= N/2+1
        lamb(i) = 2*pi/T*(i-1);
    end
    if i >= N/2+2
        lamb(i) = 2*pi/T*(i-1-N);
    end
end
