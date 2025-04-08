%% Phase angle calculation and graphs
R=4300;
C=0.314*10^(-3);
L=1.7*10^(-3);
f_s=50; % Source Frequency(50)
f=linspace(0,1000);
w=2*pi*f; % Source angular frequency (314.1592654)
f_r=1/(2*pi*sqrt(L*C)); % Resonance frequency(217.8365985)
phase_angle = atan((w.*L - (1./(w.*C))) ./ R);

semilogx(f, rad2deg(phase_angle), 'LineWidth', 2);
hold on;
yline(0,LineStyle="--"); %In this situation resonance frequency is active
xticks([10^0, 10^1, 10^2, 10^3]) % Edits the x axis label

xlabel("Frequency(Hz)");
ylabel("Phase angle (degree)");
title("Phase angle respect to the frequency");