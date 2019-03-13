%******WRITTEN BY ANDREAS WULFF-ABRAMSSON*****

% finding the general tendency in the data. 
% the change from start to end 
% how much change for every 30sec = 120 sample 
% we need the change score data from every condition and individual. 
% we will go as previous first baseline, then No Blind then Blind. 
% since baseline does not have a change score version we'll stick to the
% normalized data, as the raw data was not connected together 
% This is the Temperature statistics

TEMPWBase = AllSubTEMPNormWhiteBase; 
TEMPBBase = AllSubTEMPNormBlueBase; 
TEMPYBase = AllSubTEMPNormYellowBase;
TEMPRBase = AllSubTEMPNormRedBase;

TEMPWNoBlind = AllSubTEMPWhiteNoBlindCS;
TEMPBNoBlind = AllSubTEMPBlueNoBlindCS;
TEMPYNoBlind = AllSubTEMPYellowNoBlindCS;
TEMPRNoBlind = AllSubTEMPRedNoBlindCS;

TEMPWBlind = AllSubTEMPWhiteBlindCS;
TEMPBBlind = AllSubTEMPBlueBlindCS;
TEMPYBlind = AllSubTEMPYellowBlindCS;
TEMPRBlind = AllSubTEMPRedBlindCS;

TEMPWBaseTotC = 1; 
TEMPBBaseTotC = 1;
TEMPYBaseTotC = 1;
TEMPRBaseTotC = 1; 

TEMPWNoBlindTotC = 1; 
TEMPBNoBlindTotC = 1;
TEMPYNoBlindTotC = 1;
TEMPRNoBlindTotC = 1; 

TEMPWBlindTotC = 1; 
TEMPBBlindTotC = 1;
TEMPYBlindTotC = 1;
TEMPRBlindTotC = 1; 

%amount of participants 22
for i=1:22
    
    s = size(TEMPWBase);
    s = s(1);
    TEMPWBaseTotC(1,i) = TEMPWBase(1,i) - TEMPWBase(s,i);
    TEMPBBaseTotC(i) = TEMPBBase(1,i) - TEMPBBase(s,i);
    TEMPYBaseTotC(i) = TEMPYBase(1,i) - TEMPYBase(s,i);
    TEMPRBaseTotC(i) = TEMPRBase(1,i) - TEMPRBase(s,i);
    
    s = size(TEMPWNoBlind);
    s = s(1);
    TEMPWNoBlindTotC(1,i) = TEMPWNoBlind(1,i) - TEMPWNoBlind(s,i);
    TEMPBNoBlindTotC(i) = TEMPBNoBlind(1,i) - TEMPBNoBlind(s,i);
    TEMPYNoBlindTotC(i) = TEMPYNoBlind(1,i) - TEMPYNoBlind(s,i);
    TEMPRNoBlindTotC(i) = TEMPRNoBlind(1,i) - TEMPRNoBlind(s,i);
    
    s = size(TEMPWBlind);
    s = s(1);
    TEMPWBlindTotC(1,i) = TEMPWBlind(1,i) - TEMPWBlind(s,i);
    TEMPBBlindTotC(i) = TEMPBBlind(1,i) - TEMPBBlind(s,i);
    TEMPYBlindTotC(i) = TEMPYBlind(1,i) - TEMPYBlind(s,i);
    TEMPRBlindTotC(i) = TEMPRBlind(1,i) - TEMPRBlind(s,i);
    
end 

TEMPWBaseSegC = 1; 
TEMPBBaseSegC = 1;
TEMPYBaseSegC = 1;
TEMPRBaseSegC = 1; 

TEMPWNoBlindSegC = 1; 
TEMPBNoBlindSegC = 1;
TEMPYNoBlindSegC = 1;
TEMPRNoBlindSegC = 1; 

TEMPWBlindSegC = 1; 
TEMPBBlindSegC = 1;
TEMPYBlindSegC = 1;
TEMPRBlindSegC = 1; 

