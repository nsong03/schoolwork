
a1=18e-6;
a2=0.5e-6;
t0=330;
i=1;
h=1e-6;
for t=0:10:330
G(i)=(1.5*(a2-a1)*(t-t0))/h;
T(i)=t;
i=i+1;
end 
G1=G*(10^-6);
plot(T,G1);
