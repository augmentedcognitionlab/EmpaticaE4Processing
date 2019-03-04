%Temperature measures 
%statistics on all subs 

%*************************************
%This script connects all the baseline and condition data from all the participants 
% The statistics are based on the Normalized results. 
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
%White Baseline 
AllAvrTEMPNormWhiteBase = 1;
AllStdTEMPNormWhiteBase = 1;
AllSubTEMPNormWhiteBase = [Sub2normTEMPWhiteBase, Sub3normTEMPWhiteBase, Sub4normTEMPWhiteBase,...
    Sub5normTEMPWhiteBase, Sub6normTEMPWhiteBase, Sub7normTEMPWhiteBase, Sub8normTEMPWhiteBase,...
    Sub9normTEMPWhiteBase, Sub10normTEMPWhiteBase, Sub11normTEMPWhiteBase, Sub13normTEMPWhiteBase,...
    Sub14normTEMPWhiteBase, Sub15normTEMPWhiteBase, Sub16normTEMPWhiteBase, Sub17normTEMPWhiteBase,...
    Sub18normTEMPWhiteBase, Sub19normTEMPWhiteBase, Sub20normTEMPWhiteBase, Sub21normTEMPWhiteBase,...
    Sub24normTEMPWhiteBase, Sub25normTEMPWhiteBase,...
    Sub26normTEMPWhiteBase];

AllSubTEMPNormWhiteBaseColumn = [Sub2normTEMPWhiteBase; Sub3normTEMPWhiteBase; Sub4normTEMPWhiteBase;...
    Sub5normTEMPWhiteBase; Sub6normTEMPWhiteBase; Sub7normTEMPWhiteBase; Sub8normTEMPWhiteBase;...
    Sub9normTEMPWhiteBase; Sub10normTEMPWhiteBase; Sub11normTEMPWhiteBase; Sub13normTEMPWhiteBase;...
    Sub14normTEMPWhiteBase; Sub15normTEMPWhiteBase; Sub16normTEMPWhiteBase; Sub17normTEMPWhiteBase;...
    Sub18normTEMPWhiteBase; Sub19normTEMPWhiteBase; Sub20normTEMPWhiteBase; Sub21normTEMPWhiteBase;...
    Sub24normTEMPWhiteBase; Sub25normTEMPWhiteBase;...
    Sub26normTEMPWhiteBase];


for i=1:size(AllSubTEMPNormWhiteBase)
AllAvrTEMPNormWhiteBase(i) = mean(AllSubTEMPNormWhiteBase(i,:));
AllStdTEMPNormWhiteBase(i) = std(AllSubTEMPNormWhiteBase(i,:));
end
figure 
plot(AllAvrTEMPNormWhiteBase)
hold on 
plot(AllStdTEMPNormWhiteBase)

%Blue Baseline 
AllAvrTEMPNormBlueBase = 1;
AllStdTEMPNormBlueBase = 1;
AllSubTEMPNormBlueBase = [Sub2normTEMPBlueBase, Sub3normTEMPBlueBase, Sub4normTEMPBlueBase,...
    Sub5normTEMPBlueBase, Sub6normTEMPBlueBase, Sub7normTEMPBlueBase, Sub8normTEMPBlueBase,...
    Sub9normTEMPBlueBase, Sub10normTEMPBlueBase, Sub11normTEMPBlueBase, Sub13normTEMPBlueBase,...
    Sub14normTEMPBlueBase, Sub15normTEMPBlueBase, Sub16normTEMPBlueBase, Sub17normTEMPBlueBase,...
    Sub18normTEMPBlueBase, Sub19normTEMPBlueBase, Sub20normTEMPBlueBase, Sub21normTEMPBlueBase,...
    Sub24normTEMPBlueBase, Sub25normTEMPBlueBase,...
    Sub26normTEMPBlueBase];

AllSubTEMPNormBlueBaseColumn = [Sub2normTEMPBlueBase; Sub3normTEMPBlueBase; Sub4normTEMPBlueBase;...
    Sub5normTEMPBlueBase; Sub6normTEMPBlueBase; Sub7normTEMPBlueBase; Sub8normTEMPBlueBase;...
    Sub9normTEMPBlueBase; Sub10normTEMPBlueBase; Sub11normTEMPBlueBase; Sub13normTEMPBlueBase;...
    Sub14normTEMPBlueBase; Sub15normTEMPBlueBase; Sub16normTEMPBlueBase; Sub17normTEMPBlueBase;...
    Sub18normTEMPBlueBase; Sub19normTEMPBlueBase; Sub20normTEMPBlueBase; Sub21normTEMPBlueBase;...
    Sub24normTEMPBlueBase; Sub25normTEMPBlueBase;...
    Sub26normTEMPBlueBase];


for i=1:size(AllSubTEMPNormBlueBase)
AllAvrTEMPNormBlueBase(i) = mean(AllSubTEMPNormBlueBase(i,:));
AllStdTEMPNormBlueBase(i) = std(AllSubTEMPNormBlueBase(i,:));
end

