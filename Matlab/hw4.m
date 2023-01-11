N = 128;
Nfine = 640;
f = @(x) 1/(5+4*cos(x));
incone = 2*pi/N;
gridone = 2*pi*(0:1:N-1)/N;
incfine = 2*pi*Nfine;
gridfine = 2*pi*(0:1:Nfine-1)/Nfine;
fcoarse = zeros(length(gridone),1);
ffine = zeros(length(gridfine),1);
for i = 1:length(gridone)
    fcoarse(i) = f(gridone(i));
end
for i = 1:length(gridfine)
    ffine(i) = f(gridfine(i));
end
ycoarse = fft(fcoarse);
yfine = fft(ffine);

gcoarse = zeros(length(gridone),1);
gfine = zeros(length(gridfine),1);
for i = 1:length(gcoarse)
    gcoarse(i) = gcalc(ycoarse,gridone(i));
end
for i = 1:length(gfine)
    gfine(i) = gcalc(yfine,gridfine(i));
end
hfine = zeros(length(gridfine),1);
for i = 1:length(hfine)
    hfine(i) = hcalc(yfine,gridfine(i));
end

hold on
plot(gridone,fcoarse)
scatter(gridfine,real(hfine)/640)
hold off


