%Acc extract gravity 
function [AC] = AccExtractGravity
AC = importdata('ACC.csv');

for i=3:size(AC)
   ACCX(i,1) = AC(i,1)*2/128;
   ACCY(i,1) = AC(i,2)*2/128;
   ACCZ(i,1) = AC(i,3)*2/128;
   
   ACC(i,1) = AC(i,1)*2/128;
   ACC(i,2) = AC(i,2)*2/128;
   ACC(i,3) = AC(i,3)*2/128;
end

% sum 8 biggest elements together 
% 8 elements = current - prev to get delta acceleration 
% thereby we get when there is no movement and when movement 
% and we achieve the same sample rate at 4Hz as the rest 
i = 1; 
ACCNew= 1; 
sumAC = 0;
while i<size(ACC)
    for k=1:(size(ACC))/8
        for j=1:8
            i = i+1; 
            ACCMax =max([abs(ACC(i,1)-ACC(i-1,1)), abs(ACC(i,2) -ACC(i-1,2)), abs(ACC(i,3) - ACC(i-1,3))]);
            sumAC = sumAC + ACCMax;
        end
        sumAC = sumAC/8;
        ACCNew(k) = sumAC; 
        sumAC = 0; 
            if i+8 > size(ACC)
               break 
            end
        
    end
end
AC = ACCNew; 
end