%Red Baseline 
AllAvrTEMPNormRedBase = 1;
AllStdTEMPNormRedBase = 1;
AllSubTEMPNormRedBase = [Sub2normTEMPRedBase, Sub3normTEMPRedBase, Sub4normTEMPRedBase,...
    Sub5normTEMPRedBase, Sub6normTEMPRedBase, Sub7normTEMPRedBase, Sub8normTEMPRedBase,...
    Sub9normTEMPRedBase, Sub10normTEMPRedBase, Sub11normTEMPRedBase, Sub13normTEMPRedBase,...
    Sub14normTEMPRedBase, Sub15normTEMPRedBase, Sub16normTEMPRedBase, Sub17normTEMPRedBase,...
    Sub18normTEMPRedBase, Sub19normTEMPRedBase, Sub20normTEMPRedBase, Sub21normTEMPRedBase,...
    Sub24normTEMPRedBase, Sub25normTEMPRedBase,...
    Sub26normTEMPRedBase];

AllSubTEMPNormRedBaseColumn = [Sub2normTEMPRedBase; Sub3normTEMPRedBase; Sub4normTEMPRedBase;...
    Sub5normTEMPRedBase; Sub6normTEMPRedBase; Sub7normTEMPRedBase; Sub8normTEMPRedBase;...
    Sub9normTEMPRedBase; Sub10normTEMPRedBase; Sub11normTEMPRedBase; Sub13normTEMPRedBase;...
    Sub14normTEMPRedBase; Sub15normTEMPRedBase; Sub16normTEMPRedBase; Sub17normTEMPRedBase;...
    Sub18normTEMPRedBase; Sub19normTEMPRedBase; Sub20normTEMPRedBase; Sub21normTEMPRedBase;...
    Sub24normTEMPRedBase; Sub25normTEMPRedBase;...
    Sub26normTEMPRedBase];


for i=1:size(AllSubTEMPNormRedBase)
AllAvrTEMPNormRedBase(i) = mean(AllSubTEMPNormRedBase(i,:));
AllStdTEMPNormRedBase(i) = std(AllSubTEMPNormRedBase(i,:));
end

%Yellow Baseline 
AllAvrTEMPNormYellowBase = 1;
AllStdTEMPNormYellowBase = 1;
AllSubTEMPNormYellowBase = [Sub2normTEMPYellowBase, Sub3normTEMPYellowBase, Sub4normTEMPYellowBase,...
    Sub5normTEMPYellowBase, Sub6normTEMPYellowBase, Sub7normTEMPYellowBase, Sub8normTEMPYellowBase,...
    Sub9normTEMPYellowBase, Sub10normTEMPYellowBase, Sub11normTEMPYellowBase, Sub13normTEMPYellowBase,...
    Sub14normTEMPYellowBase, Sub15normTEMPYellowBase, Sub16normTEMPYellowBase, Sub17normTEMPYellowBase,...
    Sub18normTEMPYellowBase, Sub19normTEMPYellowBase, Sub20normTEMPYellowBase, Sub21normTEMPYellowBase,...
    Sub24normTEMPYellowBase, Sub25normTEMPYellowBase,...
    Sub26normTEMPYellowBase];

AllSubTEMPNormYellowBaseColumn = [Sub2normTEMPYellowBase; Sub3normTEMPYellowBase; Sub4normTEMPYellowBase;...
    Sub5normTEMPYellowBase; Sub6normTEMPYellowBase; Sub7normTEMPYellowBase; Sub8normTEMPYellowBase;...
    Sub9normTEMPYellowBase; Sub10normTEMPYellowBase; Sub11normTEMPYellowBase; Sub13normTEMPYellowBase;...
    Sub14normTEMPYellowBase; Sub15normTEMPYellowBase; Sub16normTEMPYellowBase; Sub17normTEMPYellowBase;...
    Sub18normTEMPYellowBase; Sub19normTEMPYellowBase; Sub20normTEMPYellowBase; Sub21normTEMPYellowBase;...
    Sub24normTEMPYellowBase; Sub25normTEMPYellowBase;...
    Sub26normTEMPYellowBase];

for i=1:size(AllSubTEMPNormYellowBase)
AllAvrTEMPNormYellowBase(i) = mean(AllSubTEMPNormYellowBase(i,:));
AllStdTEMPNormYellowBase(i) = std(AllSubTEMPNormYellowBase(i,:));
[H, AllTtestTEMPNormYvsBBase(i)] = ttest2(AllSubTEMPNormYellowBase(i,:),AllSubTEMPNormBlueBase(i,:));
[H, AllTtestTEMPNormYvsRBase(i)] = ttest2(AllSubTEMPNormYellowBase(i,:),AllSubTEMPNormRedBase(i,:));
[H, AllTtestTEMPNormYvsWBase(i)] = ttest2(AllSubTEMPNormYellowBase(i,:),AllSubTEMPNormWhiteBase(i,:));

[H, AllTtestTEMPNormBvsWBase(i)] = ttest2(AllSubTEMPNormBlueBase(i,:),AllSubTEMPNormWhiteBase(i,:));
[H, AllTtestTEMPNormBvsRBase(i)] = ttest2(AllSubTEMPNormBlueBase(i,:),AllSubTEMPNormRedBase(i,:));

