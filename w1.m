close all; clear; clc;
Vp = 1; %%amplitud pic
f = 60; %%frecuencia Hz
T = 1 / f; %% periodo fundamental
w = 2 * pi * f; %%frecuencia angular 
Fs = 4000; %%frecuencia de muestreo en Hz
Ts = 1 / Fs; %% periodo de muestro Hz
tf = 5; %%tiempo final s
fo = f/Fs; 
omega = 2 * pi * fo;
%%nm = tf /Ts numero de muestras
nm = tf / Ts;
k = 1:nm;
signal = Vp * sin(omega.*k); %%senal 
figure('Name', 'señal senoidal', 'NumberTitle', 'OFF', 'Color', [1 1 1]);
%%plot(t,signal,'r','LineWidth', 1.5);
plot(k,signal,'b','LineWidth', 1.5);
grid on;
axis([k(1) k(end) Vp*-1.1 Vp*1.1]);
title('señal senoidal', 'FontName', 'Arial', 'Fontsize', 14);
xlabel('Tiempo', 'FontName', 'Arial', 'Fontsize', 12);
ylabel('Amplitud', 'FontName', 'Arial', 'Fontsize', 12);

figure('Name', 'señal discreta', 'NumberTitle', 'OFF', 'Color', [1 1 1]);
%%plot(t,signal,'r','LineWidth', 1.5);
stem(k*Ts,signal,'m','LineWidth', 1.5);
grid on;
axis([k(1)*Ts k(end)*Ts Vp*-1.1 Vp*1.1]);
title('señal discreta', 'FontName', 'Arial', 'Fontsize', 14);
xlabel('samples[k]', 'FontName', 'Arial', 'Fontsize', 12);
ylabel('Amplitud', 'FontName', 'Arial', 'Fontsize', 12);

