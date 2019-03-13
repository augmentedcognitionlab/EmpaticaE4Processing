%******WRITTEN BY ANDREAS WULFF-ABRAMSSON*****

% finding the general tendency in the data. 
% the change from start to end 
% how much change for every 30sec = 120 sample 
% we need the change score data from every condition and individual. 
% we will go as previous first baseline, then No Blind then Blind. 
% since baseline does not have a change score version we'll stick to the
% normalized data, as the raw data was not connected together 
% This is the HR statistics 

HRWBase = AllSubHRNormWhiteBase; 
HRBBase = AllSubHRNormBlueBase; 
HRYBase = AllSubHRNormYellowBase;
HRRBase = AllSubHRNormRedBase;

HRWNoBlind = AllSubHRwhitenoBlindCS;
HRBNoBlind = AllSubHRBluenoBlindCS;
HRYNoBlind = AllSubHRYellownoBlindCS;
HRRNoBlind = AllSubHRRednoBlindCS;

HRWBlind = AllSubHRwhiteBlindCS;
HRBBlind = AllSubHRBlueBlindCS;
HRYBlind = AllSubHRYellowBlindCS;
HRRBlind = AllSubHRRedBlindCS;

HRWBaseTotC = 1; 
HRBBaseTotC = 1;
HRYBaseTotC = 1;
HRRBaseTotC = 1; 

HRWNoBlindTotC = 1; 
HRBNoBlindTotC = 1;
HRYNoBlindTotC = 1;
HRRNoBlindTotC = 1; 

HRWBlindTotC = 1; 
HRBBlindTotC = 1;
HRYBlindTotC = 1;
HRRBlindTotC = 1; 

%amount of participants 22
for i=1:22
    
    s = size(HRWBase);
    s = s(1);
    HRWBaseTotC(1,i) = HRWBase(1,i) - HRWBase(s,i);
    HRBBaseTotC(i) = HRBBase(1,i) - HRBBase(s,i);
    HRYBaseTotC(i) = HRYBase(1,i) - HRYBase(s,i);
    HRRBaseTotC(i) = HRRBase(1,i) - HRRBase(s,i);
    
    s = size(HRWNoBlind);
    s = s(1);
    HRWNoBlindTotC(1,i) = HRWNoBlind(1,i) - HRWNoBlind(s,i);
    HRBNoBlindTotC(i) = HRBNoBlind(1,i) - HRBNoBlind(s,i);
    HRYNoBlindTotC(i) = HRYNoBlind(1,i) - HRYNoBlind(s,i);
    HRRNoBlindTotC(i) = HRRNoBlind(1,i) - HRRNoBlind(s,i);
    
    s = size(HRWBlind);
    s = s(1);
    HRWBlindTotC(1,i) = HRWBlind(1,i) - HRWBlind(s,i);
    HRBBlindTotC(i) = HRBBlind(1,i) - HRBBlind(s,i);
    HRYBlindTotC(i) = HRYBlind(1,i) - HRYBlind(s,i);
    HRRBlindTotC(i) = HRRBlind(1,i) - HRRBlind(s,i);
    
end 

HRWBaseSegC = 1; 
HRBBaseSegC = 1;
HRYBaseSegC = 1;
HRRBaseSegC = 1; 

HRWNoBlindSegC = 1; 
HRBNoBlindSegC = 1;
HRYNoBlindSegC = 1;
HRRNoBlindSegC = 1; 

HRWBlindSegC = 1; 
HRBBlindSegC = 1;
HRYBlindSegC = 1;
HRRBlindSegC = 1; 

