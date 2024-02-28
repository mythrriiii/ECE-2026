%% 3.4
clc;clear;close all

%% Part(a)   Fill in the values
fs = 1000 ;
Amp = 1 ;
T = 1;
tStop = 5;

tt=0:(1/fs):tStop;
xx=Amp*abs(sin(2*pi*tt/T));

Tsect = 5*T;
Lsect = Tsect*fs;
DBrange = 80;

figure
plotspecDB( xx+j*1e-12, fs, Lsect, DBrange), colorbar, grid on %-- with negative frequencies
ylim([-100, 100])


%% Part(b)   Fill in the values
fs = 1000;
Amp = 1;
T = 2;
tStop = 5;

tt=0:(1/fs):tStop;
xx2=Amp*abs(sin(2*pi*tt/T));

Tsect = 2*T; 
Lsect = Tsect*fs;
DBrange = 80;

figure
plotspecDB(xx2+j*1e-12, fs, Lsect, DBrange), colorbar, grid on %-- with negative frequencies
ylim([-100, 100])

