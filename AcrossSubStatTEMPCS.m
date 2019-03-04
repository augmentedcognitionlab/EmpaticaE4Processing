%Temperature measures 
%statistics on all subs 


%*************************************
%This script connects all the baseline and condition data from all the participants 
% The statistics are based on the ChangeScore results. 
% T-test's is used to see if there are any points in time where the
% different scenarios inside the consitions are different.
% ANOVA test is used to see whether the collected data for the whole time
% is significnat different between scenarios. 
% lastly the effect sizes are presented to support the ANOVA in order to
% see whether the observed differences are indeed meaningful. 
% figures with average lines showcases an llustration of how different
% datastream moves in average. 
% The T-test also have it's own graphs to show where eventually significant
% difference occurs. 
% ANOVA graphs looks like ANOVA graphs. 
%************************************


%average curves for viz 
%White BaseCSline 
AllAvrTEMPWhiteBaseCS = 1;
AllStdTEMPWhiteBaseCS = 1;
AllSubTEMPWhiteBaseCS = [Sub2normTEMPWhiteBase, Sub3normTEMPWhiteBase, Sub4normTEMPWhiteBase,...
    Sub5normTEMPWhiteBase, Sub6normTEMPWhiteBase, Sub7normTEMPWhiteBase, Sub8normTEMPWhiteBase,...
    Sub9normTEMPWhiteBase, Sub10normTEMPWhiteBase, Sub11normTEMPWhiteBase, Sub13normTEMPWhiteBase,...
    Sub14normTEMPWhiteBase, Sub15normTEMPWhiteBase, Sub16normTEMPWhiteBase, Sub17normTEMPWhiteBase,...
    Sub18normTEMPWhiteBase, Sub19normTEMPWhiteBase, Sub20normTEMPWhiteBase, Sub21normTEMPWhiteBase,...
    Sub24normTEMPWhiteBase, Sub25normTEMPWhiteBase,...
    Sub26normTEMPWhiteBase];

AllSubTEMPWhiteBaseCSColumn = [Sub2normTEMPWhiteBase; Sub3normTEMPWhiteBase; Sub4normTEMPWhiteBase;...
    Sub5normTEMPWhiteBase; Sub6normTEMPWhiteBase; Sub7normTEMPWhiteBase; Sub8normTEMPWhiteBase;...
    Sub9normTEMPWhiteBase; Sub10normTEMPWhiteBase; Sub11normTEMPWhiteBase; Sub13normTEMPWhiteBase;...
    Sub14normTEMPWhiteBase; Sub15normTEMPWhiteBase; Sub16normTEMPWhiteBase; Sub17normTEMPWhiteBase;...
    Sub18normTEMPWhiteBase; Sub19normTEMPWhiteBase; Sub20normTEMPWhiteBase; Sub21normTEMPWhiteBase;...
    Sub24normTEMPWhiteBase; Sub25normTEMPWhiteBase;...
    Sub26normTEMPWhiteBase];


for i=1:size(AllSubTEMPWhiteBaseCS)
AllAvrTEMPWhiteBaseCS(i) = mean(AllSubTEMPWhiteBaseCS(i,:));
AllStdTEMPWhiteBaseCS(i) = std(AllSubTEMPWhiteBaseCS(i,:));
end
figure 
plot(AllAvrTEMPWhiteBaseCS)
hold on 
plot(AllStdTEMPWhiteBaseCS)

%Blue BaseCSline 
AllAvrTEMPBlueBaseCS = 1;
AllStdTEMPBlueBaseCS = 1;
AllSubTEMPBlueBaseCS = [Sub2normTEMPBlueBase, Sub3normTEMPBlueBase, Sub4normTEMPBlueBase,...
    Sub5normTEMPBlueBase, Sub6normTEMPBlueBase, Sub7normTEMPBlueBase, Sub8normTEMPBlueBase,...
    Sub9normTEMPBlueBase, Sub10normTEMPBlueBase, Sub11normTEMPBlueBase, Sub13normTEMPBlueBase,...
    Sub14normTEMPBlueBase, Sub15normTEMPBlueBase, Sub16normTEMPBlueBase, Sub17normTEMPBlueBase,...
    Sub18normTEMPBlueBase, Sub19normTEMPBlueBase, Sub20normTEMPBlueBase, Sub21normTEMPBlueBase,...
    Sub24normTEMPBlueBase, Sub25normTEMPBlueBase,...
    Sub26normTEMPBlueBase];

AllSubTEMPBlueBaseCSColumn = [Sub2normTEMPBlueBase; Sub3normTEMPBlueBase; Sub4normTEMPBlueBase;...
    Sub5normTEMPBlueBase; Sub6normTEMPBlueBase; Sub7normTEMPBlueBase; Sub8normTEMPBlueBase;...
    Sub9normTEMPBlueBase; Sub10normTEMPBlueBase; Sub11normTEMPBlueBase; Sub13normTEMPBlueBase;...
    Sub14normTEMPBlueBase; Sub15normTEMPBlueBase; Sub16normTEMPBlueBase; Sub17normTEMPBlueBase;...
    Sub18normTEMPBlueBase; Sub19normTEMPBlueBase; Sub20normTEMPBlueBase; Sub21normTEMPBlueBase;...
    Sub24normTEMPBlueBase; Sub25normTEMPBlueBase;...
    Sub26normTEMPBlueBase];


