clc
clear all
D=imread('tricks.png')
B=rgb2gray(D);
st_im=B;
r1=50;
r2=150;
w1=70;
w2=150;

alpha=w1/r1;
beta=(w2-w1)/(r2-r1);
gamma=(255-w2)/(255-r2);
[m,n]=size(D);
original=B;

for i=1:1:m
    for j=1:1:n
        if B[i,j]<r1
            st_im(i,j)=alpha*B(i,j);
        elseif r1<=B(i,j)<=r2
            st_im(i,j)= beta*(B(i,j)-r1)+r1;
        else
            st_im(i,j)=gamma*(B(i,j)-r2)+r2;
        end
    end 
end

figure
subplot 211
imshow(B);
title('Original image');

subplot 212
imshow(st_im);
title('Stretched Image');





