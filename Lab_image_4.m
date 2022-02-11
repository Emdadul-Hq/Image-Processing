clc
clear all
x=imread('tricks.png');
y=x;
size(y)
for i=1:300
    y(i,:,1)=zeros(1,300);
end
imshow(y)
figure
y=x;

for i=1:300         
    y(i,:,2)=zeros(1,300);
end
imshow(y)

figure
y=x;

for i=1:300
    y(i,:,3)=zeros(1,300);
end
imshow(y)