[H, AllTtestTEMPNormRvsWBase(i)] = ttest2(AllSubTEMPNormRedBase(i,:),AllSubTEMPNormWhiteBase(i,:));
end
figure
plot(AllTtestTEMPNormYvsBBase)
hold on
plot(AllTtestTEMPNormYvsRBase)
hold on 
plot(AllTtestTEMPNormYvsWBase)
hold on
plot(AllTtestTEMPNormBvsWBase)
hold on 
plot(AllTtestTEMPNormBvsRBase)
hold on 
plot(AllTtestTEMPNormRvsWBase)


%All Average Baselines together. 
figure 
plot(AllAvrTEMPNormBlueBase)
hold on 
plot(AllAvrTEMPNormRedBase)
hold on 
plot(AllAvrTEMPNormYellowBase)
hold on 
plot(AllAvrTEMPNormWhiteBase)
hold on 

%White NoBlind
AllAvrTEMPNormWhiteNoBlind = 1;
AllStdTEMPNormWhiteNoBlind = 1;
AllSubTEMPNormWhiteNoBlind = [Sub2normTEMPWhiteNoBlind, Sub3normTEMPWhiteNoBlind, Sub4normTEMPWhiteNoBlind,...
    Sub5normTEMPWhiteNoBlind, Sub6normTEMPWhiteNoBlind, Sub7normTEMPWhiteNoBlind, Sub8normTEMPWhiteNoBlind,...
    Sub9normTEMPWhiteNoBlind, Sub10normTEMPWhiteNoBlind, Sub11normTEMPWhiteNoBlind, Sub13normTEMPWhiteNoBlind,...
    Sub14normTEMPWhiteNoBlind, Sub15normTEMPWhiteNoBlind, Sub16normTEMPWhiteNoBlind, Sub17normTEMPWhiteNoBlind,...
    Sub18normTEMPWhiteNoBlind, Sub19normTEMPWhiteNoBlind, Sub20normTEMPWhiteNoBlind, Sub21normTEMPWhiteNoBlind,...
    Sub24normTEMPWhiteNoBlind, Sub25normTEMPWhiteNoBlind,...
    Sub26normTEMPWhiteNoBlind];

AllSubTEMPNormWhiteNoBlindColumn = [Sub2normTEMPWhiteNoBlind; Sub3normTEMPWhiteNoBlind; Sub4normTEMPWhiteNoBlind;...
    Sub5normTEMPWhiteNoBlind; Sub6normTEMPWhiteNoBlind; Sub7normTEMPWhiteNoBlind; Sub8normTEMPWhiteNoBlind;...
    Sub9normTEMPWhiteNoBlind; Sub10normTEMPWhiteNoBlind; Sub11normTEMPWhiteNoBlind; Sub13normTEMPWhiteNoBlind;...
    Sub14normTEMPWhiteNoBlind; Sub15normTEMPWhiteNoBlind; Sub16normTEMPWhiteNoBlind; Sub17normTEMPWhiteNoBlind;...
    Sub18normTEMPWhiteNoBlind; Sub19normTEMPWhiteNoBlind; Sub20normTEMPWhiteNoBlind; Sub21normTEMPWhiteNoBlind;...
    Sub24normTEMPWhiteNoBlind; Sub25normTEMPWhiteNoBlind;...
    Sub26normTEMPWhiteNoBlind];

for i=1:size(AllSubTEMPNormWhiteNoBlind)
AllAvrTEMPNormWhiteNoBlind(i) = mean(AllSubTEMPNormWhiteNoBlind(i,:));
AllStdTEMPNormWhiteNoBlind(i) = std(AllSubTEMPNormWhiteNoBlind(i,:));
end

%Blue NoBlind
AllAvrTEMPNormBlueNoBlind = 1;
AllStdTEMPNormBlueNoBlind = 1;
AllSubTEMPNormBlueNoBlind = [Sub2normTEMPBlueNoBlind, Sub3normTEMPBlueNoBlind, Sub4normTEMPBlueNoBlind,...
    Sub5normTEMPBlueNoBlind, Sub6normTEMPBlueNoBlind, Sub7normTEMPBlueNoBlind, Sub8normTEMPBlueNoBlind,...
    Sub9normTEMPBlueNoBlind, Sub10normTEMPBlueNoBlind, Sub11normTEMPBlueNoBlind, Sub13normTEMPBlueNoBlind,...
    Sub14normTEMPBlueNoBlind, Sub15normTEMPBlueNoBlind, Sub16normTEMPBlueNoBlind, Sub17normTEMPBlueNoBlind,...
    Sub18normTEMPBlueNoBlind, Sub19normTEMPBlueNoBlind, Sub20normTEMPBlueNoBlind, Sub21normTEMPBlueNoBlind,...
    Sub24normTEMPBlueNoBlind, Sub25normTEMPBlueNoBlind,...
    Sub26normTEMPBlueNoBlind];