for i=1:size(AllSubTEMPBlueBaseCS)
AllAvrTEMPBlueBaseCS(i) = mean(AllSubTEMPBlueBaseCS(i,:));
AllStdTEMPBlueBaseCS(i) = std(AllSubTEMPBlueBaseCS(i,:));
end

%Red BaseCSline 
AllAvrTEMPRedBaseCS = 1;
AllStdTEMPRedBaseCS = 1;
AllSubTEMPRedBaseCS = [Sub2normTEMPRedBase, Sub3normTEMPRedBase, Sub4normTEMPRedBase,...
    Sub5normTEMPRedBase, Sub6normTEMPRedBase, Sub7normTEMPRedBase, Sub8normTEMPRedBase,...
    Sub9normTEMPRedBase, Sub10normTEMPRedBase, Sub11normTEMPRedBase, Sub13normTEMPRedBase,...
    Sub14normTEMPRedBase, Sub15normTEMPRedBase, Sub16normTEMPRedBase, Sub17normTEMPRedBase,...
    Sub18normTEMPRedBase, Sub19normTEMPRedBase, Sub20normTEMPRedBase, Sub21normTEMPRedBase,...
    Sub24normTEMPRedBase, Sub25normTEMPRedBase,...
    Sub26normTEMPRedBase];

AllSubTEMPRedBaseCSColumn = [Sub2normTEMPRedBase; Sub3normTEMPRedBase; Sub4normTEMPRedBase;...
    Sub5normTEMPRedBase; Sub6normTEMPRedBase; Sub7normTEMPRedBase; Sub8normTEMPRedBase;...
    Sub9normTEMPRedBase; Sub10normTEMPRedBase; Sub11normTEMPRedBase; Sub13normTEMPRedBase;...
    Sub14normTEMPRedBase; Sub15normTEMPRedBase; Sub16normTEMPRedBase; Sub17normTEMPRedBase;...
    Sub18normTEMPRedBase; Sub19normTEMPRedBase; Sub20normTEMPRedBase; Sub21normTEMPRedBase;...
    Sub24normTEMPRedBase; Sub25normTEMPRedBase;...
    Sub26normTEMPRedBase];


for i=1:size(AllSubTEMPRedBaseCS)
AllAvrTEMPRedBaseCS(i) = mean(AllSubTEMPRedBaseCS(i,:));
AllStdTEMPRedBaseCS(i) = std(AllSubTEMPRedBaseCS(i,:));
end

%Yellow BaseCSline 
AllAvrTEMPYellowBaseCS = 1;
AllStdTEMPYellowBaseCS = 1;
AllSubTEMPYellowBaseCS = [Sub2normTEMPYellowBase, Sub3normTEMPYellowBase, Sub4normTEMPYellowBase,...
    Sub5normTEMPYellowBase, Sub6normTEMPYellowBase, Sub7normTEMPYellowBase, Sub8normTEMPYellowBase,...
    Sub9normTEMPYellowBase, Sub10normTEMPYellowBase, Sub11normTEMPYellowBase, Sub13normTEMPYellowBase,...
    Sub14normTEMPYellowBase, Sub15normTEMPYellowBase, Sub16normTEMPYellowBase, Sub17normTEMPYellowBase,...
    Sub18normTEMPYellowBase, Sub19normTEMPYellowBase, Sub20normTEMPYellowBase, Sub21normTEMPYellowBase,...
    Sub24normTEMPYellowBase, Sub25normTEMPYellowBase,...
    Sub26normTEMPYellowBase];

AllSubTEMPYellowBaseCSColumn = [Sub2normTEMPYellowBase; Sub3normTEMPYellowBase; Sub4normTEMPYellowBase;...
    Sub5normTEMPYellowBase; Sub6normTEMPYellowBase; Sub7normTEMPYellowBase; Sub8normTEMPYellowBase;...
    Sub9normTEMPYellowBase; Sub10normTEMPYellowBase; Sub11normTEMPYellowBase; Sub13normTEMPYellowBase;...
    Sub14normTEMPYellowBase; Sub15normTEMPYellowBase; Sub16normTEMPYellowBase; Sub17normTEMPYellowBase;...
    Sub18normTEMPYellowBase; Sub19normTEMPYellowBase; Sub20normTEMPYellowBase; Sub21normTEMPYellowBase;...
    Sub24normTEMPYellowBase; Sub25normTEMPYellowBase;...
    Sub26normTEMPYellowBase];

for i=1:size(AllSubTEMPYellowBaseCS)
AllAvrTEMPYellowBaseCS(i) = mean(AllSubTEMPYellowBaseCS(i,:));
AllStdTEMPYellowBaseCS(i) = std(AllSubTEMPYellowBaseCS(i,:));
[H, AllTtestTEMPYvsBBaseCS(i)] = ttest2(AllSubTEMPYellowBaseCS(i,:),AllSubTEMPBlueBaseCS(i,:));
[H, AllTtestTEMPYvsRBaseCS(i)] = ttest2(AllSubTEMPYellowBaseCS(i,:),AllSubTEMPRedBaseCS(i,:));
[H, AllTtestTEMPYvsWBaseCS(i)] = ttest2(AllSubTEMPYellowBaseCS(i,:),AllSubTEMPWhiteBaseCS(i,:));

