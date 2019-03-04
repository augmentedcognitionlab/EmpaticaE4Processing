% finding the general tendency in the data. 
% the change from start to end 
% how much change for every 30sec = 120 sample 
% we need the change score data from every condition and individual. 
% we will go as previous first baseline, then No Blind then Blind. 
% since baseline does not have a change score version we'll stick to the
% normalized data, as the raw data was not connected together 
% This is the EDA statistics

EDAWBase = AllSubEDANormWhiteBase; 
EDABBase = AllSubEDANormBlueBase; 
EDAYBase = AllSubEDANormYellowBase;
EDARBase = AllSubEDANormRedBase;

EDAWNoBlind = AllSubEDAwhitenoBlindCS;
EDABNoBlind = AllSubEDABluenoBlindCS;
EDAYNoBlind = AllSubEDAYellownoBlindCS;
EDARNoBlind = AllSubEDARednoBlindCS;

EDAWBlind = AllSubEDAwhiteBlindCS;
EDABBlind = AllSubEDABlueBlindCS;
EDAYBlind = AllSubEDAYellowBlindCS;
EDARBlind = AllSubEDARedBlindCS;

EDAWBaseTotC = 1; 
EDABBaseTotC = 1;
EDAYBaseTotC = 1;
EDARBaseTotC = 1; 

EDAWNoBlindTotC = 1; 
EDABNoBlindTotC = 1;
EDAYNoBlindTotC = 1;
EDARNoBlindTotC = 1; 

EDAWBlindTotC = 1; 
EDABBlindTotC = 1;
EDAYBlindTotC = 1;
EDARBlindTotC = 1; 

%amount of participants 22
for i=1:22
    
    s = size(EDAWBase);
    s = s(1);
    EDAWBaseTotC(1,i) = EDAWBase(1,i) - EDAWBase(s,i);
    EDABBaseTotC(i) = EDABBase(1,i) - EDABBase(s,i);
    EDAYBaseTotC(i) = EDAYBase(1,i) - EDAYBase(s,i);
    EDARBaseTotC(i) = EDARBase(1,i) - EDARBase(s,i);
    
    s = size(EDAWNoBlind);
    s = s(1);
    EDAWNoBlindTotC(1,i) = EDAWNoBlind(1,i) - EDAWNoBlind(s,i);
    EDABNoBlindTotC(i) = EDABNoBlind(1,i) - EDABNoBlind(s,i);
    EDAYNoBlindTotC(i) = EDAYNoBlind(1,i) - EDAYNoBlind(s,i);
    EDARNoBlindTotC(i) = EDARNoBlind(1,i) - EDARNoBlind(s,i);
    
    s = size(EDAWBlind);
    s = s(1);
    EDAWBlindTotC(1,i) = EDAWBlind(1,i) - EDAWBlind(s,i);
    EDABBlindTotC(i) = EDABBlind(1,i) - EDABBlind(s,i);
    EDAYBlindTotC(i) = EDAYBlind(1,i) - EDAYBlind(s,i);
    EDARBlindTotC(i) = EDARBlind(1,i) - EDARBlind(s,i);
    
end 

EDAWBaseSegC = 1; 
EDABBaseSegC = 1;
EDAYBaseSegC = 1;
EDARBaseSegC = 1; 

EDAWNoBlindSegC = 1; 
EDABNoBlindSegC = 1;
EDAYNoBlindSegC = 1;
EDARNoBlindSegC = 1; 

EDAWBlindSegC = 1; 
EDABBlindSegC = 1;
EDAYBlindSegC = 1;
EDARBlindSegC = 1; 

