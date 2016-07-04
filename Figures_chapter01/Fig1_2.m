% Figure1.2
clear; close all;

x = 0 : 0.01 : 1;
figure;
y = sin(2 * pi * x);
plot(x, y, 'g-', 'LineWidth', 2); hold on;

x = 0 : 0.1 : 1;
sig = 0.1;
z = sin(2 * pi * x) + normrnd(0, sig, [1, length(x)]);
scatter(x, z, 50, 'MarkerEdgeColor', 'b', 'LineWidth', 2);
xlabel('x');
ylabel('t');
axis([0, 1, -1.5 1.5]);
