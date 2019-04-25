clc;
clear;

data = [1 0 1 1 0];
k=2;
result(1)=5;
 
 
samplesize = 100000;
bitduration = 1;
for j=1:length(data)
        g=k;
        if data(j)==1
            for i=0:1/samplesize:(bitduration/2) 
                
             result(k)=result(g-1);
             
             k=k+1;
             
               
            end;
             
            
             p=k;
             for l=i+(1/samplesize):1/samplesize:bitduration
                   
                result(k)=-result(p-1);
                 
                k=k+1;
                    
             end;
             
        else
            s=k;
             for i=0:1/samplesize:(bitduration/2) 
             result(k)=-result(s-1);
              
             k=k+1;
              
            end;
             m=k;
             for l=i+(1/samplesize):1/samplesize:bitduration
                result(k)=-result(m-1);
                
                k=k+1;
                     
             end;
         end;
        
  
 end;
         
   for t=1:length(result)
       time(t) = t;
   end;
   
   
   dat(1) = 1;
    iter = 2;
    for d = 50:samplesize:length(result)
         
        if d == 50
            if result(d) == 5
                dat(iter)=1;
            else
                dat(iter) =0;
            end;
        
        
        else
            if dat(iter-1)==1 && result(d)==5
                dat(iter)=0;
            else
                dat(iter)=1;
                
            end;
        
        
        end;
    iter = iter + 1;
    end;
    
    
   
      
     
   
 plot(time,result);
 ylim([-10 10]);
 grid on;