AllSubTEMPNormBlueNoBlindColumn = [Sub2normTEMPBlueNoBlind; Sub3normTEMPBlueNoBlind; Sub4normTEMPBlueNoBlind;...
    Sub5normTEMPBlueNoBlind; Sub6normTEMPBlueNoBlind; Sub7normTEMPBlueNoBlind; Sub8normTEMPBlueNoBlind;...
    Sub9normTEMPBlueNoBlind; Sub10normTEMPBlueNoBlind; Sub11normTEMPBlueNoBlind; Sub13normTEMPBlueNoBlind;...
    Sub14normTEMPBlueNoBlind; Sub15normTEMPBlueNoBlind; Sub16normTEMPBlueNoBlind; Sub17normTEMPBlueNoBlind;...
    Sub18normTEMPBlueNoBlind; Sub19normTEMPBlueNoBlind; Sub20normTEMPBlueNoBlind; Sub21normTEMPBlueNoBlind;...
    Sub24normTEMPBlueNoBlind; Sub25normTEMPBlueNoBlind;...
    Sub26normTEMPBlueNoBlind];

for i=1:size(AllSubTEMPNormBlueNoBlind)
AllAvrTEMPNormBlueNoBlind(i) = mean(AllSubTEMPNormBlueNoBlind(i,:));
AllStdTEMPNormBlueNoBlind(i) = std(AllSubTEMPNormBlueNoBlind(i,:));
end

%Red NoBlind
AllAvrTEMPNormRedNoBlind = 1;
AllStdTEMPNormRedNoBlind = 1;
AllSubTEMPNormRedNoBlind = [Sub2normTEMPRedNoBlind, Sub3normTEMPRedNoBlind, Sub4normTEMPRedNoBlind,...
    Sub5normTEMPRedNoBlind, Sub6normTEMPRedNoBlind, Sub7normTEMPRedNoBlind, Sub8normTEMPRedNoBlind,...
    Sub9normTEMPRedNoBlind, Sub10normTEMPRedNoBlind, Sub11normTEMPRedNoBlind, Sub13normTEMPRedNoBlind,...
    Sub14normTEMPRedNoBlind, Sub15normTEMPRedNoBlind, Sub16normTEMPRedNoBlind, Sub17normTEMPRedNoBlind,...
    Sub18normTEMPRedNoBlind, Sub19normTEMPRedNoBlind, Sub20normTEMPRedNoBlind, Sub21normTEMPRedNoBlind,...
    Sub24normTEMPRedNoBlind, Sub25normTEMPRedNoBlind,...
    Sub26normTEMPRedNoBlind];

AllSubTEMPNormRedNoBlindColumn = [Sub2normTEMPRedNoBlind; Sub3normTEMPRedNoBlind; Sub4normTEMPRedNoBlind;...
    Sub5normTEMPRedNoBlind; Sub6normTEMPRedNoBlind; Sub7normTEMPRedNoBlind; Sub8normTEMPRedNoBlind;...
    Sub9normTEMPRedNoBlind; Sub10normTEMPRedNoBlind; Sub11normTEMPRedNoBlind; Sub13normTEMPRedNoBlind;...
    Sub14normTEMPRedNoBlind; Sub15normTEMPRedNoBlind; Sub16normTEMPRedNoBlind; Sub17normTEMPRedNoBlind;...
    Sub18normTEMPRedNoBlind; Sub19normTEMPRedNoBlind; Sub20normTEMPRedNoBlind; Sub21normTEMPRedNoBlind;...
    Sub24normTEMPRedNoBlind; Sub25normTEMPRedNoBlind;...
    Sub26normTEMPRedNoBlind];

for i=1:size(AllSubTEMPNormRedNoBlind)
AllAvrTEMPNormRedNoBlind(i) = mean(AllSubTEMPNormRedNoBlind(i,:));
AllStdTEMPNormRedNoBlind(i) = std(AllSubTEMPNormRedNoBlind(i,:));
end

%Yellow NoBlind
AllAvrTEMPNormYellowNoBlind = 1;
AllStdTEMPNormYellowNoBlind = 1;
AllSubTEMPNormYellowNoBlind = [Sub2normTEMPYellowNoBlind, Sub3normTEMPYellowNoBlind, Sub4normTEMPYellowNoBlind,...
    Sub5normTEMPYellowNoBlind, Sub6normTEMPYellowNoBlind, Sub7normTEMPYellowNoBlind, Sub8normTEMPYellowNoBlind,...
    Sub9normTEMPYellowNoBlind, Sub10normTEMPYellowNoBlind, Sub11normTEMPYellowNoBlind, Sub13normTEMPYellowNoBlind,...
    Sub14normTEMPYellowNoBlind, Sub15normTEMPYellowNoBlind, Sub16normTEMPYellowNoBlind, Sub17normTEMPYellowNoBlind,...
    Sub18normTEMPYellowNoBlind, Sub19normTEMPYellowNoBlind, Sub20normTEMPYellowNoBlind, Sub21normTEMPYellowNoBlind,...
    Sub24normTEMPYellowNoBlind, Sub25normTEMPYellowNoBlind,...
    Sub26normTEMPYellowNoBlind];

