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
