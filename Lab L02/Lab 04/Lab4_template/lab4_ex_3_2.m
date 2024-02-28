%% 3.2
clc;clear;close all

A=5;
fc = 1200;
alpha = 1000;
beta = 1.5;
gamma = 0;

fs = 4000;
tstart = 0;
dur = 2;

% Your code: Generate the signal
tt=0:(1/fs):dur;
xx = A*cos(2*pi*fc*tt+alpha*cos(2*pi*beta*tt+gamma));

% Your code: plot spectrogram
spectrogram(xx,256,[ ],[ ],fs,'yaxis');

