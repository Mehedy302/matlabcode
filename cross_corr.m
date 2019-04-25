clc;
close all;
 x=[2 -1 3 7 1 2 -3];
l1= -4;
u1= 2;
x1=l1:1:u1; 
 
y= [1 -1 2 -2 4 1 -2 5];
l2= -4;
u2= 3;
y1=l2:1:u2; 


z=fliplr(y);%Folding% 
l3=-u2; 
u3=-l2; 
h3=l3:1:u3;
l=l1+l3;
u=u1+u3;

a=l:1:u; 
m=length(x); 
n=length(z);
X=[x,zeros(1,n)];
subplot(311)
disp('x(n) is:')
disp(x)
stem(x1,x)
xlabel('n')
ylabel('x(n)')
title('First Sequence')
grid on;
Y=[y,zeros(1,m)];
Z=[z,zeros(1,m)];
subplot(312)
disp('z(n) is:')
disp(z)
stem(h3,z)
xlabel('n')
ylabel('z(n)')
title('Second folded Sequence')
grid on;
%convolution%
for i=1:n+m-1
    A(i)=0;
    for j=1:m
        if((i-j+1)>0)
            A(i)=A(i)+(X(j)*Z(i-j+1));
        else
        end
    end
end
subplot(313)
disp('y(n) is:')
disp(A)
stem(a,A)
xlabel('n')
ylabel('y(n)')
title('Output Sequence')
grid on;