[H, AllTtestTEMPBvsWBaseCS(i)] = ttest2(AllSubTEMPBlueBaseCS(i,:),AllSubTEMPWhiteBaseCS(i,:));
[H, AllTtestTEMPBvsRBaseCS(i)] = ttest2(AllSubTEMPBlueBaseCS(i,:),AllSubTEMPRedBaseCS(i,:));

[H, AllTtestTEMPRvsWBaseCS(i)] = ttest2(AllSubTEMPRedBaseCS(i,:),AllSubTEMPWhiteBaseCS(i,:));
end
figure
plot(AllTtestTEMPYvsBBaseCS)
hold on
plot(AllTtestTEMPYvsRBaseCS)
hold on 
plot(AllTtestTEMPYvsWBaseCS)
hold on
plot(AllTtestTEMPBvsWBaseCS)
hold on 
plot(AllTtestTEMPBvsRBaseCS)
hold on 
plot(AllTtestTEMPRvsWBaseCS)


%All Average BaseCSlines together. 
figure 
plot(AllAvrTEMPBlueBaseCS)
hold on 
plot(AllAvrTEMPRedBaseCS)
hold on 
plot(AllAvrTEMPYellowBaseCS)
hold on 
plot(AllAvrTEMPWhiteBaseCS)
hold on 

%White NoBlindCS
AllAvrTEMPWhiteNoBlindCS = 1;
AllStdTEMPWhiteNoBlindCS = 1;
AllSubTEMPWhiteNoBlindCS = [Sub2TEMPwhitenoBlindCS, Sub3TEMPwhitenoBlindCS, Sub4TEMPwhitenoBlindCS,...
    Sub5TEMPwhitenoBlindCS, Sub6TEMPwhitenoBlindCS, Sub7TEMPwhitenoBlindCS, Sub8TEMPwhitenoBlindCS,...
    Sub9TEMPwhitenoBlindCS, Sub10TEMPwhitenoBlindCS, Sub11TEMPwhitenoBlindCS, Sub13TEMPwhitenoBlindCS,...
    Sub14TEMPwhitenoBlindCS, Sub15TEMPwhitenoBlindCS, Sub16TEMPwhitenoBlindCS, Sub17TEMPwhitenoBlindCS,...
    Sub18TEMPwhitenoBlindCS, Sub19TEMPwhitenoBlindCS, Sub20TEMPwhitenoBlindCS, Sub21TEMPwhitenoBlindCS,...
    Sub24TEMPwhitenoBlindCS, Sub25TEMPwhitenoBlindCS,...
    Sub26TEMPwhitenoBlindCS];

AllSubTEMPWhiteNoBlindCSColumn = [Sub2TEMPwhitenoBlindCS; Sub3TEMPwhitenoBlindCS; Sub4TEMPwhitenoBlindCS;...
    Sub5TEMPwhitenoBlindCS; Sub6TEMPwhitenoBlindCS; Sub7TEMPwhitenoBlindCS; Sub8TEMPwhitenoBlindCS;...
    Sub9TEMPwhitenoBlindCS; Sub10TEMPwhitenoBlindCS; Sub11TEMPwhitenoBlindCS; Sub13TEMPwhitenoBlindCS;...
    Sub14TEMPwhitenoBlindCS; Sub15TEMPwhitenoBlindCS; Sub16TEMPwhitenoBlindCS; Sub17TEMPwhitenoBlindCS;...
    Sub18TEMPwhitenoBlindCS; Sub19TEMPwhitenoBlindCS; Sub20TEMPwhitenoBlindCS; Sub21TEMPwhitenoBlindCS;...
    Sub24TEMPwhitenoBlindCS; Sub25TEMPwhitenoBlindCS;...
    Sub26TEMPwhitenoBlindCS];

for i=1:size(AllSubTEMPWhiteNoBlindCS)
AllAvrTEMPWhiteNoBlindCS(i) = mean(AllSubTEMPWhiteNoBlindCS(i,:));
AllStdTEMPWhiteNoBlindCS(i) = std(AllSubTEMPWhiteNoBlindCS(i,:));
end

%Blue NoBlindCS
AllAvrTEMPBlueNoBlindCS = 1;
AllStdTEMPBlueNoBlindCS = 1;
AllSubTEMPBlueNoBlindCS = [Sub2TEMPBluenoBlindCS, Sub3TEMPBluenoBlindCS, Sub4TEMPBluenoBlindCS,...
    Sub5TEMPBluenoBlindCS, Sub6TEMPBluenoBlindCS, Sub7TEMPBluenoBlindCS, Sub8TEMPBluenoBlindCS,...
    Sub9TEMPBluenoBlindCS, Sub10TEMPBluenoBlindCS, Sub11TEMPBluenoBlindCS, Sub13TEMPBluenoBlindCS,...
    Sub14TEMPBluenoBlindCS, Sub15TEMPBluenoBlindCS, Sub16TEMPBluenoBlindCS, Sub17TEMPBluenoBlindCS,...
    Sub18TEMPBluenoBlindCS, Sub19TEMPBluenoBlindCS, Sub20TEMPBluenoBlindCS, Sub21TEMPBluenoBlindCS,...
    Sub24TEMPBluenoBlindCS, Sub25TEMPBluenoBlindCS,...
    Sub26TEMPBluenoBlindCS];

