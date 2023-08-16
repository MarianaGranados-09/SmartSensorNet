close all; clear; clc;
A = 1;                  %%amplitud
fo = 1;                 %%frecuencia inicial
f1 = 10;                %%frecuencia final
t1 = 10;                %%ventana de tiempo
Fs = 20*f1;             %%frecuencia de muestreo
Ts = 1/Fs;              %%periodo de muestreo
t = 0:Ts:t1-Ts;         %%vector de tiempo
f = ((f1-fo)/ t1).*t+fo; %%variacion lineal de frecuencias
w = 2*pi.*f;          %%frecuencia angular
nm = t1 /Ts;
k=1:nm;

fx = f./Fs;
omega = 2*pi.*fx;


signal = A*sin(omega.*k); %%senial chirp

 
figure;
stem(k,signal, 'r');
xlabel('K');
ylabel('Amplitude');
axis([k(1) k(end) A*-1.1 A*1.1]);
title('Chirp signal');
grid on;