%amount of participants 22
for i=1:22
    for j=1:6
        
    s = size(EDAWBase);
    s = s(1);
    
    if j == 1
        EDAWBaseSegC(j,i) = EDAWBase(j,i) - EDAWBase(j*40,i);
    EDABBaseSegC(j,i) = EDABBase(j,i) - EDABBase(j*40,i);
    EDAYBaseSegC(j,i) = EDAYBase(j,i) - EDAYBase(j*40,i);
    EDARBaseSegC(j,i) = EDARBase(j,i) - EDARBase(j*40,i);
    
    s = size(EDAWNoBlind);
    s = s(1);
    EDAWNoBlindSegC(j,i) = EDAWNoBlind(j,i) - EDAWNoBlind(j*120,i);
    EDABNoBlindSegC(j,i) = EDABNoBlind(j,i) - EDABNoBlind(j*120,i);
    EDAYNoBlindSegC(j,i) = EDAYNoBlind(j,i) - EDAYNoBlind(j*120,i);
    EDARNoBlindSegC(j,i) = EDARNoBlind(j,i) - EDARNoBlind(j*120,i);
    
    s = size(EDAWBlind);
    s = s(1);
    EDAWBlindSegC(j,i) = EDAWBlind(j,i) - EDAWBlind(j*120,i);
    EDABBlindSegC(j,i) = EDABBlind(j,i) - EDABBlind(j*120,i);
    EDAYBlindSegC(j,i) = EDAYBlind(j,i) - EDAYBlind(j*120,i);
    EDARBlindSegC(j,i) = EDARBlind(j,i) - EDARBlind(j*120,i);
    else 
    
    EDAWBaseSegC(j,i) = EDAWBase((j-1)*40,i) - EDAWBase(j*40,i);
    EDABBaseSegC(j,i) = EDABBase((j-1)*40,i) - EDABBase(j*40,i);
    EDAYBaseSegC(j,i) = EDAYBase((j-1)*40,i) - EDAYBase(j*40,i);
    EDARBaseSegC(j,i) = EDARBase((j-1)*40,i) - EDARBase(j*40,i);
    
    s = size(EDAWNoBlind);
    s = s(1);
    EDAWNoBlindSegC(j,i) = EDAWNoBlind((j-1)*120,i) - EDAWNoBlind(j*120,i);
    EDABNoBlindSegC(j,i) = EDABNoBlind((j-1)*120,i) - EDABNoBlind(j*120,i);
    EDAYNoBlindSegC(j,i) = EDAYNoBlind((j-1)*120,i) - EDAYNoBlind(j*120,i);
    EDARNoBlindSegC(j,i) = EDARNoBlind((j-1)*120,i) - EDARNoBlind(j*120,i);
    
    s = size(EDAWBlind);
    s = s(1);
    EDAWBlindSegC(j,i) = EDAWBlind((j-1)*120,i) - EDAWBlind(j*120,i);
    EDABBlindSegC(j,i) = EDABBlind((j-1)*120,i) - EDABBlind(j*120,i);
    EDAYBlindSegC(j,i) = EDAYBlind((j-1)*120,i) - EDAYBlind(j*120,i);
    EDARBlindSegC(j,i) = EDARBlind((j-1)*120,i) - EDARBlind(j*120,i);
        end
    end
end 
%Statistics for the overview of difference from difference from start to
%finish
dataEBlind = [EDABBlindTotC; EDARBlindTotC;  EDAYBlindTotC; EDAWBlindTotC ];
dataENoBlind = [EDABNoBlindTotC; EDARNoBlindTotC;  EDAYNoBlindTotC; EDAWNoBlindTotC ];
dataEBase = [EDABBaseTotC; EDARBaseTotC;  EDAYBaseTotC; EDAWBaseTotC ];

meanBBaseC = mean(EDABBaseTotC); 
stdBBaseC = std(EDABBaseTotC);

meanRBaseC = mean(EDARBaseTotC); 
stdRBaseC = std(EDARBaseTotC);

meanYBaseC = mean(EDAYBaseTotC); 
stdYBaseC = std(EDAYBaseTotC);

meanWBaseC = mean(EDAWBaseTotC); 
stdWBaseC = std(EDAWBaseTotC);

x=1:4;
y = [meanBBaseC meanRBaseC meanYBaseC meanWBaseC];
std_dev = [stdBBaseC stdRBaseC stdYBaseC stdWBaseC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


meanBNoBlindC = mean(EDABNoBlindTotC); 
stdBNoBlindC = std(EDABNoBlindTotC);

meanRNoBlindC = mean(EDARNoBlindTotC); 
stdRNoBlindC = std(EDARNoBlindTotC);

meanYNoBlindC = mean(EDAYNoBlindTotC); 
stdYNoBlindC = std(EDAYNoBlindTotC);

meanWNoBlindC = mean(EDAWNoBlindTotC); 
stdWNoBlindC = std(EDAWNoBlindTotC);

x=1:4;
y = [meanBNoBlindC meanRNoBlindC meanYNoBlindC meanWNoBlindC];
std_dev = [stdBNoBlindC stdRNoBlindC stdYNoBlindC stdWNoBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})