AllSubTEMPBlueNoBlindCSColumn = [Sub2TEMPBluenoBlindCS; Sub3TEMPBluenoBlindCS; Sub4TEMPBluenoBlindCS;...
    Sub5TEMPBluenoBlindCS; Sub6TEMPBluenoBlindCS; Sub7TEMPBluenoBlindCS; Sub8TEMPBluenoBlindCS;...
    Sub9TEMPBluenoBlindCS; Sub10TEMPBluenoBlindCS; Sub11TEMPBluenoBlindCS; Sub13TEMPBluenoBlindCS;...
    Sub14TEMPBluenoBlindCS; Sub15TEMPBluenoBlindCS; Sub16TEMPBluenoBlindCS; Sub17TEMPBluenoBlindCS;...
    Sub18TEMPBluenoBlindCS; Sub19TEMPBluenoBlindCS; Sub20TEMPBluenoBlindCS; Sub21TEMPBluenoBlindCS;...
    Sub24TEMPBluenoBlindCS; Sub25TEMPBluenoBlindCS;...
    Sub26TEMPBluenoBlindCS];

for i=1:size(AllSubTEMPBlueNoBlindCS)
AllAvrTEMPBlueNoBlindCS(i) = mean(AllSubTEMPBlueNoBlindCS(i,:));
AllStdTEMPBlueNoBlindCS(i) = std(AllSubTEMPBlueNoBlindCS(i,:));
end

%Red NoBlindCS
AllAvrTEMPRedNoBlindCS = 1;
AllStdTEMPRedNoBlindCS = 1;
AllSubTEMPRedNoBlindCS = [Sub2TEMPRednoBlindCS, Sub3TEMPRednoBlindCS, Sub4TEMPRednoBlindCS,...
    Sub5TEMPRednoBlindCS, Sub6TEMPRednoBlindCS, Sub7TEMPRednoBlindCS, Sub8TEMPRednoBlindCS,...
    Sub9TEMPRednoBlindCS, Sub10TEMPRednoBlindCS, Sub11TEMPRednoBlindCS, Sub13TEMPRednoBlindCS,...
    Sub14TEMPRednoBlindCS, Sub15TEMPRednoBlindCS, Sub16TEMPRednoBlindCS, Sub17TEMPRednoBlindCS,...
    Sub18TEMPRednoBlindCS, Sub19TEMPRednoBlindCS, Sub20TEMPRednoBlindCS, Sub21TEMPRednoBlindCS,...
    Sub24TEMPRednoBlindCS, Sub25TEMPRednoBlindCS,...
    Sub26TEMPRednoBlindCS];

AllSubTEMPRedNoBlindCSColumn = [Sub2TEMPRednoBlindCS; Sub3TEMPRednoBlindCS; Sub4TEMPRednoBlindCS;...
    Sub5TEMPRednoBlindCS; Sub6TEMPRednoBlindCS; Sub7TEMPRednoBlindCS; Sub8TEMPRednoBlindCS;...
    Sub9TEMPRednoBlindCS; Sub10TEMPRednoBlindCS; Sub11TEMPRednoBlindCS; Sub13TEMPRednoBlindCS;...
    Sub14TEMPRednoBlindCS; Sub15TEMPRednoBlindCS; Sub16TEMPRednoBlindCS; Sub17TEMPRednoBlindCS;...
    Sub18TEMPRednoBlindCS; Sub19TEMPRednoBlindCS; Sub20TEMPRednoBlindCS; Sub21TEMPRednoBlindCS;...
    Sub24TEMPRednoBlindCS; Sub25TEMPRednoBlindCS;...
    Sub26TEMPRednoBlindCS];

for i=1:size(AllSubTEMPRedNoBlindCS)
AllAvrTEMPRedNoBlindCS(i) = mean(AllSubTEMPRedNoBlindCS(i,:));
AllStdTEMPRedNoBlindCS(i) = std(AllSubTEMPRedNoBlindCS(i,:));
end

%Yellow NoBlindCS
AllAvrTEMPYellowNoBlindCS = 1;
AllStdTEMPYellowNoBlindCS = 1;
AllSubTEMPYellowNoBlindCS = [Sub2TEMPYellownoBlindCS, Sub3TEMPYellownoBlindCS, Sub4TEMPYellownoBlindCS,...
    Sub5TEMPYellownoBlindCS, Sub6TEMPYellownoBlindCS, Sub7TEMPYellownoBlindCS, Sub8TEMPYellownoBlindCS,...
    Sub9TEMPYellownoBlindCS, Sub10TEMPYellownoBlindCS, Sub11TEMPYellownoBlindCS, Sub13TEMPYellownoBlindCS,...
    Sub14TEMPYellownoBlindCS, Sub15TEMPYellownoBlindCS, Sub16TEMPYellownoBlindCS, Sub17TEMPYellownoBlindCS,...
    Sub18TEMPYellownoBlindCS, Sub19TEMPYellownoBlindCS, Sub20TEMPYellownoBlindCS, Sub21TEMPYellownoBlindCS,...
    Sub24TEMPYellownoBlindCS, Sub25TEMPYellownoBlindCS,...
    Sub26TEMPYellownoBlindCS];