AllSubTEMPNormYellowNoBlindColumn = [Sub2normTEMPYellowNoBlind; Sub3normTEMPYellowNoBlind; Sub4normTEMPYellowNoBlind;...
    Sub5normTEMPYellowNoBlind; Sub6normTEMPYellowNoBlind; Sub7normTEMPYellowNoBlind; Sub8normTEMPYellowNoBlind;...
    Sub9normTEMPYellowNoBlind; Sub10normTEMPYellowNoBlind; Sub11normTEMPYellowNoBlind; Sub13normTEMPYellowNoBlind;...
    Sub14normTEMPYellowNoBlind; Sub15normTEMPYellowNoBlind; Sub16normTEMPYellowNoBlind; Sub17normTEMPYellowNoBlind;...
    Sub18normTEMPYellowNoBlind; Sub19normTEMPYellowNoBlind; Sub20normTEMPYellowNoBlind; Sub21normTEMPYellowNoBlind;...
    Sub24normTEMPYellowNoBlind; Sub25normTEMPYellowNoBlind;...
    Sub26normTEMPYellowNoBlind];


for i=1:size(AllSubTEMPNormYellowNoBlind)
AllAvrTEMPNormYellowNoBlind(i) = mean(AllSubTEMPNormYellowNoBlind(i,:));
AllStdTEMPNormYellowNoBlind(i) = std(AllSubTEMPNormYellowNoBlind(i,:));
[H, AllTtestTEMPNormYvsBNoBlind(i)] = ttest2(AllSubTEMPNormYellowNoBlind(i,:),AllSubTEMPNormBlueNoBlind(i,:));
[H, AllTtestTEMPNormYvsRNoBlind(i)] = ttest2(AllSubTEMPNormYellowNoBlind(i,:),AllSubTEMPNormRedNoBlind(i,:));
[H, AllTtestTEMPNormYvsWNoBlind(i)] = ttest2(AllSubTEMPNormYellowNoBlind(i,:),AllSubTEMPNormWhiteNoBlind(i,:));

[H, AllTtestTEMPNormBvsWNoBlind(i)] = ttest2(AllSubTEMPNormBlueNoBlind(i,:),AllSubTEMPNormWhiteNoBlind(i,:));
[H, AllTtestTEMPNormBvsRNoBlind(i)] = ttest2(AllSubTEMPNormBlueNoBlind(i,:),AllSubTEMPNormRedNoBlind(i,:));

[H, AllTtestTEMPNormRvsWNoBlind(i)] = ttest2(AllSubTEMPNormRedNoBlind(i,:),AllSubTEMPNormWhiteNoBlind(i,:));
end
figure
plot(AllTtestTEMPNormYvsBNoBlind)
hold on
plot(AllTtestTEMPNormYvsRNoBlind)
hold on 
plot(AllTtestTEMPNormYvsWNoBlind)
hold on
plot(AllTtestTEMPNormBvsWNoBlind)
hold on 
plot(AllTtestTEMPNormBvsRNoBlind)
hold on 
plot(AllTtestTEMPNormRvsWNoBlind)

%All Average NoBlind together. 
figure 
plot(AllAvrTEMPNormBlueNoBlind)
hold on 
plot(AllAvrTEMPNormRedNoBlind)
hold on 
plot(AllAvrTEMPNormYellowNoBlind)
hold on 
plot(AllAvrTEMPNormWhiteNoBlind)
hold on

%White Blind
AllAvrTEMPNormWhiteBlind = 1;
AllStdTEMPNormWhiteBlind = 1;
AllSubTEMPNormWhiteBlind = [Sub2normTEMPWhiteBlind, Sub3normTEMPWhiteBlind, Sub4normTEMPWhiteBlind,...
    Sub5normTEMPWhiteBlind, Sub6normTEMPWhiteBlind, Sub7normTEMPWhiteBlind, Sub8normTEMPWhiteBlind,...
    Sub9normTEMPWhiteBlind, Sub10normTEMPWhiteBlind, Sub11normTEMPWhiteBlind, Sub13normTEMPWhiteBlind,...
    Sub14normTEMPWhiteBlind, Sub15normTEMPWhiteBlind, Sub16normTEMPWhiteBlind, Sub17normTEMPWhiteBlind,...
    Sub18normTEMPWhiteBlind, Sub19normTEMPWhiteBlind, Sub20normTEMPWhiteBlind, Sub21normTEMPWhiteBlind,...
    Sub24normTEMPWhiteBlind, Sub25normTEMPWhiteBlind,...
    Sub26normTEMPWhiteBlind];

AllSubTEMPNormWhiteBlindColumn = [Sub2normTEMPWhiteBlind; Sub3normTEMPWhiteBlind; Sub4normTEMPWhiteBlind;...
    Sub5normTEMPWhiteBlind; Sub6normTEMPWhiteBlind; Sub7normTEMPWhiteBlind; Sub8normTEMPWhiteBlind;...
    Sub9normTEMPWhiteBlind; Sub10normTEMPWhiteBlind; Sub11normTEMPWhiteBlind; Sub13normTEMPWhiteBlind;...
    Sub14normTEMPWhiteBlind; Sub15normTEMPWhiteBlind; Sub16normTEMPWhiteBlind; Sub17normTEMPWhiteBlind;...
    Sub18normTEMPWhiteBlind; Sub19normTEMPWhiteBlind; Sub20normTEMPWhiteBlind; Sub21normTEMPWhiteBlind;...
    Sub24normTEMPWhiteBlind; Sub25normTEMPWhiteBlind;...
    Sub26normTEMPWhiteBlind];

