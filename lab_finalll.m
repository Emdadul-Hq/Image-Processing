clc
clear all
u=2*randn(10^3,1);
s1=[zeros(1,3), u' ,zeros(1,70)];
s2=[zeros(1,6), u' ,zeros(1,67)];
c=.25*xcorr(s1,s2,'unbiased');
stem(c);
xlabel('n-->');
ylabel('Amplitude-->');

count=0;

for i=1:1:2145
    if c(i)>=.9
        count=count+1;
    end
end 
disp('Number of Sources');
disp(count);