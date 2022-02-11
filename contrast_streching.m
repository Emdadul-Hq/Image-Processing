clc;
clear all;
I = imread('aaa.png');
image = rgb2gray(I);
stretched_image = image;
a = 70;
b = 150;
alpha = 1;
beta  = 1;
gamma = 1;
[rows cols]=size(image)

for i = 1:rows
    for j = 1:cols
        if image(i, j) < a
            stretched_image(i, j) = 3*alpha * image(i,j);
        elseif a <= image(i, j) <= b
            stretched_image(i, j) = 3*beta  * (image(i,j) - a) + a;
        else
            stretched_image(i, j) = 3*gamma * (image(i,j) - b) + b;
        end
    end
end

subplot(2, 1, 1);
imshow(image);
title('Original Image');

subplot(2, 1, 2);
imshow(stretched_image);
title('Stretched Image');