for i=1:size(AllSubTEMPNormWhiteBlind)
AllAvrTEMPNormWhiteBlind(i) = mean(AllSubTEMPNormWhiteBlind(i,:));
AllStdTEMPNormWhiteBlind(i) = std(AllSubTEMPNormWhiteBlind(i,:));
end

%Blue Blind
AllAvrTEMPNormBlueBlind = 1;
AllStdTEMPNormBlueBlind = 1;
AllSubTEMPNormBlueBlind = [Sub2normTEMPBlueBlind, Sub3normTEMPBlueBlind, Sub4normTEMPBlueBlind,...
    Sub5normTEMPBlueBlind, Sub6normTEMPBlueBlind, Sub7normTEMPBlueBlind, Sub8normTEMPBlueBlind,...
    Sub9normTEMPBlueBlind, Sub10normTEMPBlueBlind, Sub11normTEMPBlueBlind, Sub13normTEMPBlueBlind,...
    Sub14normTEMPBlueBlind, Sub15normTEMPBlueBlind, Sub16normTEMPBlueBlind, Sub17normTEMPBlueBlind,...
    Sub18normTEMPBlueBlind, Sub19normTEMPBlueBlind, Sub20normTEMPBlueBlind, Sub21normTEMPBlueBlind,...
    Sub24normTEMPBlueBlind, Sub25normTEMPBlueBlind,...
    Sub26normTEMPBlueBlind];

AllSubTEMPNormBlueBlindColumn = [Sub2normTEMPBlueBlind; Sub3normTEMPBlueBlind; Sub4normTEMPBlueBlind;...
    Sub5normTEMPBlueBlind; Sub6normTEMPBlueBlind; Sub7normTEMPBlueBlind; Sub8normTEMPBlueBlind;...
    Sub9normTEMPBlueBlind; Sub10normTEMPBlueBlind; Sub11normTEMPBlueBlind; Sub13normTEMPBlueBlind;...
    Sub14normTEMPBlueBlind; Sub15normTEMPBlueBlind; Sub16normTEMPBlueBlind; Sub17normTEMPBlueBlind;...
    Sub18normTEMPBlueBlind; Sub19normTEMPBlueBlind; Sub20normTEMPBlueBlind; Sub21normTEMPBlueBlind;...
    Sub24normTEMPBlueBlind; Sub25normTEMPBlueBlind;...
    Sub26normTEMPBlueBlind];

for i=1:size(AllSubTEMPNormBlueBlind)
AllAvrTEMPNormBlueBlind(i) = mean(AllSubTEMPNormBlueBlind(i,:));
AllStdTEMPNormBlueBlind(i) = std(AllSubTEMPNormBlueBlind(i,:));
end

%Red Blind
AllAvrTEMPNormRedBlind = 1;
AllStdTEMPNormRedBlind = 1;
AllSubTEMPNormRedBlind = [Sub2normTEMPRedBlind, Sub3normTEMPRedBlind, Sub4normTEMPRedBlind,...
    Sub5normTEMPRedBlind, Sub6normTEMPRedBlind, Sub7normTEMPRedBlind, Sub8normTEMPRedBlind,...
    Sub9normTEMPRedBlind, Sub10normTEMPRedBlind, Sub11normTEMPRedBlind, Sub13normTEMPRedBlind,...
    Sub14normTEMPRedBlind, Sub15normTEMPRedBlind, Sub16normTEMPRedBlind, Sub17normTEMPRedBlind,...
    Sub18normTEMPRedBlind, Sub19normTEMPRedBlind, Sub20normTEMPRedBlind, Sub21normTEMPRedBlind,...
    Sub24normTEMPRedBlind, Sub25normTEMPRedBlind,...
    Sub26normTEMPRedBlind];

AllSubTEMPNormRedBlindColumn = [Sub2normTEMPRedBlind; Sub3normTEMPRedBlind; Sub4normTEMPRedBlind;...
    Sub5normTEMPRedBlind; Sub6normTEMPRedBlind; Sub7normTEMPRedBlind; Sub8normTEMPRedBlind;...
    Sub9normTEMPRedBlind; Sub10normTEMPRedBlind; Sub11normTEMPRedBlind; Sub13normTEMPRedBlind;...
    Sub14normTEMPRedBlind; Sub15normTEMPRedBlind; Sub16normTEMPRedBlind; Sub17normTEMPRedBlind;...
    Sub18normTEMPRedBlind; Sub19normTEMPRedBlind; Sub20normTEMPRedBlind; Sub21normTEMPRedBlind;...
    Sub24normTEMPRedBlind; Sub25normTEMPRedBlind;...
    Sub26normTEMPRedBlind];

for i=1:size(AllSubTEMPNormRedBlind)
AllAvrTEMPNormRedBlind(i) = mean(AllSubTEMPNormRedBlind(i,:));
AllStdTEMPNormRedBlind(i) = std(AllSubTEMPNormRedBlind(i,:));
end