meanBBlindC = mean(EDABBlindTotC); 
stdBBlindC = std(EDABBlindTotC);

meanRBlindC = mean(EDARBlindTotC); 
stdRBlindC = std(EDARBlindTotC);

meanYBlindC = mean(EDAYBlindTotC); 
stdYBlindC = std(EDAYBlindTotC);

meanWBlindC = mean(EDAWBlindTotC); 
stdWBlindC = std(EDAWBlindTotC);

x=1:4;
y = [meanBBlindC meanRBlindC meanYBlindC meanWBlindC];
std_dev = [stdBBlindC stdRBlindC stdYBlindC stdWBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


[f,p] = ttest2(EDABNoBlindTotC,EDARNoBlindTotC)
[f,p] = ttest2(EDABNoBlindTotC,EDAYNoBlindTotC)
[f,p] = ttest2(EDABNoBlindTotC,EDAWNoBlindTotC)
[f,p] = ttest2(EDARNoBlindTotC,EDAYNoBlindTotC)
[f,p] = ttest2(EDARNoBlindTotC,EDAWNoBlindTotC)
[f,p] = ttest2(EDAYNoBlindTotC,EDAWNoBlindTotC)

[f,p] = ttest2(EDABBlindTotC,EDARBlindTotC)
[f,p] = ttest2(EDABBlindTotC,EDAYBlindTotC)
[f,p] = ttest2(EDABBlindTotC,EDAWBlindTotC)
[f,p] = ttest2(EDARBlindTotC,EDAYBlindTotC)
[f,p] = ttest2(EDARBlindTotC,EDAWBlindTotC)
[f,p] = ttest2(EDAYBlindTotC,EDAWBlindTotC)

[f,p] = ttest2(EDABBaseTotC,EDARBaseTotC)
[f,p] = ttest2(EDABBaseTotC,EDAYBaseTotC)
[f,p] = ttest2(EDABBaseTotC,EDAWBaseTotC)
[f,p] = ttest2(EDARBaseTotC,EDAYBaseTotC)
[f,p] = ttest2(EDARBaseTotC,EDAWBaseTotC)
[f,p] = ttest2(EDAYBaseTotC,EDAWBaseTotC)

%Statistics for the intermediate difference the 6 points in time within the
%datastream. 
%average lines and stds to accommodate the average 
for i=1:6 
    
meanBBaseSegC(i) = mean(EDABBaseSegC(i,:)); 
stdBBaseSegC(i) = std(EDABBaseSegC(i,:));

meanRBaseSegC(i) = mean(EDARBaseSegC(i,:)); 
stdRBaseSegC(i) = std(EDARBaseSegC(i,:));

meanYBaseSegC(i) = mean(EDAYBaseSegC(i,:)); 
stdYBaseSegC(i) = std(EDAYBaseSegC(i,:));

meanWBaseSegC(i) = mean(EDAWBaseSegC(i,:)); 
stdWBaseSegC(i) = std(EDAWBaseSegC(i,:));

meanBNoBlindSegC(i) = mean(EDABNoBlindSegC(i,:)); 
stdBNoBlindSegC(i) = std(EDABNoBlindSegC(i,:));

meanRNoBlindSegC(i) = mean(EDARNoBlindSegC(i,:)); 
stdRNoBlindSegC(i) = std(EDARNoBlindSegC(i,:));

meanYNoBlindSegC(i) = mean(EDAYNoBlindSegC(i,:)); 
stdYNoBlindSegC(i) = std(EDAYNoBlindSegC(i,:));

meanWNoBlindSegC(i) = mean(EDAWNoBlindSegC(i,:)); 
stdWNoBlindSegC(i) = std(EDAWNoBlindSegC(i,:));

meanBBlindSegC(i) = mean(EDABBlindSegC(i,:)); 
stdBBlindSegC(i) = std(EDABBlindSegC(i,:));

meanRBlindSegC(i) = mean(EDARBlindSegC(i,:)); 
stdRBlindSegC(i) = std(EDARBlindSegC(i,:));

meanYBlindSegC(i) = mean(EDAYBlindSegC(i,:)); 
stdYBlindSegC(i) = std(EDAYBlindSegC(i,:));

meanWBlindSegC(i) = mean(EDAWBlindSegC(i,:)); 
stdWBlindSegC(i) = std(EDAWBlindSegC(i,:));

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