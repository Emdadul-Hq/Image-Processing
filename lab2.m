clc 
clear all;
bus = 'Bus number? =';
x = input(bus)
for i=1:1:x
    for j=1:1:x
        prompt=' ';
        y(i,j) = input(prompt);
    end
end 
display(y)
s=sum(y,2);
for m=1:1:x
    for n=1:1:x
        if m == n
            y(m,n)= s(m,1);
        else
            y(m,n)=-y(m,n);
        end
    end
end
display(y)