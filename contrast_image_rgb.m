clc;
clear all
image = imread('aaa.png');
%im = rgb2gray(im);
stretched_image = image;
a = 70;
b = 150;
alpha = 1;
beta  = 1;
gamma = 1;

[rows cols w]=size(image);

for i = 1:rows
    for j = 1:cols
        for k=1:w
            if image(i,j,k) < a
                stretched_image(i,j,k) = 4*alpha * image(i,j,k);
            elseif a <= image(i,j,k) <= b
                stretched_image(i,j,k) = 4*beta  * (image(i,j,k) - a) + a;
            else
                stretched_image(i,j,k) = 4*gamma * (image(i,j,k) - b) + b;
            end
        end
    end
end

figure
subplot(2, 1, 1);
imshow(image);
title('Original Image');

subplot(2, 1, 2);
imshow(stretched_image);
title('Stretched Image');










