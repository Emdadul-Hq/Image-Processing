clc
clear all
I=imread('tricks.png')
D=rgb2gray(I)
S=size(D)
x=zeros(1,256);
for i=1:300
    for j=1:300
        for k=1:256
            if D(i,j)==k-1;
                x(1,k)=x(1,k)+1;
            end
        end
    end
end
stem(x)