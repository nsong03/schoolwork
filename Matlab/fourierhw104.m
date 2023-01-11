f = @(x) -1 + 1250*x.^2 - 260000*x.^4 + 21528000*x.^6 - 947232000*x.^8 ...
+ 25638412800*x.^10 - 466152960000*x.^12 + 6034375680000*x.^14 ...
- 57930006528000*x.^16 + 424820047872000*x.^18 - 2432653747814400*x.^20 ...
+ 11057517035520000*x.^22 - 40383975260160000*x.^24 ...
+ 119536566770073600*x.^26 - 288405684905574400*x.^28 ...
+ 568855350917201920*x.^30 - 917508630511616000*x.^32 ...
+ 1206989963132928000*x.^34 - 1287455960675123200*x.^36 ...
+ 1102487181118668800*x.^38 - 746299014911098880*x.^40 ...
+ 390051749953536000*x.^42 - 151732604633088000*x.^44 ...
+ 41341637204377600*x.^46 - 7036874417766400*x.^48 + 562949953421312*x.^50;

x = linspace(-1,1,1000);
tn1 = ones(1,1000);
tn = x;
for k=1:49
tmp = 2*x.*tn - tn1;
tn1 = tn;
tn = tmp;
end
plot(x,tn1)
