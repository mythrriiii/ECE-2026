%% 3.3
clc;clear;close all

a1 = 0.212;
a5 = 0.006;
dB_difference = 30.96 ;


%Ratios become differences on a dB scale
%P/Q become
%20log10(P/Q) = 20log10(P) - 20log10(Q)
%A2 = (2)A1 then A2 is 6 dB bigger than A1, because with logs, we get
%20 log10(A1) = 20 log10((1/2)A2) = 20 log10(A2) + 
%20 log10(1/2) = 20 log10(A2) − 6.02 dB

%Similarly, given 20 log10(A2) = 20 log10(A1) - 12 dB = 20 log10(A1) - 
%20 log10(1/4) = 20 log10((1/4)A1)
%Therefore, A2 = (4)A1


%WHICH a to use