AllSubTEMPYellowNoBlindCSColumn = [Sub2TEMPYellownoBlindCS; Sub3TEMPYellownoBlindCS; Sub4TEMPYellownoBlindCS;...
    Sub5TEMPYellownoBlindCS; Sub6TEMPYellownoBlindCS; Sub7TEMPYellownoBlindCS; Sub8TEMPYellownoBlindCS;...
    Sub9TEMPYellownoBlindCS; Sub10TEMPYellownoBlindCS; Sub11TEMPYellownoBlindCS; Sub13TEMPYellownoBlindCS;...
    Sub14TEMPYellownoBlindCS; Sub15TEMPYellownoBlindCS; Sub16TEMPYellownoBlindCS; Sub17TEMPYellownoBlindCS;...
    Sub18TEMPYellownoBlindCS; Sub19TEMPYellownoBlindCS; Sub20TEMPYellownoBlindCS; Sub21TEMPYellownoBlindCS;...
    Sub24TEMPYellownoBlindCS; Sub25TEMPYellownoBlindCS;...
    Sub26TEMPYellownoBlindCS];


for i=1:size(AllSubTEMPYellowNoBlindCS)
AllAvrTEMPYellowNoBlindCS(i) = mean(AllSubTEMPYellowNoBlindCS(i,:));
AllStdTEMPYellowNoBlindCS(i) = std(AllSubTEMPYellowNoBlindCS(i,:));
[H, AllTtestTEMPYvsBNoBlindCS(i)] = ttest2(AllSubTEMPYellowNoBlindCS(i,:),AllSubTEMPBlueNoBlindCS(i,:));
[H, AllTtestTEMPYvsRNoBlindCS(i)] = ttest2(AllSubTEMPYellowNoBlindCS(i,:),AllSubTEMPRedNoBlindCS(i,:));
[H, AllTtestTEMPYvsWNoBlindCS(i)] = ttest2(AllSubTEMPYellowNoBlindCS(i,:),AllSubTEMPWhiteNoBlindCS(i,:));

[H, AllTtestTEMPBvsWNoBlindCS(i)] = ttest2(AllSubTEMPBlueNoBlindCS(i,:),AllSubTEMPWhiteNoBlindCS(i,:));
[H, AllTtestTEMPBvsRNoBlindCS(i)] = ttest2(AllSubTEMPBlueNoBlindCS(i,:),AllSubTEMPRedNoBlindCS(i,:));

[H, AllTtestTEMPRvsWNoBlindCS(i)] = ttest2(AllSubTEMPRedNoBlindCS(i,:),AllSubTEMPWhiteNoBlindCS(i,:));
end
figure
plot(AllTtestTEMPYvsBNoBlindCS)
hold on
plot(AllTtestTEMPYvsRNoBlindCS)
hold on 
plot(AllTtestTEMPYvsWNoBlindCS)
hold on
plot(AllTtestTEMPBvsWNoBlindCS)
hold on 
plot(AllTtestTEMPBvsRNoBlindCS)
hold on 
plot(AllTtestTEMPRvsWNoBlindCS)

%All Average NoBlindCS together. 
figure 
plot(AllAvrTEMPBlueNoBlindCS)
hold on 
plot(AllAvrTEMPRedNoBlindCS)
hold on 
plot(AllAvrTEMPYellowNoBlindCS)
hold on 
plot(AllAvrTEMPWhiteNoBlindCS)
hold on

%White BlindCS
AllAvrTEMPWhiteBlindCS = 1;
AllStdTEMPWhiteBlindCS = 1;
AllSubTEMPWhiteBlindCS = [Sub2TEMPwhiteBlindCS, Sub3TEMPwhiteBlindCS, Sub4TEMPwhiteBlindCS,...
    Sub5TEMPwhiteBlindCS, Sub6TEMPwhiteBlindCS, Sub7TEMPwhiteBlindCS, Sub8TEMPwhiteBlindCS,...
    Sub9TEMPwhiteBlindCS, Sub10TEMPwhiteBlindCS, Sub11TEMPwhiteBlindCS, Sub13TEMPwhiteBlindCS,...
    Sub14TEMPwhiteBlindCS, Sub15TEMPwhiteBlindCS, Sub16TEMPwhiteBlindCS, Sub17TEMPwhiteBlindCS,...
    Sub18TEMPwhiteBlindCS, Sub19TEMPwhiteBlindCS, Sub20TEMPwhiteBlindCS, Sub21TEMPwhiteBlindCS,...
    Sub24TEMPwhiteBlindCS, Sub25TEMPwhiteBlindCS,...
    Sub26TEMPwhiteBlindCS];

AllSubTEMPWhiteBlindCSColumn = [Sub2TEMPwhiteBlindCS; Sub3TEMPwhiteBlindCS; Sub4TEMPwhiteBlindCS;...
    Sub5TEMPwhiteBlindCS; Sub6TEMPwhiteBlindCS; Sub7TEMPwhiteBlindCS; Sub8TEMPwhiteBlindCS;...
    Sub9TEMPwhiteBlindCS; Sub10TEMPwhiteBlindCS; Sub11TEMPwhiteBlindCS; Sub13TEMPwhiteBlindCS;...
    Sub14TEMPwhiteBlindCS; Sub15TEMPwhiteBlindCS; Sub16TEMPwhiteBlindCS; Sub17TEMPwhiteBlindCS;...
    Sub18TEMPwhiteBlindCS; Sub19TEMPwhiteBlindCS; Sub20TEMPwhiteBlindCS; Sub21TEMPwhiteBlindCS;...
    Sub24TEMPwhiteBlindCS; Sub25TEMPwhiteBlindCS;...
    Sub26TEMPwhiteBlindCS];