%amount of participants 22
for i=1:22
    for j=1:6
        
    s = size(HRWBase);
    s = s(1);
    
    if j == 1
        HRWBaseSegC(j,i) = HRWBase(j,i) - HRWBase(j*40,i);
    HRBBaseSegC(j,i) = HRBBase(j,i) - HRBBase(j*40,i);
    HRYBaseSegC(j,i) = HRYBase(j,i) - HRYBase(j*40,i);
    HRRBaseSegC(j,i) = HRRBase(j,i) - HRRBase(j*40,i);
    
    s = size(HRWNoBlind);
    s = s(1);
    HRWNoBlindSegC(j,i) = HRWNoBlind(j,i) - HRWNoBlind(j*120,i);
    HRBNoBlindSegC(j,i) = HRBNoBlind(j,i) - HRBNoBlind(j*120,i);
    HRYNoBlindSegC(j,i) = HRYNoBlind(j,i) - HRYNoBlind(j*120,i);
    HRRNoBlindSegC(j,i) = HRRNoBlind(j,i) - HRRNoBlind(j*120,i);
    
    s = size(HRWBlind);
    s = s(1);
    HRWBlindSegC(j,i) = HRWBlind(j,i) - HRWBlind(j*120,i);
    HRBBlindSegC(j,i) = HRBBlind(j,i) - HRBBlind(j*120,i);
    HRYBlindSegC(j,i) = HRYBlind(j,i) - HRYBlind(j*120,i);
    HRRBlindSegC(j,i) = HRRBlind(j,i) - HRRBlind(j*120,i);
    else 
    
    HRWBaseSegC(j,i) = HRWBase((j-1)*40,i) - HRWBase(j*40,i);
    HRBBaseSegC(j,i) = HRBBase((j-1)*40,i) - HRBBase(j*40,i);
    HRYBaseSegC(j,i) = HRYBase((j-1)*40,i) - HRYBase(j*40,i);
    HRRBaseSegC(j,i) = HRRBase((j-1)*40,i) - HRRBase(j*40,i);
    
    s = size(HRWNoBlind);
    s = s(1);
    HRWNoBlindSegC(j,i) = HRWNoBlind((j-1)*120,i) - HRWNoBlind(j*120,i);
    HRBNoBlindSegC(j,i) = HRBNoBlind((j-1)*120,i) - HRBNoBlind(j*120,i);
    HRYNoBlindSegC(j,i) = HRYNoBlind((j-1)*120,i) - HRYNoBlind(j*120,i);
    HRRNoBlindSegC(j,i) = HRRNoBlind((j-1)*120,i) - HRRNoBlind(j*120,i);
    
    s = size(HRWBlind);
    s = s(1);
    HRWBlindSegC(j,i) = HRWBlind((j-1)*120,i) - HRWBlind(j*120,i);
    HRBBlindSegC(j,i) = HRBBlind((j-1)*120,i) - HRBBlind(j*120,i);
    HRYBlindSegC(j,i) = HRYBlind((j-1)*120,i) - HRYBlind(j*120,i);
    HRRBlindSegC(j,i) = HRRBlind((j-1)*120,i) - HRRBlind(j*120,i);
        end
    end
end 
%Statistics for the overview of difference from difference from start to
%finish
dataEBlind = [HRBBlindTotC; HRRBlindTotC;  HRYBlindTotC; HRWBlindTotC ];
dataENoBlind = [HRBNoBlindTotC; HRRNoBlindTotC;  HRYNoBlindTotC; HRWNoBlindTotC ];
dataEBase = [HRBBaseTotC; HRRBaseTotC;  HRYBaseTotC; HRWBaseTotC ];

meanBBaseC = mean(HRBBaseTotC); 
stdBBaseC = std(HRBBaseTotC);

meanRBaseC = mean(HRRBaseTotC); 
stdRBaseC = std(HRRBaseTotC);

meanYBaseC = mean(HRYBaseTotC); 
stdYBaseC = std(HRYBaseTotC);

meanWBaseC = mean(HRWBaseTotC); 
stdWBaseC = std(HRWBaseTotC);

x=1:4;
y = [meanBBaseC meanRBaseC meanYBaseC meanWBaseC];
std_dev = [stdBBaseC stdRBaseC stdYBaseC stdWBaseC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


meanBNoBlindC = mean(HRBNoBlindTotC); 
stdBNoBlindC = std(HRBNoBlindTotC);

meanRNoBlindC = mean(HRRNoBlindTotC); 
stdRNoBlindC = std(HRRNoBlindTotC);

meanYNoBlindC = mean(HRYNoBlindTotC); 
stdYNoBlindC = std(HRYNoBlindTotC);

meanWNoBlindC = mean(HRWNoBlindTotC); 
stdWNoBlindC = std(HRWNoBlindTotC);

x=1:4;
y = [meanBNoBlindC meanRNoBlindC meanYNoBlindC meanWNoBlindC];
std_dev = [stdBNoBlindC stdRNoBlindC stdYNoBlindC stdWNoBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})

meanBBlindC = mean(HRBBlindTotC); 
stdBBlindC = std(HRBBlindTotC);

meanRBlindC = mean(HRRBlindTotC); 
stdRBlindC = std(HRRBlindTotC);

meanYBlindC = mean(HRYBlindTotC); 
stdYBlindC = std(HRYBlindTotC);

meanWBlindC = mean(HRWBlindTotC); 
stdWBlindC = std(HRWBlindTotC);

