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