for i=1:size(AllSubTEMPWhiteBlindCS)
AllAvrTEMPWhiteBlindCS(i) = mean(AllSubTEMPWhiteBlindCS(i,:));
AllStdTEMPWhiteBlindCS(i) = std(AllSubTEMPWhiteBlindCS(i,:));
end

%Blue BlindCS
AllAvrTEMPBlueBlindCS = 1;
AllStdTEMPBlueBlindCS = 1;
AllSubTEMPBlueBlindCS = [Sub2TEMPBlueBlindCS, Sub3TEMPBlueBlindCS, Sub4TEMPBlueBlindCS,...
    Sub5TEMPBlueBlindCS, Sub6TEMPBlueBlindCS, Sub7TEMPBlueBlindCS, Sub8TEMPBlueBlindCS,...
    Sub9TEMPBlueBlindCS, Sub10TEMPBlueBlindCS, Sub11TEMPBlueBlindCS, Sub13TEMPBlueBlindCS,...
    Sub14TEMPBlueBlindCS, Sub15TEMPBlueBlindCS, Sub16TEMPBlueBlindCS, Sub17TEMPBlueBlindCS,...
    Sub18TEMPBlueBlindCS, Sub19TEMPBlueBlindCS, Sub20TEMPBlueBlindCS, Sub21TEMPBlueBlindCS,...
    Sub24TEMPBlueBlindCS, Sub25TEMPBlueBlindCS,...
    Sub26TEMPBlueBlindCS];

AllSubTEMPBlueBlindCSColumn = [Sub2TEMPBlueBlindCS; Sub3TEMPBlueBlindCS; Sub4TEMPBlueBlindCS;...
    Sub5TEMPBlueBlindCS; Sub6TEMPBlueBlindCS; Sub7TEMPBlueBlindCS; Sub8TEMPBlueBlindCS;...
    Sub9TEMPBlueBlindCS; Sub10TEMPBlueBlindCS; Sub11TEMPBlueBlindCS; Sub13TEMPBlueBlindCS;...
    Sub14TEMPBlueBlindCS; Sub15TEMPBlueBlindCS; Sub16TEMPBlueBlindCS; Sub17TEMPBlueBlindCS;...
    Sub18TEMPBlueBlindCS; Sub19TEMPBlueBlindCS; Sub20TEMPBlueBlindCS; Sub21TEMPBlueBlindCS;...
    Sub24TEMPBlueBlindCS; Sub25TEMPBlueBlindCS;...
    Sub26TEMPBlueBlindCS];

for i=1:size(AllSubTEMPBlueBlindCS)
AllAvrTEMPBlueBlindCS(i) = mean(AllSubTEMPBlueBlindCS(i,:));
AllStdTEMPBlueBlindCS(i) = std(AllSubTEMPBlueBlindCS(i,:));
end

%Red BlindCS
AllAvrTEMPRedBlindCS = 1;
AllStdTEMPRedBlindCS = 1;
AllSubTEMPRedBlindCS = [Sub2TEMPRedBlindCS, Sub3TEMPRedBlindCS, Sub4TEMPRedBlindCS,...
    Sub5TEMPRedBlindCS, Sub6TEMPRedBlindCS, Sub7TEMPRedBlindCS, Sub8TEMPRedBlindCS,...
    Sub9TEMPRedBlindCS, Sub10TEMPRedBlindCS, Sub11TEMPRedBlindCS, Sub13TEMPRedBlindCS,...
    Sub14TEMPRedBlindCS, Sub15TEMPRedBlindCS, Sub16TEMPRedBlindCS, Sub17TEMPRedBlindCS,...
    Sub18TEMPRedBlindCS, Sub19TEMPRedBlindCS, Sub20TEMPRedBlindCS, Sub21TEMPRedBlindCS,...
    Sub24TEMPRedBlindCS, Sub25TEMPRedBlindCS,...
    Sub26TEMPRedBlindCS];

AllSubTEMPRedBlindCSColumn = [Sub2TEMPRedBlindCS; Sub3TEMPRedBlindCS; Sub4TEMPRedBlindCS;...
    Sub5TEMPRedBlindCS; Sub6TEMPRedBlindCS; Sub7TEMPRedBlindCS; Sub8TEMPRedBlindCS;...
    Sub9TEMPRedBlindCS; Sub10TEMPRedBlindCS; Sub11TEMPRedBlindCS; Sub13TEMPRedBlindCS;...
    Sub14TEMPRedBlindCS; Sub15TEMPRedBlindCS; Sub16TEMPRedBlindCS; Sub17TEMPRedBlindCS;...
    Sub18TEMPRedBlindCS; Sub19TEMPRedBlindCS; Sub20TEMPRedBlindCS; Sub21TEMPRedBlindCS;...
    Sub24TEMPRedBlindCS; Sub25TEMPRedBlindCS;...
    Sub26TEMPRedBlindCS];

for i=1:size(AllSubTEMPRedBlindCS)
AllAvrTEMPRedBlindCS(i) = mean(AllSubTEMPRedBlindCS(i,:));
AllStdTEMPRedBlindCS(i) = std(AllSubTEMPRedBlindCS(i,:));
end

