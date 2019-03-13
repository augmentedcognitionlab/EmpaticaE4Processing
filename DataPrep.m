%******WRITTEN BY ANDREAS WULFF-ABRAMSSON*****

% for empatica data analysis this is the first script to run. 
% To run this code you need the following from the empatica 
% the start timestamp from EDA 
% call it EDATime
% EDA data = EDA 
% Heart Rate data = HR
% Heart rate Start time = HRTimr
% Temperature data = Temperature
% Accelerometer data = ACCX ,ACCY, ACCZ 
% time for the markers and markers = Tags and TagTime
% when running this script direct Matlab to the folder of the files you
% want to prepare. 

%****************************
% this code synchronizes all the data.
% resampling it to 4Hz 
% divide the data into chunks that matches the markers you have defined in
% your experiment 
% the current version works for experiments with one repetition of each
% stimuli. 
% if there are more than one repition changing the script from line 136 is
% needed.
%**************************

ACCX = 1;
ACCY = 1;
ACCZ = 1;
HR = 1;
EDA = 1;
Temperature = 1;
Tags = 1;
TagTime = 1; 

H = importdata('HR.csv');
E = importdata('EDA.csv');
T = importdata('TEMP.csv');
TA = importdata('tags.csv');

EDATime = E(1,1);
HRTimr = H(1,1);


AC = AccExtractGravity;

for i=3:size(H)
   HR(i,1) = H(i,1);
end

for i=3:size(T)
   Temperature(i,1) = T(i,1);
end

for i=1:size(TA)
   TagTime(i,1) = TA(i,1);
   Tags(i,1) = TA(i,2);
end

for i=3:size(E)
   EDA(i,1) = E(i,1);
end

newTime = 1; 
%adding time and tmestamp to the dataset based on the 4Hz update rate from
%the EDA.
for i=1:size(EDA)
   if( i == 1)
       newTime(i) = EDATime-EDATime;
   else
   newTime(i) = newTime(i-1)+ 0.25; 
   end
end
sizetag = size(TagTime);
sizetag = sizetag(1);


   for j=1:sizetag
       newIndex = floor(TagTime(j) - EDATime)*4;
       newTime(2,newIndex) = Tags(j); 
       
   end 
newTime = newTime';
fourHzHr = resample(HR,4,1);

%offset for how long into the data stream the HR needs to be added
offset = HRTimr - EDATime; 
offset = offset*4;
hrSynched = 1; 

for i=1:offset
   hrSynched(i) = 0;
end

for i=offset:size(EDA)
    if (i-(offset-1)) > size(fourHzHr)
       hrSynched(i) = 0;  
    else
       hrSynched(i) = fourHzHr(i-(offset-1)); 
    end
end

%let's scale the Accelrometer data so htey match EDA- resampling down to
%4Hz. and add addtional missing datapoints to match the dimensions of the
%rest of the dataset. 


ACCsynched = 1;

TempSynched = 1;

for i=1:size(EDA)
    if i > size(AC)
       ACCsynched(i) = 0;  
       
    else
       ACCsynched(i) = AC(i);  
       
    end
    
    if i > size(Temperature)
        TempSynched(i) = 0;
    else
        TempSynched(i) = Temperature(i); 
    end
end

hrSynched = hrSynched';
ACCsynched = ACCsynched';
TempSynched = TempSynched'; 

 Sub26totaldataset = [newTime,hrSynched,EDA,ACCsynched, TempSynched]; 
%The dataset is ordered (time, tags, HR, EDA, ACC X , ACC Y, ACC Z,
%Temperature)
%all of them sampled at 4Hz. 

%This section is very individual from experiment to experiment and you may
%chang ethis part of the script to make it fit your experiment 

%extracting the White baseline data 
 Sub26whiteBaseline = ExtractData( Sub26totaldataset, 60, 4);

%extracting the Red Baseline data
 Sub26RedBaseline = ExtractData( Sub26totaldataset, 60, 1);

%Extracting the Blue Baseline data 
 Sub26BlueBaseline = ExtractData( Sub26totaldataset, 60, 2);

%Extracting the Yellow Baseline data 
 Sub26YellowBaseline = ExtractData( Sub26totaldataset, 60, 3);


%extracting the White NoBlind data 
 Sub26whiteNoBlind = ExtractData( Sub26totaldataset, 190, 14);

%extracting the Red NoBlind data
 Sub26RedNoBlind = ExtractData( Sub26totaldataset, 190, 11);

%Extracting the Blue NoBlind data 
 Sub26BlueNoBlind = ExtractData( Sub26totaldataset, 190, 12);

%Extracting the Yellow NoBlind data 
 Sub26YellowNoBlind = ExtractData( Sub26totaldataset, 190, 13);


%extracting the White Blind data 
 Sub26whiteBlind = ExtractData( Sub26totaldataset, 190, 24);

%extracting the Red Blind data
 Sub26RedBlind = ExtractData( Sub26totaldataset, 190, 21);

%Extracting the Blue Blind data 
 Sub26BlueBlind = ExtractData( Sub26totaldataset, 190, 22);

%Extracting the Yellow Blind data 
 Sub26YellowBlind = ExtractData( Sub26totaldataset, 190, 23);

function data = ExtractData(totData, timeSec, Tag)
data = 1;
[Row,Col] = find(totData == Tag);
TagLoc = find(Col == 2);

for i=Row(TagLoc):(Row(TagLoc)+(4*timeSec))
   for j=1:6 
    data(i-(Row(TagLoc)-1),j) = totData(i,j);
   end
end

end 
