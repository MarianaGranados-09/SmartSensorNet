close all; clear; clc;
A = 1; %%amplitud
fo = 1; %%frecuencia inicial
f1 = 10; %%frecuencia final
t1 = 10; %%ventana de tiempo
Fs = 20*f1; %%frecuencia de muestreo
Ts = 1/Fs; %%periodo de muestreo
t = 0:Ts:t1-Ts; %%vector de tiempo
f = ((f1-fo)/ t1).*t+fo; %%variacion lineal de frecuencias 
w = 2*pi.*f; %%frecuencia angular
signal = A*sin(w.*t); %%senial chirp

figure;
plot(t,signal, 'r');
xlabel('Time(s)');
ylabel('Amplitude');
axis([t(1) t(end) A*-1.1 A*1.1]);
title('Chirp signal');
grid on;