%Yellow Blind
AllAvrTEMPNormYellowBlind = 1;
AllStdTEMPNormYellowBlind = 1;
AllTtestTEMPNormYvsBBlind = 1;
AllSubTEMPNormYellowBlind = [Sub2normTEMPYellowBlind, Sub3normTEMPYellowBlind, Sub4normTEMPYellowBlind,...
    Sub5normTEMPYellowBlind, Sub6normTEMPYellowBlind, Sub7normTEMPYellowBlind, Sub8normTEMPYellowBlind,...
    Sub9normTEMPYellowBlind, Sub10normTEMPYellowBlind, Sub11normTEMPYellowBlind, Sub13normTEMPYellowBlind,...
    Sub14normTEMPYellowBlind, Sub15normTEMPYellowBlind, Sub16normTEMPYellowBlind, Sub17normTEMPYellowBlind,...
    Sub18normTEMPYellowBlind, Sub19normTEMPYellowBlind, Sub20normTEMPYellowBlind, Sub21normTEMPYellowBlind,...
    Sub24normTEMPYellowBlind, Sub25normTEMPYellowBlind,...
    Sub26normTEMPYellowBlind];

AllSubTEMPNormYellowBlindColumn = [Sub2normTEMPYellowBlind; Sub3normTEMPYellowBlind; Sub4normTEMPYellowBlind;...
    Sub5normTEMPYellowBlind; Sub6normTEMPYellowBlind; Sub7normTEMPYellowBlind; Sub8normTEMPYellowBlind;...
    Sub9normTEMPYellowBlind; Sub10normTEMPYellowBlind; Sub11normTEMPYellowBlind; Sub13normTEMPYellowBlind;...
    Sub14normTEMPYellowBlind; Sub15normTEMPYellowBlind; Sub16normTEMPYellowBlind; Sub17normTEMPYellowBlind;...
    Sub18normTEMPYellowBlind; Sub19normTEMPYellowBlind; Sub20normTEMPYellowBlind; Sub21normTEMPYellowBlind;...
    Sub24normTEMPYellowBlind; Sub25normTEMPYellowBlind;...
    Sub26normTEMPYellowBlind];

for i=1:size(AllSubTEMPNormYellowBlind)
AllAvrTEMPNormYellowBlind(i) = mean(AllSubTEMPNormYellowBlind(i,:));
AllStdTEMPNormYellowBlind(i) = std(AllSubTEMPNormYellowBlind(i,:));
[H, AllTtestTEMPNormYvsBBlind(i)] = ttest2(AllSubTEMPNormYellowBlind(i,:),AllSubTEMPNormBlueBlind(i,:));
[H, AllTtestTEMPNormYvsRBlind(i)] = ttest2(AllSubTEMPNormYellowBlind(i,:),AllSubTEMPNormRedBlind(i,:));
[H, AllTtestTEMPNormYvsWBlind(i)] = ttest2(AllSubTEMPNormYellowBlind(i,:),AllSubTEMPNormWhiteBlind(i,:));

[H, AllTtestTEMPNormBvsWBlind(i)] = ttest2(AllSubTEMPNormBlueBlind(i,:),AllSubTEMPNormWhiteBlind(i,:));
[H, AllTtestTEMPNormBvsRBlind(i)] = ttest2(AllSubTEMPNormBlueBlind(i,:),AllSubTEMPNormRedBlind(i,:));

[H, AllTtestTEMPNormRvsWBlind(i)] = ttest2(AllSubTEMPNormRedBlind(i,:),AllSubTEMPNormWhiteBlind(i,:));
end
figure
plot(AllTtestTEMPNormYvsBBlind)
hold on
plot(AllTtestTEMPNormYvsRBlind)
hold on 
plot(AllTtestTEMPNormYvsWBlind)
hold on
plot(AllTtestTEMPNormBvsWBlind)
hold on 
plot(AllTtestTEMPNormBvsRBlind)
hold on 
plot(AllTtestTEMPNormRvsWBlind)

%All Average Blind together. 
figure 
plot(AllAvrTEMPNormBlueBlind)
hold on 
plot(AllAvrTEMPNormRedBlind)
hold on 
plot(AllAvrTEMPNormYellowBlind)
hold on 
plot(AllAvrTEMPNormWhiteBlind)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaTEMPReadyBase = [AllSubTEMPNormWhiteBaseColumn,AllSubTEMPNormBlueBaseColumn, AllSubTEMPNormRedBaseColumn, AllSubTEMPNormYellowBaseColumn];
anova1(anovaTEMPReadyBase)

anovaTEMPReadyNoBlind = [AllSubTEMPNormWhiteNoBlindColumn,AllSubTEMPNormBlueNoBlindColumn, AllSubTEMPNormRedNoBlindColumn, AllSubTEMPNormYellowNoBlindColumn];
anova1(anovaTEMPReadyNoBlind)

anovaTEMPReadyBlind = [AllSubTEMPNormWhiteBlindColumn,AllSubTEMPNormBlueBlindColumn, AllSubTEMPNormRedBlindColumn, AllSubTEMPNormYellowBlindColumn];
anova1(anovaTEMPReadyBlind)
%corr accross subjects to see how much each of the data can describe the
%other 