%Yellow BlindCS
AllAvrTEMPYellowBlindCS = 1;
AllStdTEMPYellowBlindCS = 1;
AllTtestTEMPYvsBBlindCS = 1;
AllSubTEMPYellowBlindCS = [Sub2TEMPYellowBlindCS, Sub3TEMPYellowBlindCS, Sub4TEMPYellowBlindCS,...
    Sub5TEMPYellowBlindCS, Sub6TEMPYellowBlindCS, Sub7TEMPYellowBlindCS, Sub8TEMPYellowBlindCS,...
    Sub9TEMPYellowBlindCS, Sub10TEMPYellowBlindCS, Sub11TEMPYellowBlindCS, Sub13TEMPYellowBlindCS,...
    Sub14TEMPYellowBlindCS, Sub15TEMPYellowBlindCS, Sub16TEMPYellowBlindCS, Sub17TEMPYellowBlindCS,...
    Sub18TEMPYellowBlindCS, Sub19TEMPYellowBlindCS, Sub20TEMPYellowBlindCS, Sub21TEMPYellowBlindCS,...
    Sub24TEMPYellowBlindCS, Sub25TEMPYellowBlindCS,...
    Sub26TEMPYellowBlindCS];

AllSubTEMPYellowBlindCSColumn = [Sub2TEMPYellowBlindCS; Sub3TEMPYellowBlindCS; Sub4TEMPYellowBlindCS;...
    Sub5TEMPYellowBlindCS; Sub6TEMPYellowBlindCS; Sub7TEMPYellowBlindCS; Sub8TEMPYellowBlindCS;...
    Sub9TEMPYellowBlindCS; Sub10TEMPYellowBlindCS; Sub11TEMPYellowBlindCS; Sub13TEMPYellowBlindCS;...
    Sub14TEMPYellowBlindCS; Sub15TEMPYellowBlindCS; Sub16TEMPYellowBlindCS; Sub17TEMPYellowBlindCS;...
    Sub18TEMPYellowBlindCS; Sub19TEMPYellowBlindCS; Sub20TEMPYellowBlindCS; Sub21TEMPYellowBlindCS;...
    Sub24TEMPYellowBlindCS; Sub25TEMPYellowBlindCS;...
    Sub26TEMPYellowBlindCS];

for i=1:size(AllSubTEMPYellowBlindCS)
AllAvrTEMPYellowBlindCS(i) = mean(AllSubTEMPYellowBlindCS(i,:));
AllStdTEMPYellowBlindCS(i) = std(AllSubTEMPYellowBlindCS(i,:));
[H, AllTtestTEMPYvsBBlindCS(i)] = ttest2(AllSubTEMPYellowBlindCS(i,:),AllSubTEMPBlueBlindCS(i,:));
[H, AllTtestTEMPYvsRBlindCS(i)] = ttest2(AllSubTEMPYellowBlindCS(i,:),AllSubTEMPRedBlindCS(i,:));
[H, AllTtestTEMPYvsWBlindCS(i)] = ttest2(AllSubTEMPYellowBlindCS(i,:),AllSubTEMPWhiteBlindCS(i,:));

[H, AllTtestTEMPBvsWBlindCS(i)] = ttest2(AllSubTEMPBlueBlindCS(i,:),AllSubTEMPWhiteBlindCS(i,:));
[H, AllTtestTEMPBvsRBlindCS(i)] = ttest2(AllSubTEMPBlueBlindCS(i,:),AllSubTEMPRedBlindCS(i,:));

[H, AllTtestTEMPRvsWBlindCS(i)] = ttest2(AllSubTEMPRedBlindCS(i,:),AllSubTEMPWhiteBlindCS(i,:));
end
figure
plot(AllTtestTEMPYvsBBlindCS)
hold on
plot(AllTtestTEMPYvsRBlindCS)
hold on 
plot(AllTtestTEMPYvsWBlindCS)
hold on
plot(AllTtestTEMPBvsWBlindCS)
hold on 
plot(AllTtestTEMPBvsRBlindCS)
hold on 
plot(AllTtestTEMPRvsWBlindCS)

%All Average BlindCS together. 
figure 
plot(AllAvrTEMPBlueBlindCS)
hold on 
plot(AllAvrTEMPRedBlindCS)
hold on 
plot(AllAvrTEMPYellowBlindCS)
hold on 
plot(AllAvrTEMPWhiteBlindCS)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaTEMPReadyBaseCS = [AllSubTEMPWhiteBaseCSColumn,AllSubTEMPBlueBaseCSColumn, AllSubTEMPRedBaseCSColumn, AllSubTEMPYellowBaseCSColumn];
anova1(anovaTEMPReadyBaseCS)

anovaTEMPReadyNoBlindCS = [AllSubTEMPWhiteNoBlindCSColumn,AllSubTEMPBlueNoBlindCSColumn, AllSubTEMPRedNoBlindCSColumn, AllSubTEMPYellowNoBlindCSColumn];
anova1(anovaTEMPReadyNoBlindCS)

anovaTEMPReadyBlindCS = [AllSubTEMPWhiteBlindCSColumn,AllSubTEMPBlueBlindCSColumn, AllSubTEMPRedBlindCSColumn, AllSubTEMPYellowBlindCSColumn];
anova1(anovaTEMPReadyBlindCS)
%corr accross subjects to see how much each of the data can describe the
%other 

%effect size
meanTEMPWBaseCS = mean(AllSubTEMPWhiteBaseCSColumn);
meanTEMPWBlindCS = mean(AllSubTEMPWhiteBlindCSColumn);
meanTEMPWNoBlindCS = mean(AllSubTEMPWhiteNoBlindCSColumn);

