% Figure 1.4 Plots of polynomials having various orders M
clear; close all;
figure;
x = linspace(0, 1, 10);
v = linspace(0, 1, 100);
sig = 0.2;
z = sin(2 * pi * x) + normrnd(0, sig, [1, length(x)]);
yo = sin(2 * pi * v);

vM = [0, 1, 3, 9];
for i = 1 : length(vM)
    subplot(2, 2, i);
    M = vM(i);
    p = polyfit(x, z, M);
    y = polyval(p, v);
    
    
    plot(v, yo, 'g-', 'LineWidth', 2); hold on;
    plot(v, y, 'r-', 'LineWidth', 2); hold on;
    scatter(x, z, 50, 'MarkerEdgeColor', 'b', 'LineWidth', 2); hold on;
    xlabel('x'); ylabel('t'); 
    title(['M = ', num2str(M)]);
    axis([0, 1, -1.5 1.5]);
end