%amount of participants 22
for i=1:22
    for j=1:6
        
    s = size(TEMPWBase);
    s = s(1);
    
    if j == 1
        TEMPWBaseSegC(j,i) = TEMPWBase(j,i) - TEMPWBase(j*40,i);
    TEMPBBaseSegC(j,i) = TEMPBBase(j,i) - TEMPBBase(j*40,i);
    TEMPYBaseSegC(j,i) = TEMPYBase(j,i) - TEMPYBase(j*40,i);
    TEMPRBaseSegC(j,i) = TEMPRBase(j,i) - TEMPRBase(j*40,i);
    
    s = size(TEMPWNoBlind);
    s = s(1);
    TEMPWNoBlindSegC(j,i) = TEMPWNoBlind(j,i) - TEMPWNoBlind(j*120,i);
    TEMPBNoBlindSegC(j,i) = TEMPBNoBlind(j,i) - TEMPBNoBlind(j*120,i);
    TEMPYNoBlindSegC(j,i) = TEMPYNoBlind(j,i) - TEMPYNoBlind(j*120,i);
    TEMPRNoBlindSegC(j,i) = TEMPRNoBlind(j,i) - TEMPRNoBlind(j*120,i);
    
    s = size(TEMPWBlind);
    s = s(1);
    TEMPWBlindSegC(j,i) = TEMPWBlind(j,i) - TEMPWBlind(j*120,i);
    TEMPBBlindSegC(j,i) = TEMPBBlind(j,i) - TEMPBBlind(j*120,i);
    TEMPYBlindSegC(j,i) = TEMPYBlind(j,i) - TEMPYBlind(j*120,i);
    TEMPRBlindSegC(j,i) = TEMPRBlind(j,i) - TEMPRBlind(j*120,i);
    else 
    
    TEMPWBaseSegC(j,i) = TEMPWBase((j-1)*40,i) - TEMPWBase(j*40,i);
    TEMPBBaseSegC(j,i) = TEMPBBase((j-1)*40,i) - TEMPBBase(j*40,i);
    TEMPYBaseSegC(j,i) = TEMPYBase((j-1)*40,i) - TEMPYBase(j*40,i);
    TEMPRBaseSegC(j,i) = TEMPRBase((j-1)*40,i) - TEMPRBase(j*40,i);
    
    s = size(TEMPWNoBlind);
    s = s(1);
    TEMPWNoBlindSegC(j,i) = TEMPWNoBlind((j-1)*120,i) - TEMPWNoBlind(j*120,i);
    TEMPBNoBlindSegC(j,i) = TEMPBNoBlind((j-1)*120,i) - TEMPBNoBlind(j*120,i);
    TEMPYNoBlindSegC(j,i) = TEMPYNoBlind((j-1)*120,i) - TEMPYNoBlind(j*120,i);
    TEMPRNoBlindSegC(j,i) = TEMPRNoBlind((j-1)*120,i) - TEMPRNoBlind(j*120,i);
    
    s = size(TEMPWBlind);
    s = s(1);
    TEMPWBlindSegC(j,i) = TEMPWBlind((j-1)*120,i) - TEMPWBlind(j*120,i);
    TEMPBBlindSegC(j,i) = TEMPBBlind((j-1)*120,i) - TEMPBBlind(j*120,i);
    TEMPYBlindSegC(j,i) = TEMPYBlind((j-1)*120,i) - TEMPYBlind(j*120,i);
    TEMPRBlindSegC(j,i) = TEMPRBlind((j-1)*120,i) - TEMPRBlind(j*120,i);
        end
    end
end 
%Statistics for the overview of difference from difference from start to
%finish
dataEBlind = [TEMPBBlindTotC; TEMPRBlindTotC;  TEMPYBlindTotC; TEMPWBlindTotC ];
dataENoBlind = [TEMPBNoBlindTotC; TEMPRNoBlindTotC;  TEMPYNoBlindTotC; TEMPWNoBlindTotC ];
dataEBase = [TEMPBBaseTotC; TEMPRBaseTotC;  TEMPYBaseTotC; TEMPWBaseTotC ];

meanBBaseC = mean(TEMPBBaseTotC); 
stdBBaseC = std(TEMPBBaseTotC);

meanRBaseC = mean(TEMPRBaseTotC); 
stdRBaseC = std(TEMPRBaseTotC);

meanYBaseC = mean(TEMPYBaseTotC); 
stdYBaseC = std(TEMPYBaseTotC);

meanWBaseC = mean(TEMPWBaseTotC); 
stdWBaseC = std(TEMPWBaseTotC);

x=1:4;
y = [meanBBaseC meanRBaseC meanYBaseC meanWBaseC];
std_dev = [stdBBaseC stdRBaseC stdYBaseC stdWBaseC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


meanBNoBlindC = mean(TEMPBNoBlindTotC); 
stdBNoBlindC = std(TEMPBNoBlindTotC);

meanRNoBlindC = mean(TEMPRNoBlindTotC); 
stdRNoBlindC = std(TEMPRNoBlindTotC);

meanYNoBlindC = mean(TEMPYNoBlindTotC); 
stdYNoBlindC = std(TEMPYNoBlindTotC);

meanWNoBlindC = mean(TEMPWNoBlindTotC); 
stdWNoBlindC = std(TEMPWNoBlindTotC);

x=1:4;
y = [meanBNoBlindC meanRNoBlindC meanYNoBlindC meanWNoBlindC];
std_dev = [stdBNoBlindC stdRNoBlindC stdYNoBlindC stdWNoBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})

