clc
clear all
B=imread('aaa.png');
i=B+100;
imshow(i)
title('higher intensity');
figure
imshow(B)
A2=rgb2gray(B);
imshow(A2)
title('Grayscale Image');
figure
%A3=im2bw(rgb,level);
%figure
%imshow(A3)
%title('Black and White')
%imfinfo 'tricks.png'
A=imread('aaa.png');
size(A)
m=size(A,1);
n=size(A,2);
for i=190:250
    for j=1:n
        A(i,j)=A(i,j)+100;
    end
end
for i=1:m
    for j=190:250
        A(i,j)=A(i,j)+100;
    end
end
imshow(A)
figure
[rows columns depth]=size(A)
k=imrotate(A,90);
imshow(k);
figure
imshow(A);
figure
k2=flip(A,2);
imshow(k2);
title('Flipped Image');







