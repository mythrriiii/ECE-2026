%% 3.3.2
clc;clear;close all

%% Part a
xx = 255*(rem(1:159,30)>19);
bb = [1, -1];
yy = firfilt(bb, xx);

% Plot x and y using subplot
subplot(2, 1 ,1 );
plot(xx);
subplot(2, 1, 2);
plot(yy);


%% Part b
% Explain the effect of the first-difference operator on this input
% signal.% The operator finds the rises and drops and uses a 1 to indicate
% a rise and a -1 to indicate a drop.

%% Part c
% Find length of xx and yy
% xx is 159 long and yy is 160 long

% How are they related?
%Y signal is longer because it is convolved with a signla of length 2 and
%have boundary cases making it slightly longer.

%% Part d: find the edges
threshold = 100;
d = abs(yy) > threshold;

%% Part e: find edges indices
edge_index = find(d);
num_edges = length(edge_index);
