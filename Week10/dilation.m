w = 0:2*pi/20:2*pi;
y = 5*sin(w);
se = [1 0 1 0 1];
yd = imdilate(y, se);
plot(y);
hold on;
plot(yd, '-r');