%effect size
meanTEMPWBase = mean(AllSubTEMPNormWhiteBaseColumn);
meanTEMPWBlind = mean(AllSubTEMPNormWhiteBlindColumn);
meanTEMPWNoBlind = mean(AllSubTEMPNormWhiteNoBlindColumn);

stdTEMPWBase = std(AllSubTEMPNormWhiteBaseColumn);
stdTEMPWBlind = std(AllSubTEMPNormWhiteBlindColumn);
stdTEMPWNoBlind = std(AllSubTEMPNormWhiteNoBlindColumn);

meanTEMPBBase = mean(AllSubTEMPNormBlueBaseColumn);
meanTEMPBBlind = mean(AllSubTEMPNormBlueBlindColumn);
meanTEMPBNoBlind = mean(AllSubTEMPNormBlueNoBlindColumn);

stdTEMPBBase = std(AllSubTEMPNormBlueBaseColumn);
stdTEMPBBlind = std(AllSubTEMPNormBlueBlindColumn);
stdTEMPBNoBlind = std(AllSubTEMPNormBlueNoBlindColumn);

meanTEMPRBase = mean(AllSubTEMPNormRedBaseColumn);
meanTEMPRBlind = mean(AllSubTEMPNormRedBlindColumn);
meanTEMPRNoBlind = mean(AllSubTEMPNormRedNoBlindColumn);

stdTEMPRBase = std(AllSubTEMPNormRedBaseColumn);
stdTEMPRBlind = std(AllSubTEMPNormRedBlindColumn);
stdTEMPRNoBlind = std(AllSubTEMPNormRedNoBlindColumn);

meanTEMPYBase = mean(AllSubTEMPNormYellowBaseColumn);
meanTEMPYBlind = mean(AllSubTEMPNormYellowBlindColumn);
meanTEMPYNoBlind = mean(AllSubTEMPNormYellowNoBlindColumn);

stdTEMPYBase = std(AllSubTEMPNormYellowBaseColumn);
stdTEMPYBlind = std(AllSubTEMPNormYellowBlindColumn);
stdTEMPYNoBlind = std(AllSubTEMPNormYellowNoBlindColumn);

effectSizesBase(1) = effectSize(meanTEMPBBase, meanTEMPRBase, stdTEMPBBase, stdTEMPRBase);
effectSizesBase(2) = effectSize(meanTEMPBBase, meanTEMPWBase, stdTEMPBBase, stdTEMPWBase);
effectSizesBase(3) = effectSize(meanTEMPBBase, meanTEMPYBase, stdTEMPBBase, stdTEMPYBase);

effectSizesBase(4) = effectSize(meanTEMPRBase, meanTEMPWBase, stdTEMPRBase, stdTEMPWBase);
effectSizesBase(5) = effectSize(meanTEMPRBase, meanTEMPYBase, stdTEMPRBase, stdTEMPYBase);

effectSizesBase(6) = effectSize(meanTEMPYBase, meanTEMPWBase, stdTEMPYBase, stdTEMPWBase)

effectSizesNoBlind(1) = effectSize(meanTEMPBNoBlind, meanTEMPRNoBlind, stdTEMPBNoBlind, stdTEMPRNoBlind);
effectSizesNoBlind(2) = effectSize(meanTEMPBNoBlind, meanTEMPWNoBlind, stdTEMPBNoBlind, stdTEMPWNoBlind);
effectSizesNoBlind(3) = effectSize(meanTEMPBNoBlind, meanTEMPYNoBlind, stdTEMPBNoBlind, stdTEMPYNoBlind);

effectSizesNoBlind(4) = effectSize(meanTEMPRNoBlind, meanTEMPWNoBlind, stdTEMPRNoBlind, stdTEMPWNoBlind);
effectSizesNoBlind(5) = effectSize(meanTEMPRNoBlind, meanTEMPYNoBlind, stdTEMPRNoBlind, stdTEMPYNoBlind);

effectSizesNoBlind(6) = effectSize(meanTEMPYNoBlind, meanTEMPWNoBlind, stdTEMPYNoBlind, stdTEMPWNoBlind)

effectSizesBlind(1) = effectSize(meanTEMPBBlind, meanTEMPRBlind, stdTEMPBBlind, stdTEMPRBlind);
effectSizesBlind(2) = effectSize(meanTEMPBBlind, meanTEMPWBlind, stdTEMPBBlind, stdTEMPWBlind);
effectSizesBlind(3) = effectSize(meanTEMPBBlind, meanTEMPYBlind, stdTEMPBBlind, stdTEMPYBlind);

effectSizesBlind(4) = effectSize(meanTEMPRBlind, meanTEMPWBlind, stdTEMPRBlind, stdTEMPWBlind);
effectSizesBlind(5) = effectSize(meanTEMPRBlind, meanTEMPYBlind, stdTEMPRBlind, stdTEMPYBlind);

effectSizesBlind(6) = effectSize(meanTEMPYBlind, meanTEMPWBlind, stdTEMPYBlind, stdTEMPWBlind)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end
