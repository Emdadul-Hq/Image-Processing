clc
clear all
I=imread('neymar.jpg');
imshow(I);
Red=I(:,:,1);
Green=I(:,:,2);
Blue=I(:,:,3);
a=hist(Red)