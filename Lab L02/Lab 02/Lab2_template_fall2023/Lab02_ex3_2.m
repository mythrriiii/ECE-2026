%% 3.2

mySig.freq = 400; %-- (in hertz)
mySig.complexAmp = 3*exp(j*pi/5); 
dur = 3; 
start = -1; 
fs = 32*mySig.freq;
dt = 1/(32*mySig.freq); 
mySigWithVals = makeCosVals( mySig, dur, start, dt ); 
%- Plot the values in sigWithVals
plot(mySigWithVals.times,mySigWithVals.values)%<--- complete the plot statement
xlim([-1, -0.96])
xlabel('t [s]')
ylabel('x(t)') 


figure;
spectrogram(mySigWithVals.values, 256, 200, [], fs , 'centered', 'yaxis');
colorbar;



function sigOut = makeCosVals(sigIn, dur, tstart, dt ) %
freq = sigIn.freq; 
X = sigIn.complexAmp; 

A = abs(X);
phi = angle(X)
N = ceil(dur/dt);
T = N*dt;

tt = tstart: dt : tstart + T;  %-- Create the vector of times 
xx = A*cos(2*pi*freq*tt + phi);     %-- Vectorize the cosine evaluation
sigOut.times = tt;     %-- Put vector of times into the output structure
sigOut.values = xx;    %-- Put values into the output structure

end



