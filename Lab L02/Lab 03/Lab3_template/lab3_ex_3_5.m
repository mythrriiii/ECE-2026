%% 3.5
clc; clear; close all

[xx,fs] = audioread('sample.wav');

Tsect = 0.035; %WHAT NUMBER
Lsect = (round(Tsect*fs));
DBrange = 80;

% Linear spectrogram
figure
plotspec( xx+j*1e-12, fs, Lsect), colorbar, grid on %-- with negative frequencies

% DB spectrogram
figure
plotspecDB( xx+j*1e-12, fs, Lsect, DBrange), colorbar, grid on %-- with negative frequencies

