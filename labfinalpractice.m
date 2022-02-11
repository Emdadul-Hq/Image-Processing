clc 
clear all
a=2;
for i=1:20
    b=a.^3-a-1;
    c=3*a.^2-1;
    d=a-(b/c);
    result(i,:)=[i,a,b,c,d];
    if abs(d-a)<=.005;
        break;
    else
       a=d;
    end
end 
display(result)