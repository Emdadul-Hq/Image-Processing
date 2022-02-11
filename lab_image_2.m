clc
clear all
x=[0 0 0 1 2 2 2 3 3 4 4 4 4 2 5 5];
%hist(x,256);
a=imread('tricks.png');
figure
b=imshow(a);
figure
c=rgb2gray(a);
imshow(c)
r=size(c,1)
d=size(c,2);
x=1:1:256
z=zeros(1,256);

for i=1:r
    for j=1:d
        e=c(i,j);
        z(e+1)=z(e+1)+1;
        
    end
end
figure;
stem(x,z);
grid on
