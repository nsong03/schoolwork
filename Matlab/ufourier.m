function uff = ufourier(a,f0,w,mu,omega,samples)
uff = zeros(samples+1,1);
h = (2*omega/samples);
interval = (-omega:h:omega);
for i = 1:samples+1
    uff(i) = 1/(2*pi)^0.5*f0/(w*a)*1/(2*1i)*(1/(mu+1i*(interval(i)-w))-1/(mu+1i*(interval(i)+w)));
end