meanBBlindC = mean(TEMPBBlindTotC); 
stdBBlindC = std(TEMPBBlindTotC);

meanRBlindC = mean(TEMPRBlindTotC); 
stdRBlindC = std(TEMPRBlindTotC);

meanYBlindC = mean(TEMPYBlindTotC); 
stdYBlindC = std(TEMPYBlindTotC);

meanWBlindC = mean(TEMPWBlindTotC); 
stdWBlindC = std(TEMPWBlindTotC);

x=1:4;
y = [meanBBlindC meanRBlindC meanYBlindC meanWBlindC];
std_dev = [stdBBlindC stdRBlindC stdYBlindC stdWBlindC];

figure
hold on
bar(x,y)
errorbar(y,std_dev ,'.')
xticks([1 2 3 4 ])
xticklabels({'Blue','Red','Yellow','White'})


[f,p] = ttest2(TEMPBNoBlindTotC,TEMPRNoBlindTotC)
[f,p] = ttest2(TEMPBNoBlindTotC,TEMPYNoBlindTotC)
[f,p] = ttest2(TEMPBNoBlindTotC,TEMPWNoBlindTotC)
[f,p] = ttest2(TEMPRNoBlindTotC,TEMPYNoBlindTotC)
[f,p] = ttest2(TEMPRNoBlindTotC,TEMPWNoBlindTotC)
[f,p] = ttest2(TEMPYNoBlindTotC,TEMPWNoBlindTotC)

[f,p] = ttest2(TEMPBBlindTotC,TEMPRBlindTotC)
[f,p] = ttest2(TEMPBBlindTotC,TEMPYBlindTotC)
[f,p] = ttest2(TEMPBBlindTotC,TEMPWBlindTotC)
[f,p] = ttest2(TEMPRBlindTotC,TEMPYBlindTotC)
[f,p] = ttest2(TEMPRBlindTotC,TEMPWBlindTotC)
[f,p] = ttest2(TEMPYBlindTotC,TEMPWBlindTotC)

[f,p] = ttest2(TEMPBBaseTotC,TEMPRBaseTotC)
[f,p] = ttest2(TEMPBBaseTotC,TEMPYBaseTotC)
[f,p] = ttest2(TEMPBBaseTotC,TEMPWBaseTotC)
[f,p] = ttest2(TEMPRBaseTotC,TEMPYBaseTotC)
[f,p] = ttest2(TEMPRBaseTotC,TEMPWBaseTotC)
[f,p] = ttest2(TEMPYBaseTotC,TEMPWBaseTotC)

%Statistics for the intermediate difference the 6 points in time within the
%datastream. 
%average lines and stds to accommodate the average 
for i=1:6 
    
meanBBaseSegC(i) = mean(TEMPBBaseSegC(i,:)); 
stdBBaseSegC(i) = std(TEMPBBaseSegC(i,:));

meanRBaseSegC(i) = mean(TEMPRBaseSegC(i,:)); 
stdRBaseSegC(i) = std(TEMPRBaseSegC(i,:));

meanYBaseSegC(i) = mean(TEMPYBaseSegC(i,:)); 
stdYBaseSegC(i) = std(TEMPYBaseSegC(i,:));

meanWBaseSegC(i) = mean(TEMPWBaseSegC(i,:)); 
stdWBaseSegC(i) = std(TEMPWBaseSegC(i,:));

meanBNoBlindSegC(i) = mean(TEMPBNoBlindSegC(i,:)); 
stdBNoBlindSegC(i) = std(TEMPBNoBlindSegC(i,:));

meanRNoBlindSegC(i) = mean(TEMPRNoBlindSegC(i,:)); 
stdRNoBlindSegC(i) = std(TEMPRNoBlindSegC(i,:));

meanYNoBlindSegC(i) = mean(TEMPYNoBlindSegC(i,:)); 
stdYNoBlindSegC(i) = std(TEMPYNoBlindSegC(i,:));

meanWNoBlindSegC(i) = mean(TEMPWNoBlindSegC(i,:)); 
stdWNoBlindSegC(i) = std(TEMPWNoBlindSegC(i,:));

meanBBlindSegC(i) = mean(TEMPBBlindSegC(i,:)); 
stdBBlindSegC(i) = std(TEMPBBlindSegC(i,:));

meanRBlindSegC(i) = mean(TEMPRBlindSegC(i,:)); 
stdRBlindSegC(i) = std(TEMPRBlindSegC(i,:));

meanYBlindSegC(i) = mean(TEMPYBlindSegC(i,:)); 
stdYBlindSegC(i) = std(TEMPYBlindSegC(i,:));

meanWBlindSegC(i) = mean(TEMPWBlindSegC(i,:)); 
stdWBlindSegC(i) = std(TEMPWBlindSegC(i,:));

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
