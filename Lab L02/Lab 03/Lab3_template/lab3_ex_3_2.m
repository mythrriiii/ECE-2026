%% 3.2
clc;clear;close all

%% Fill in the values
fs = 2000;
Amp = 1;
T = 1;
tStop = 5;

tt=0:(1/fs):tStop;
xx=Amp*abs(sin(2*pi*tt/T));

Tsect = 5*T;
Lsect = Tsect*fs;

figure
plot(tt,xx);
title('Full-wave Rectified Sine'); xlabel('t [sec]')

figure
plotspec( xx+j*1e-12, fs, Lsect ), colorbar, grid on %-- with negative frequencies
ylim([-20,20])
% *****Hint: Zoom in on the verticle axis to see the harmonics*****

% Fundamental freq = 2 Hz

%% GUI
fseriesdemo       %<==Uncomment to use the GUI

% a1=0.212
% a5=0.006