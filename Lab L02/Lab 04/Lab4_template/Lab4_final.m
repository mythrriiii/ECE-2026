%%Lab 4

%% 3.1

con2dis

% Only include a screenshot for (a)
% Work out all the problems on paper
% Then you can use con2dis to verify your answers

%% 3.2
clc;clear;close all

A=5;
fc = 1200;
alpha = 1000;
beta = 1.5;
gamma = 0;

fs = 4000;
tstart = 0;
dur = 2;

% Your code: Generate the signal
tt=0:(1/fs):dur;
xx = A*cos(2*pi*fc*tt+alpha*cos(2*pi*beta*tt+gamma));

% Your code: plot spectrogram
spectrogram(xx,256,[ ],[ ],fs,'yaxis');

%% 3.3
clc;clear;close all

xpix = ones(256,1)*cos(2*pi*(0:255)/32);

% Your code: show the image
show_img((xpix + 1 )/2);


%% 3.4
clc;clear;close all

wd = 2*pi*1/32; xpix = ones(256,1)*cos(wd*(0:255));

% Your code: Generate xpix4 and xpix12
xpix4 = ones(256,1)*cos(wd*4*(0:255));
xpix12 = ones(256,1)*cos(wd*12*(0:255));

% Downsampling images
xpix4_downsample = xpix4(1:2:end,1:2:end);
xpix12_downsample = xpix12(1:2:end,1:2:end);

% Your code: Show the 2 images and the 2 downsampled images

subplot(2,2,1)
imshow(xpix4)
title('xpix4')

subplot(2,2,2)
imshow(xpix12)
title('xpix12')

subplot(2,2,3)
imshow(xpix4_downsample)
title('xpix4 downsample')

subplot(2,2,4)
imshow(xpix12_downsample)
title('xpix12 downsample')


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