stdTEMPWBaseCS = std(AllSubTEMPWhiteBaseCSColumn);
stdTEMPWBlindCS = std(AllSubTEMPWhiteBlindCSColumn);
stdTEMPWNoBlindCS = std(AllSubTEMPWhiteNoBlindCSColumn);

meanTEMPBBaseCS = mean(AllSubTEMPBlueBaseCSColumn);
meanTEMPBBlindCS = mean(AllSubTEMPBlueBlindCSColumn);
meanTEMPBNoBlindCS = mean(AllSubTEMPBlueNoBlindCSColumn);

stdTEMPBBaseCS = std(AllSubTEMPBlueBaseCSColumn);
stdTEMPBBlindCS = std(AllSubTEMPBlueBlindCSColumn);
stdTEMPBNoBlindCS = std(AllSubTEMPBlueNoBlindCSColumn);

meanTEMPRBaseCS = mean(AllSubTEMPRedBaseCSColumn);
meanTEMPRBlindCS = mean(AllSubTEMPRedBlindCSColumn);
meanTEMPRNoBlindCS = mean(AllSubTEMPRedNoBlindCSColumn);

stdTEMPRBaseCS = std(AllSubTEMPRedBaseCSColumn);
stdTEMPRBlindCS = std(AllSubTEMPRedBlindCSColumn);
stdTEMPRNoBlindCS = std(AllSubTEMPRedNoBlindCSColumn);

meanTEMPYBaseCS = mean(AllSubTEMPYellowBaseCSColumn);
meanTEMPYBlindCS = mean(AllSubTEMPYellowBlindCSColumn);
meanTEMPYNoBlindCS = mean(AllSubTEMPYellowNoBlindCSColumn);

stdTEMPYBaseCS = std(AllSubTEMPYellowBaseCSColumn);
stdTEMPYBlindCS = std(AllSubTEMPYellowBlindCSColumn);
stdTEMPYNoBlindCS = std(AllSubTEMPYellowNoBlindCSColumn);

effectSizesBaseCS(1) = effectSize(meanTEMPBBaseCS, meanTEMPRBaseCS, stdTEMPBBaseCS, stdTEMPRBaseCS);
effectSizesBaseCS(2) = effectSize(meanTEMPBBaseCS, meanTEMPWBaseCS, stdTEMPBBaseCS, stdTEMPWBaseCS);
effectSizesBaseCS(3) = effectSize(meanTEMPBBaseCS, meanTEMPYBaseCS, stdTEMPBBaseCS, stdTEMPYBaseCS);

effectSizesBaseCS(4) = effectSize(meanTEMPRBaseCS, meanTEMPWBaseCS, stdTEMPRBaseCS, stdTEMPWBaseCS);
effectSizesBaseCS(5) = effectSize(meanTEMPRBaseCS, meanTEMPYBaseCS, stdTEMPRBaseCS, stdTEMPYBaseCS);

effectSizesBaseCS(6) = effectSize(meanTEMPYBaseCS, meanTEMPWBaseCS, stdTEMPYBaseCS, stdTEMPWBaseCS)

effectSizesNoBlindCS(1) = effectSize(meanTEMPBNoBlindCS, meanTEMPRNoBlindCS, stdTEMPBNoBlindCS, stdTEMPRNoBlindCS);
effectSizesNoBlindCS(2) = effectSize(meanTEMPBNoBlindCS, meanTEMPWNoBlindCS, stdTEMPBNoBlindCS, stdTEMPWNoBlindCS);
effectSizesNoBlindCS(3) = effectSize(meanTEMPBNoBlindCS, meanTEMPYNoBlindCS, stdTEMPBNoBlindCS, stdTEMPYNoBlindCS);

effectSizesNoBlindCS(4) = effectSize(meanTEMPRNoBlindCS, meanTEMPWNoBlindCS, stdTEMPRNoBlindCS, stdTEMPWNoBlindCS);
effectSizesNoBlindCS(5) = effectSize(meanTEMPRNoBlindCS, meanTEMPYNoBlindCS, stdTEMPRNoBlindCS, stdTEMPYNoBlindCS);

effectSizesNoBlindCS(6) = effectSize(meanTEMPYNoBlindCS, meanTEMPWNoBlindCS, stdTEMPYNoBlindCS, stdTEMPWNoBlindCS)

effectSizesBlindCS(1) = effectSize(meanTEMPBBlindCS, meanTEMPRBlindCS, stdTEMPBBlindCS, stdTEMPRBlindCS);
effectSizesBlindCS(2) = effectSize(meanTEMPBBlindCS, meanTEMPWBlindCS, stdTEMPBBlindCS, stdTEMPWBlindCS);
effectSizesBlindCS(3) = effectSize(meanTEMPBBlindCS, meanTEMPYBlindCS, stdTEMPBBlindCS, stdTEMPYBlindCS);

effectSizesBlindCS(4) = effectSize(meanTEMPRBlindCS, meanTEMPWBlindCS, stdTEMPRBlindCS, stdTEMPWBlindCS);
effectSizesBlindCS(5) = effectSize(meanTEMPRBlindCS, meanTEMPYBlindCS, stdTEMPRBlindCS, stdTEMPYBlindCS);

effectSizesBlindCS(6) = effectSize(meanTEMPYBlindCS, meanTEMPWBlindCS, stdTEMPYBlindCS, stdTEMPWBlindCS)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end
