function game = frisbeegame(n)
marked = zeros(n,1);
ball = zeros(n,1);
ball(2) = 1;
marked(1) = 1;
marked(2) = 1;
y=2;
while(ball(1) ~= 1)
    x = randi(n);
    while( y==x )
        x = randi(n);
    end
    ball=zeros(n,1);
    ball(x) = 1;
    marked(x) = 1;
    y=x;
end
sum = 0;
for i = 1:n
    sum = sum+marked(i);
end
game = n-sum;

