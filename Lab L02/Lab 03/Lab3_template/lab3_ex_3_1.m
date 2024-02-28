%% 3.1
% 
clc; clear; close all

fSamp = 2500; %-Number of time samples per second 
dt = 1/fSamp; 
tStart = 0; 
tStop = 5; 
fStart = 400;
fStop = 8000;
tt = tStart:dt:tStop; 
mu = 760; 
fzero = 400; %"
phi = 2*pi*rand; %-- random phase

Lsect = 128; 
Tsect = Lsect/fSamp;
%
psi = 2*pi*mu*tt.^2 + 2*pi*fzero*tt + phi;   %% <=================== FILL IN THE CODE HERE %
cc = real( exp(j*psi) );
% soundsc( cc, fSamp ); %-- uncomment to hear the sound 
plotspec( cc+j*1e-12, fSamp, Lsect ), colorbar, grid on %-- with negative frequencies
