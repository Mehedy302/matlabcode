clc;
clear;
x=[3 2 1 2];
h=[1 2 1 2];
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end

display(Y);

Z = conv(x,h);
display(Z);

if Y==Z
    display('Convolution Ok');  
end;

indexofx=0:length(x)-1;
indexofh=-1:length(h)-2;
 stem(indexofx,x);
 stem(indexofh,h);
 indexofy = -1:(length(x)+length(h)-3);
 subplot(2,2,1);
 stem(indexofx,x);
  title('Plot of X');
 subplot(2,2,2);
 stem(indexofh,h);
 title('Plot of H');
 subplot(2,2,3);
 stem(indexofy,Y);
  title('Plot of Y');