x=1:4;
y = [meanBBlindC meanRBlindC meanYBlindC meanWBlindC];
std_dev = [stdBBlindC stdRBlindC stdYBlindC stdWBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


[f,p] = ttest2(HRBNoBlindTotC,HRRNoBlindTotC)
[f,p] = ttest2(HRBNoBlindTotC,HRYNoBlindTotC)
[f,p] = ttest2(HRBNoBlindTotC,HRWNoBlindTotC)
[f,p] = ttest2(HRRNoBlindTotC,HRYNoBlindTotC)
[f,p] = ttest2(HRRNoBlindTotC,HRWNoBlindTotC)
[f,p] = ttest2(HRYNoBlindTotC,HRWNoBlindTotC)

[f,p] = ttest2(HRBBlindTotC,HRRBlindTotC)
[f,p] = ttest2(HRBBlindTotC,HRYBlindTotC)
[f,p] = ttest2(HRBBlindTotC,HRWBlindTotC)
[f,p] = ttest2(HRRBlindTotC,HRYBlindTotC)
[f,p] = ttest2(HRRBlindTotC,HRWBlindTotC)
[f,p] = ttest2(HRYBlindTotC,HRWBlindTotC)

[f,p] = ttest2(HRBBaseTotC,HRRBaseTotC)
[f,p] = ttest2(HRBBaseTotC,HRYBaseTotC)
[f,p] = ttest2(HRBBaseTotC,HRWBaseTotC)
[f,p] = ttest2(HRRBaseTotC,HRYBaseTotC)
[f,p] = ttest2(HRRBaseTotC,HRWBaseTotC)
[f,p] = ttest2(HRYBaseTotC,HRWBaseTotC)

%Statistics for the intermediate difference the 6 points in time within the
%datastream. 
%average lines and stds to accommodate the average 
for i=1:6 
    
meanBBaseSegC(i) = mean(HRBBaseSegC(i,:)); 
stdBBaseSegC(i) = std(HRBBaseSegC(i,:));

meanRBaseSegC(i) = mean(HRRBaseSegC(i,:)); 
stdRBaseSegC(i) = std(HRRBaseSegC(i,:));

meanYBaseSegC(i) = mean(HRYBaseSegC(i,:)); 
stdYBaseSegC(i) = std(HRYBaseSegC(i,:));

meanWBaseSegC(i) = mean(HRWBaseSegC(i,:)); 
stdWBaseSegC(i) = std(HRWBaseSegC(i,:));

meanBNoBlindSegC(i) = mean(HRBNoBlindSegC(i,:)); 
stdBNoBlindSegC(i) = std(HRBNoBlindSegC(i,:));

meanRNoBlindSegC(i) = mean(HRRNoBlindSegC(i,:)); 
stdRNoBlindSegC(i) = std(HRRNoBlindSegC(i,:));

meanYNoBlindSegC(i) = mean(HRYNoBlindSegC(i,:)); 
stdYNoBlindSegC(i) = std(HRYNoBlindSegC(i,:));

meanWNoBlindSegC(i) = mean(HRWNoBlindSegC(i,:)); 
stdWNoBlindSegC(i) = std(HRWNoBlindSegC(i,:));

meanBBlindSegC(i) = mean(HRBBlindSegC(i,:)); 
stdBBlindSegC(i) = std(HRBBlindSegC(i,:));

meanRBlindSegC(i) = mean(HRRBlindSegC(i,:)); 
stdRBlindSegC(i) = std(HRRBlindSegC(i,:));

meanYBlindSegC(i) = mean(HRYBlindSegC(i,:)); 
stdYBlindSegC(i) = std(HRYBlindSegC(i,:));

meanWBlindSegC(i) = mean(HRWBlindSegC(i,:)); 
stdWBlindSegC(i) = std(HRWBlindSegC(i,:));

end 
figure
errorbar(meanBBaseSegC, stdBBaseSegC)
hold on 
errorbar(meanRBaseSegC, stdRBaseSegC)
hold on 
errorbar(meanYBaseSegC, stdYBaseSegC)
hold on 
errorbar(meanWBaseSegC, stdWBaseSegC)

xticks([1 2 3 4 5 6 ])
xticklabels({'delta 0-10Sec','delta 10-20Sec','delta 20-30Sec','delta 30-40Sec','delta 40-50Sec','delta 50-60Sec'})


figure
errorbar(meanBNoBlindSegC, stdBNoBlindSegC)
hold on 
errorbar(meanRNoBlindSegC, stdRNoBlindSegC)
hold on 
errorbar(meanYNoBlindSegC, stdYNoBlindSegC)
hold on 
errorbar(meanWNoBlindSegC, stdWNoBlindSegC)

xticks([1 2 3 4 5 6 ])
xticklabels({'delta 0-30Sec','delta 30-60Sec','delta 60-90Sec','delta 90-120Sec','delta 120-150Sec','delta 120-180Sec'})

figure
errorbar(meanBBlindSegC, stdBBlindSegC)
hold on 
errorbar(meanRBlindSegC, stdRBlindSegC)
hold on 
errorbar(meanYBlindSegC, stdYBlindSegC)
hold on 
errorbar(meanWBlindSegC, stdWBlindSegC)

xticks([1 2 3 4 5 6 ])
xticklabels({'delta 0-30Sec','delta 30-60Sec','delta 60-90Sec','delta 90-120Sec','delta 120-150Sec','delta 120-180Sec'})
%figure 
%boxplot(dataEBase')
%anova1(dataEBase')
%figure 
%boxplot(dataENoBlind')
%anova1(dataENoBlind')
%figure
%boxplot(dataEBlind')
%anova1(dataEBlind')


function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end
