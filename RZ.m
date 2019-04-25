clc;
clear;

data = [1 1 0 1 1 0 1 0 0 0 0 1 0];
k=1;
t=0;
bitrate  = 1;
samplesize = 1000;
for j=1:length(data)
  for i=0:1/samplesize:bitrate
    time(k) = i+t;
    if data(j)==1
      result(k)=5;
    else result(k)=-5;
      
      end;
      k = k+1;
  
end;
t= time(k-1);
end;
  subplot(2,2,1);
 plot(time,result);
  
 
  
 

 
 
l=1;
bitduration =(length(result) /samplesize);
bitduration = round(bitduration);
for i=100:samplesize:length(result)
  
  if result(i) == 5
    bit(l)=1;
   else 
    bit(l)=0;
    
  end;
  l=l+1;
  
end;
disp(bit);



k=1;
t=0;
samplesize = 1000;
for j=1:length(data)
  for i=0:1/samplesize:1
    time(k) = i+t;
    if data(j)==1
      result(k)=5;
    else result(k)=0;
      
      end;
      k = k+1;
  
end;
t= time(k-1);
end;
subplot(2,2,2);
plot(time,result);

clc;
clear;

data = [1 1 0 1 1 0 1 0 0 0 0 1 0];
k=1;
t=0;
samplesize = 1000;
for j=1:length(data)
  for i=0:1/samplesize:1
    time(k) = i+t;
    if data(j)==1
      result(k)=5;
    else result(k)=-5;
      
      end;
      k = k+1;
  
end;
t= time(k-1);
end;
  subplot(2,2,1);
 plot(time,result);
  
 
  
 

 
 
l=1;
bitduration =(length(result) /samplesize);
bitduration = round(bitduration);
for i=100:samplesize:length(result)
  
  if result(i) == 5
    bit(l)=1;
   else 
    bit(l)=0;
    
  end;
  l=l+1;
  
end;
disp(bit);



k=1;
t=0;
samplesize = 1000;
for j=1:length(data)
  for i=0:1/samplesize:1
    time(k) = i+t;
    if data(j)==1
      result(k)=5;
    else result(k)=0;
      
      end;
      k = k+1;
  
end;
t= time(k-1);
end;
subplot(2,2,2);
plot(time,result);
