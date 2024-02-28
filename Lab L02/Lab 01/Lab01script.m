%% In-Lab Exercises
% Lab 01 
% Mythri Muralikannan

%% 3.1 Interactive Input in MATLAB

dbstop in Lab01script.m at 9
strInput = input ("Input text: ", "s");
strRev = strInput(end:-1:1)

%% 3.2 Vectorization


%--- make a plot of sum of cosines
dt = 1/800;
XX = rand(1,3).*exp(2i*pi*rand(1,3)); %--Random amplitude and phases
freq = 20;
ccsum = zeros(1,500);
for kx = 1:length(XX)
    tt(1:500) = (1:500)*dt;
    ccsum (1:500) = ccsum(1:500) + abs(XX(kx)).*cos((2*pi*freq).*(1:500)*dt + angle(XX(kx)));
end
plot(tt,ccsum) %-- Plot the sum sinusoid
grid on, zoom on, shg


%% 3.3 Generating Sinusoids and Decaying Sinusoids

%Decaying Sinusoid

A = 10;
b1 = 0.8;
b2 = 3;
freq = 40;
omega = 2*pi*freq;
phi = pi /4;
fs = 8000;
tsta = 0;
tend = 80;


xs = myDecayingSinusoid(A, b1, omega, phi, fs, tsta, tend);
xs2 = myDecayingSinusoid(A, b2, omega, phi, fs, tsta, tend)
%<--- plot first three cycles of the generated sinusoid
ts = tsta:1/fs:tsta+tend/freq;
Lt = length(ts);
plot( ts, xs(1:Lt), 'b', ts, xs2(1:Lt), 'r'), grid on
title('TEST PLOT of TWO SINUSOIDS (scaling by 2)')
xlabel('TIME (sec)')


%% 3.4 Reading WAV File into MATLAB an Audio Array

[xx, fs] = audioread("ece2026Lab01voice.wav")

tt = length(xx) / fs

soundsc(xx, fs)

%plot here
ts = 0.25:1/fs:0.5;
plot( ts, xx(0.25*fs:0.5*fs), 'b-'), grid on
title('Sound Wave');
xlabel('TIME (sec)');


%% 3.5 

xs = myDecayingSinusoid(A, b1, omega, phi, fs, tsta, tend);
%<--- plot first three cycles of the generated sinusoid
ts = tsta:1/fs:tsta+tend/freq;
Lt = length(ts);
plot (ts, xs(Lt:-1:1), 'g'), grid on

%% Functions

% Sinusoid

function xs = mySinusoid(amp, freq, pha, fs, tsta, tend)
% amp = amplitude
% freq = frequency in cycle per second
% pha = phase, time offset for the first peak
% fs = number of sample values per second
% tsta = starting time in sec
% tend = ending time in sec
tt = tsta : 1/fs : tend; % time indices for all the values
xs = amp * cos( freq*2*pi*tt + pha );
end


% Decaying Sinusoid
% A = amplitude
% b = decay factor
% omega = 2pi * frequency
% phi = phase, time offset for the first peak
% fs = number of sample values per second
% tStart = starting time in sec
% tEnd = ending time in sec
function xs = myDecayingSinusoid(A, b, omega, phi, fs, tStart, tEnd)
    tt = tStart : 1/fs : tEnd;
    xs = A * exp(-b * tt) .* cos(omega*tt + phi);
end
