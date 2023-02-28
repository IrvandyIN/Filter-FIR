clc
clear all

%% Desain Filter FIR
%% Metode Optimal

%% Spesifikasinya
% Tipe Filter = HPF
% Frekuensi sampling (Fs) = 8k Hz
% Frekuensi cut-off (Fc) = 1.5k Hz
% Transition Band = 500 Hz
% Stopband Attenuation = > 40 dB
% Passband ripple = < 0.1 dB
% Orde = 40

%%
F = [0 1000/4000 1500/4000 4000/4000];
A = [0 0 1 1];

w = [1 101];
h = firpm(80,F,A,w)

%%
%%Contoh yang lain
t = (0:1/8000:1); % t dengan frekuensi sampling 8 kilo
x = 0.2*cos(2*pi*4*t) + 5*sin(2*pi*2000*t); %Terdapat 2 frekuensi frekuensi 4Hz dan 2000Hz
plot(x)

%%
%%Coba untuk memfilternya
y = filter(h,1,x); %inputnya x ouputnya y
