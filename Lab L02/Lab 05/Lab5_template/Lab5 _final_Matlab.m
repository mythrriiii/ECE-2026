%% 3.1
dconvdemo

%% Answer questions and attach screenshots in the Lab Report


%% 3.2
clc;clear;close all
load echart.mat

bdiffh = [1, -1];

imshow(echart)
m = 65; % 147, 221
yy1 = conv( echart(m,:), bdiffh );


%% Plot the input and output in the same figure using subplot
subplot(2,1,1);
imshow(echart);
nn = 1: length(echart(m,:));

% subplot(2,1,2);
% stem(nn - 1, echart(m,:));
% mm = 1: length(yy1);

subplot(2,1,2)
stem(yy1)

%% Find the width of "E"
% Find the length of a dense cluster of rises and drops in the filtered
% response. 

find(yy1)

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



%% 3.4

dltidemo

%% Answer questions and attach GUI screenshots for the lab report