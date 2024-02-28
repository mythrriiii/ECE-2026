%% 3.5
clc;clear;close all

img = imread('lighthouse.png');

% Downsample by 2
img_downsampled =  img(1:2:end,1:2:end);
% Your code: What's the size of the downsampled image?
% 321x214

% show the images using imshow()
figure; imshow(img); title('Original')
figure; imshow(img_downsampled); title('Downsampled')

%% Your example
img2 = imread("grayscale.png");

img_downsampled2 = img2(1:3:end,1:3:end);

figure; imshow(img2); title('Original')
figure; imshow(img_downsampled2); title('Downsampled')
