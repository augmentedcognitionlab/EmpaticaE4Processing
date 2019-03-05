%statistics on all subs for EDA 

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
AllAvrEDANormWhiteBase = 1;
AllStdEDANormWhiteBase = 1;
AllSubEDANormWhiteBase = [Sub2normEDAWhiteBase, Sub3normEDAWhiteBase, Sub4normEDAWhiteBase,...
    Sub5normEDAWhiteBase, Sub6normEDAWhiteBase, Sub7normEDAWhiteBase, Sub8normEDAWhiteBase,...
    Sub9normEDAWhiteBase, Sub10normEDAWhiteBase, Sub11normEDAWhiteBase, Sub13normEDAWhiteBase,...
    Sub14normEDAWhiteBase, Sub15normEDAWhiteBase, Sub16normEDAWhiteBase, Sub17normEDAWhiteBase,...
    Sub18normEDAWhiteBase, Sub19normEDAWhiteBase, Sub20normEDAWhiteBase, Sub21normEDAWhiteBase,...
    Sub24normEDAWhiteBase, Sub25normEDAWhiteBase,...
    Sub26normEDAWhiteBase];

AllSubEDANormWhiteBaseColumn = [Sub2normEDAWhiteBase; Sub3normEDAWhiteBase; Sub4normEDAWhiteBase;...
    Sub5normEDAWhiteBase; Sub6normEDAWhiteBase; Sub7normEDAWhiteBase; Sub8normEDAWhiteBase;...
    Sub9normEDAWhiteBase; Sub10normEDAWhiteBase; Sub11normEDAWhiteBase; Sub13normEDAWhiteBase;...
    Sub14normEDAWhiteBase; Sub15normEDAWhiteBase; Sub16normEDAWhiteBase; Sub17normEDAWhiteBase;...
    Sub18normEDAWhiteBase; Sub19normEDAWhiteBase; Sub20normEDAWhiteBase; Sub21normEDAWhiteBase;...
    Sub24normEDAWhiteBase; Sub25normEDAWhiteBase;...
    Sub26normEDAWhiteBase];


for i=1:size(AllSubEDANormWhiteBase)
AllAvrEDANormWhiteBase(i) = mean(AllSubEDANormWhiteBase(i,:));
AllStdEDANormWhiteBase(i) = std(AllSubEDANormWhiteBase(i,:));
end
figure 
plot(AllAvrEDANormWhiteBase)
hold on 
plot(AllStdEDANormWhiteBase)

%Blue Baseline 
AllAvrEDANormBlueBase = 1;
AllStdEDANormBlueBase = 1;
AllSubEDANormBlueBase = [Sub2normEDABlueBase, Sub3normEDABlueBase, Sub4normEDABlueBase,...
    Sub5normEDABlueBase, Sub6normEDABlueBase, Sub7normEDABlueBase, Sub8normEDABlueBase,...
    Sub9normEDABlueBase, Sub10normEDABlueBase, Sub11normEDABlueBase, Sub13normEDABlueBase,...
    Sub14normEDABlueBase, Sub15normEDABlueBase, Sub16normEDABlueBase, Sub17normEDABlueBase,...
    Sub18normEDABlueBase, Sub19normEDABlueBase, Sub20normEDABlueBase, Sub21normEDABlueBase,...
    Sub24normEDABlueBase, Sub25normEDABlueBase,...
    Sub26normEDABlueBase];

AllSubEDANormBlueBaseColumn = [Sub2normEDABlueBase; Sub3normEDABlueBase; Sub4normEDABlueBase;...
    Sub5normEDABlueBase; Sub6normEDABlueBase; Sub7normEDABlueBase; Sub8normEDABlueBase;...
    Sub9normEDABlueBase; Sub10normEDABlueBase; Sub11normEDABlueBase; Sub13normEDABlueBase;...
    Sub14normEDABlueBase; Sub15normEDABlueBase; Sub16normEDABlueBase; Sub17normEDABlueBase;...
    Sub18normEDABlueBase; Sub19normEDABlueBase; Sub20normEDABlueBase; Sub21normEDABlueBase;...
    Sub24normEDABlueBase; Sub25normEDABlueBase;...
    Sub26normEDABlueBase];


for i=1:size(AllSubEDANormBlueBase)
AllAvrEDANormBlueBase(i) = mean(AllSubEDANormBlueBase(i,:));
AllStdEDANormBlueBase(i) = std(AllSubEDANormBlueBase(i,:));
end

%Red Baseline 
AllAvrEDANormRedBase = 1;
AllStdEDANormRedBase = 1;
AllSubEDANormRedBase = [Sub2normEDARedBase, Sub3normEDARedBase, Sub4normEDARedBase,...
    Sub5normEDARedBase, Sub6normEDARedBase, Sub7normEDARedBase, Sub8normEDARedBase,...
    Sub9normEDARedBase, Sub10normEDARedBase, Sub11normEDARedBase, Sub13normEDARedBase,...
    Sub14normEDARedBase, Sub15normEDARedBase, Sub16normEDARedBase, Sub17normEDARedBase,...
    Sub18normEDARedBase, Sub19normEDARedBase, Sub20normEDARedBase, Sub21normEDARedBase,...
    Sub24normEDARedBase, Sub25normEDARedBase,...
    Sub26normEDARedBase];

AllSubEDANormRedBaseColumn = [Sub2normEDARedBase; Sub3normEDARedBase; Sub4normEDARedBase;...
    Sub5normEDARedBase; Sub6normEDARedBase; Sub7normEDARedBase; Sub8normEDARedBase;...
    Sub9normEDARedBase; Sub10normEDARedBase; Sub11normEDARedBase; Sub13normEDARedBase;...
    Sub14normEDARedBase; Sub15normEDARedBase; Sub16normEDARedBase; Sub17normEDARedBase;...
    Sub18normEDARedBase; Sub19normEDARedBase; Sub20normEDARedBase; Sub21normEDARedBase;...
    Sub24normEDARedBase; Sub25normEDARedBase;...
    Sub26normEDARedBase];


for i=1:size(AllSubEDANormRedBase)
AllAvrEDANormRedBase(i) = mean(AllSubEDANormRedBase(i,:));
AllStdEDANormRedBase(i) = std(AllSubEDANormRedBase(i,:));
end

%Yellow Baseline 
AllAvrEDANormYellowBase = 1;
AllStdEDANormYellowBase = 1;
AllSubEDANormYellowBase = [Sub2normEDAYellowBase, Sub3normEDAYellowBase, Sub4normEDAYellowBase,...
    Sub5normEDAYellowBase, Sub6normEDAYellowBase, Sub7normEDAYellowBase, Sub8normEDAYellowBase,...
    Sub9normEDAYellowBase, Sub10normEDAYellowBase, Sub11normEDAYellowBase, Sub13normEDAYellowBase,...
    Sub14normEDAYellowBase, Sub15normEDAYellowBase, Sub16normEDAYellowBase, Sub17normEDAYellowBase,...
    Sub18normEDAYellowBase, Sub19normEDAYellowBase, Sub20normEDAYellowBase, Sub21normEDAYellowBase,...
    Sub24normEDAYellowBase, Sub25normEDAYellowBase,...
    Sub26normEDAYellowBase];

AllSubEDANormYellowBaseColumn = [Sub2normEDAYellowBase; Sub3normEDAYellowBase; Sub4normEDAYellowBase;...
    Sub5normEDAYellowBase; Sub6normEDAYellowBase; Sub7normEDAYellowBase; Sub8normEDAYellowBase;...
    Sub9normEDAYellowBase; Sub10normEDAYellowBase; Sub11normEDAYellowBase; Sub13normEDAYellowBase;...
    Sub14normEDAYellowBase; Sub15normEDAYellowBase; Sub16normEDAYellowBase; Sub17normEDAYellowBase;...
    Sub18normEDAYellowBase; Sub19normEDAYellowBase; Sub20normEDAYellowBase; Sub21normEDAYellowBase;...
    Sub24normEDAYellowBase; Sub25normEDAYellowBase;...
    Sub26normEDAYellowBase];

for i=1:size(AllSubEDANormYellowBase)
AllAvrEDANormYellowBase(i) = mean(AllSubEDANormYellowBase(i,:));
AllStdEDANormYellowBase(i) = std(AllSubEDANormYellowBase(i,:));
[H, AllTtestEDANormYvsBBase(i)] = ttest2(AllSubEDANormYellowBase(i,:),AllSubEDANormBlueBase(i,:));
[H, AllTtestEDANormYvsRBase(i)] = ttest2(AllSubEDANormYellowBase(i,:),AllSubEDANormRedBase(i,:));
[H, AllTtestEDANormYvsWBase(i)] = ttest2(AllSubEDANormYellowBase(i,:),AllSubEDANormWhiteBase(i,:));

[H, AllTtestEDANormBvsWBase(i)] = ttest2(AllSubEDANormBlueBase(i,:),AllSubEDANormWhiteBase(i,:));
[H, AllTtestEDANormBvsRBase(i)] = ttest2(AllSubEDANormBlueBase(i,:),AllSubEDANormRedBase(i,:));

[H, AllTtestEDANormRvsWBase(i)] = ttest2(AllSubEDANormRedBase(i,:),AllSubEDANormWhiteBase(i,:));
end
figure
plot(AllTtestEDANormYvsBBase)
hold on
plot(AllTtestEDANormYvsRBase)
hold on 
plot(AllTtestEDANormYvsWBase)
hold on
plot(AllTtestEDANormBvsWBase)
hold on 
plot(AllTtestEDANormBvsRBase)
hold on 
plot(AllTtestEDANormRvsWBase)


%All Average Baselines together. 
figure 
plot(AllAvrEDANormBlueBase)
hold on 
plot(AllAvrEDANormRedBase)
hold on 
plot(AllAvrEDANormYellowBase)
hold on 
plot(AllAvrEDANormWhiteBase)
hold on 

%White NoBlind
AllAvrEDANormWhiteNoBlind = 1;
AllStdEDANormWhiteNoBlind = 1;
AllSubEDANormWhiteNoBlind = [Sub2normEDAWhiteNoBlind, Sub3normEDAWhiteNoBlind, Sub4normEDAWhiteNoBlind,...
    Sub5normEDAWhiteNoBlind, Sub6normEDAWhiteNoBlind, Sub7normEDAWhiteNoBlind, Sub8normEDAWhiteNoBlind,...
    Sub9normEDAWhiteNoBlind, Sub10normEDAWhiteNoBlind, Sub11normEDAWhiteNoBlind, Sub13normEDAWhiteNoBlind,...
    Sub14normEDAWhiteNoBlind, Sub15normEDAWhiteNoBlind, Sub16normEDAWhiteNoBlind, Sub17normEDAWhiteNoBlind,...
    Sub18normEDAWhiteNoBlind, Sub19normEDAWhiteNoBlind, Sub20normEDAWhiteNoBlind, Sub21normEDAWhiteNoBlind,...
    Sub24normEDAWhiteNoBlind, Sub25normEDAWhiteNoBlind,...
    Sub26normEDAWhiteNoBlind];

AllSubEDANormWhiteNoBlindColumn = [Sub2normEDAWhiteNoBlind; Sub3normEDAWhiteNoBlind; Sub4normEDAWhiteNoBlind;...
    Sub5normEDAWhiteNoBlind; Sub6normEDAWhiteNoBlind; Sub7normEDAWhiteNoBlind; Sub8normEDAWhiteNoBlind;...
    Sub9normEDAWhiteNoBlind; Sub10normEDAWhiteNoBlind; Sub11normEDAWhiteNoBlind; Sub13normEDAWhiteNoBlind;...
    Sub14normEDAWhiteNoBlind; Sub15normEDAWhiteNoBlind; Sub16normEDAWhiteNoBlind; Sub17normEDAWhiteNoBlind;...
    Sub18normEDAWhiteNoBlind; Sub19normEDAWhiteNoBlind; Sub20normEDAWhiteNoBlind; Sub21normEDAWhiteNoBlind;...
    Sub24normEDAWhiteNoBlind; Sub25normEDAWhiteNoBlind;...
    Sub26normEDAWhiteNoBlind];

for i=1:size(AllSubEDANormWhiteNoBlind)
AllAvrEDANormWhiteNoBlind(i) = mean(AllSubEDANormWhiteNoBlind(i,:));
AllStdEDANormWhiteNoBlind(i) = std(AllSubEDANormWhiteNoBlind(i,:));
end

%Blue NoBlind
AllAvrEDANormBlueNoBlind = 1;
AllStdEDANormBlueNoBlind = 1;
AllSubEDANormBlueNoBlind = [Sub2normEDABlueNoBlind, Sub3normEDABlueNoBlind, Sub4normEDABlueNoBlind,...
    Sub5normEDABlueNoBlind, Sub6normEDABlueNoBlind, Sub7normEDABlueNoBlind, Sub8normEDABlueNoBlind,...
    Sub9normEDABlueNoBlind, Sub10normEDABlueNoBlind, Sub11normEDABlueNoBlind, Sub13normEDABlueNoBlind,...
    Sub14normEDABlueNoBlind, Sub15normEDABlueNoBlind, Sub16normEDABlueNoBlind, Sub17normEDABlueNoBlind,...
    Sub18normEDABlueNoBlind, Sub19normEDABlueNoBlind, Sub20normEDABlueNoBlind, Sub21normEDABlueNoBlind,...
    Sub24normEDABlueNoBlind, Sub25normEDABlueNoBlind,...
    Sub26normEDABlueNoBlind];

AllSubEDANormBlueNoBlindColumn = [Sub2normEDABlueNoBlind; Sub3normEDABlueNoBlind; Sub4normEDABlueNoBlind;...
    Sub5normEDABlueNoBlind; Sub6normEDABlueNoBlind; Sub7normEDABlueNoBlind; Sub8normEDABlueNoBlind;...
    Sub9normEDABlueNoBlind; Sub10normEDABlueNoBlind; Sub11normEDABlueNoBlind; Sub13normEDABlueNoBlind;...
    Sub14normEDABlueNoBlind; Sub15normEDABlueNoBlind; Sub16normEDABlueNoBlind; Sub17normEDABlueNoBlind;...
    Sub18normEDABlueNoBlind; Sub19normEDABlueNoBlind; Sub20normEDABlueNoBlind; Sub21normEDABlueNoBlind;...
    Sub24normEDABlueNoBlind; Sub25normEDABlueNoBlind;...
    Sub26normEDABlueNoBlind];

for i=1:size(AllSubEDANormBlueNoBlind)
AllAvrEDANormBlueNoBlind(i) = mean(AllSubEDANormBlueNoBlind(i,:));
AllStdEDANormBlueNoBlind(i) = std(AllSubEDANormBlueNoBlind(i,:));
end

%Red NoBlind
AllAvrEDANormRedNoBlind = 1;
AllStdEDANormRedNoBlind = 1;
AllSubEDANormRedNoBlind = [Sub2normEDARedNoBlind, Sub3normEDARedNoBlind, Sub4normEDARedNoBlind,...
    Sub5normEDARedNoBlind, Sub6normEDARedNoBlind, Sub7normEDARedNoBlind, Sub8normEDARedNoBlind,...
    Sub9normEDARedNoBlind, Sub10normEDARedNoBlind, Sub11normEDARedNoBlind, Sub13normEDARedNoBlind,...
    Sub14normEDARedNoBlind, Sub15normEDARedNoBlind, Sub16normEDARedNoBlind, Sub17normEDARedNoBlind,...
    Sub18normEDARedNoBlind, Sub19normEDARedNoBlind, Sub20normEDARedNoBlind, Sub21normEDARedNoBlind,...
    Sub24normEDARedNoBlind, Sub25normEDARedNoBlind,...
    Sub26normEDARedNoBlind];

AllSubEDANormRedNoBlindColumn = [Sub2normEDARedNoBlind; Sub3normEDARedNoBlind; Sub4normEDARedNoBlind;...
    Sub5normEDARedNoBlind; Sub6normEDARedNoBlind; Sub7normEDARedNoBlind; Sub8normEDARedNoBlind;...
    Sub9normEDARedNoBlind; Sub10normEDARedNoBlind; Sub11normEDARedNoBlind; Sub13normEDARedNoBlind;...
    Sub14normEDARedNoBlind; Sub15normEDARedNoBlind; Sub16normEDARedNoBlind; Sub17normEDARedNoBlind;...
    Sub18normEDARedNoBlind; Sub19normEDARedNoBlind; Sub20normEDARedNoBlind; Sub21normEDARedNoBlind;...
    Sub24normEDARedNoBlind; Sub25normEDARedNoBlind;...
    Sub26normEDARedNoBlind];

for i=1:size(AllSubEDANormRedNoBlind)
AllAvrEDANormRedNoBlind(i) = mean(AllSubEDANormRedNoBlind(i,:));
AllStdEDANormRedNoBlind(i) = std(AllSubEDANormRedNoBlind(i,:));
end

%Yellow NoBlind
AllAvrEDANormYellowNoBlind = 1;
AllStdEDANormYellowNoBlind = 1;
AllSubEDANormYellowNoBlind = [Sub2normEDAYellowNoBlind, Sub3normEDAYellowNoBlind, Sub4normEDAYellowNoBlind,...
    Sub5normEDAYellowNoBlind, Sub6normEDAYellowNoBlind, Sub7normEDAYellowNoBlind, Sub8normEDAYellowNoBlind,...
    Sub9normEDAYellowNoBlind, Sub10normEDAYellowNoBlind, Sub11normEDAYellowNoBlind, Sub13normEDAYellowNoBlind,...
    Sub14normEDAYellowNoBlind, Sub15normEDAYellowNoBlind, Sub16normEDAYellowNoBlind, Sub17normEDAYellowNoBlind,...
    Sub18normEDAYellowNoBlind, Sub19normEDAYellowNoBlind, Sub20normEDAYellowNoBlind, Sub21normEDAYellowNoBlind,...
    Sub24normEDAYellowNoBlind, Sub25normEDAYellowNoBlind,...
    Sub26normEDAYellowNoBlind];

AllSubEDANormYellowNoBlindColumn = [Sub2normEDAYellowNoBlind; Sub3normEDAYellowNoBlind; Sub4normEDAYellowNoBlind;...
    Sub5normEDAYellowNoBlind; Sub6normEDAYellowNoBlind; Sub7normEDAYellowNoBlind; Sub8normEDAYellowNoBlind;...
    Sub9normEDAYellowNoBlind; Sub10normEDAYellowNoBlind; Sub11normEDAYellowNoBlind; Sub13normEDAYellowNoBlind;...
    Sub14normEDAYellowNoBlind; Sub15normEDAYellowNoBlind; Sub16normEDAYellowNoBlind; Sub17normEDAYellowNoBlind;...
    Sub18normEDAYellowNoBlind; Sub19normEDAYellowNoBlind; Sub20normEDAYellowNoBlind; Sub21normEDAYellowNoBlind;...
    Sub24normEDAYellowNoBlind; Sub25normEDAYellowNoBlind;...
    Sub26normEDAYellowNoBlind];


for i=1:size(AllSubEDANormYellowNoBlind)
AllAvrEDANormYellowNoBlind(i) = mean(AllSubEDANormYellowNoBlind(i,:));
AllStdEDANormYellowNoBlind(i) = std(AllSubEDANormYellowNoBlind(i,:));
[H, AllTtestEDANormYvsBNoBlind(i)] = ttest2(AllSubEDANormYellowNoBlind(i,:),AllSubEDANormBlueNoBlind(i,:));
[H, AllTtestEDANormYvsRNoBlind(i)] = ttest2(AllSubEDANormYellowNoBlind(i,:),AllSubEDANormRedNoBlind(i,:));
[H, AllTtestEDANormYvsWNoBlind(i)] = ttest2(AllSubEDANormYellowNoBlind(i,:),AllSubEDANormWhiteNoBlind(i,:));

[H, AllTtestEDANormBvsWNoBlind(i)] = ttest2(AllSubEDANormBlueNoBlind(i,:),AllSubEDANormWhiteNoBlind(i,:));
[H, AllTtestEDANormBvsRNoBlind(i)] = ttest2(AllSubEDANormBlueNoBlind(i,:),AllSubEDANormRedNoBlind(i,:));

[H, AllTtestEDANormRvsWNoBlind(i)] = ttest2(AllSubEDANormRedNoBlind(i,:),AllSubEDANormWhiteNoBlind(i,:));
end
figure
plot(AllTtestEDANormYvsBNoBlind)
hold on
plot(AllTtestEDANormYvsRNoBlind)
hold on 
plot(AllTtestEDANormYvsWNoBlind)
hold on
plot(AllTtestEDANormBvsWNoBlind)
hold on 
plot(AllTtestEDANormBvsRNoBlind)
hold on 
plot(AllTtestEDANormRvsWNoBlind)

%All Average NoBlind together. 
figure 
plot(AllAvrEDANormBlueNoBlind)
hold on 
plot(AllAvrEDANormRedNoBlind)
hold on 
plot(AllAvrEDANormYellowNoBlind)
hold on 
plot(AllAvrEDANormWhiteNoBlind)
hold on

%White Blind
AllAvrEDANormWhiteBlind = 1;
AllStdEDANormWhiteBlind = 1;
AllSubEDANormWhiteBlind = [Sub2normEDAWhiteBlind, Sub3normEDAWhiteBlind, Sub4normEDAWhiteBlind,...
    Sub5normEDAWhiteBlind, Sub6normEDAWhiteBlind, Sub7normEDAWhiteBlind, Sub8normEDAWhiteBlind,...
    Sub9normEDAWhiteBlind, Sub10normEDAWhiteBlind, Sub11normEDAWhiteBlind, Sub13normEDAWhiteBlind,...
    Sub14normEDAWhiteBlind, Sub15normEDAWhiteBlind, Sub16normEDAWhiteBlind, Sub17normEDAWhiteBlind,...
    Sub18normEDAWhiteBlind, Sub19normEDAWhiteBlind, Sub20normEDAWhiteBlind, Sub21normEDAWhiteBlind,...
    Sub24normEDAWhiteBlind, Sub25normEDAWhiteBlind,...
    Sub26normEDAWhiteBlind];

AllSubEDANormWhiteBlindColumn = [Sub2normEDAWhiteBlind; Sub3normEDAWhiteBlind; Sub4normEDAWhiteBlind;...
    Sub5normEDAWhiteBlind; Sub6normEDAWhiteBlind; Sub7normEDAWhiteBlind; Sub8normEDAWhiteBlind;...
    Sub9normEDAWhiteBlind; Sub10normEDAWhiteBlind; Sub11normEDAWhiteBlind; Sub13normEDAWhiteBlind;...
    Sub14normEDAWhiteBlind; Sub15normEDAWhiteBlind; Sub16normEDAWhiteBlind; Sub17normEDAWhiteBlind;...
    Sub18normEDAWhiteBlind; Sub19normEDAWhiteBlind; Sub20normEDAWhiteBlind; Sub21normEDAWhiteBlind;...
    Sub24normEDAWhiteBlind; Sub25normEDAWhiteBlind;...
    Sub26normEDAWhiteBlind];

for i=1:size(AllSubEDANormWhiteBlind)
AllAvrEDANormWhiteBlind(i) = mean(AllSubEDANormWhiteBlind(i,:));
AllStdEDANormWhiteBlind(i) = std(AllSubEDANormWhiteBlind(i,:));
end

%Blue Blind
AllAvrEDANormBlueBlind = 1;
AllStdEDANormBlueBlind = 1;
AllSubEDANormBlueBlind = [Sub2normEDABlueBlind, Sub3normEDABlueBlind, Sub4normEDABlueBlind,...
    Sub5normEDABlueBlind, Sub6normEDABlueBlind, Sub7normEDABlueBlind, Sub8normEDABlueBlind,...
    Sub9normEDABlueBlind, Sub10normEDABlueBlind, Sub11normEDABlueBlind, Sub13normEDABlueBlind,...
    Sub14normEDABlueBlind, Sub15normEDABlueBlind, Sub16normEDABlueBlind, Sub17normEDABlueBlind,...
    Sub18normEDABlueBlind, Sub19normEDABlueBlind, Sub20normEDABlueBlind, Sub21normEDABlueBlind,...
    Sub24normEDABlueBlind, Sub25normEDABlueBlind,...
    Sub26normEDABlueBlind];

AllSubEDANormBlueBlindColumn = [Sub2normEDABlueBlind; Sub3normEDABlueBlind; Sub4normEDABlueBlind;...
    Sub5normEDABlueBlind; Sub6normEDABlueBlind; Sub7normEDABlueBlind; Sub8normEDABlueBlind;...
    Sub9normEDABlueBlind; Sub10normEDABlueBlind; Sub11normEDABlueBlind; Sub13normEDABlueBlind;...
    Sub14normEDABlueBlind; Sub15normEDABlueBlind; Sub16normEDABlueBlind; Sub17normEDABlueBlind;...
    Sub18normEDABlueBlind; Sub19normEDABlueBlind; Sub20normEDABlueBlind; Sub21normEDABlueBlind;...
    Sub24normEDABlueBlind; Sub25normEDABlueBlind;...
    Sub26normEDABlueBlind];

for i=1:size(AllSubEDANormBlueBlind)
AllAvrEDANormBlueBlind(i) = mean(AllSubEDANormBlueBlind(i,:));
AllStdEDANormBlueBlind(i) = std(AllSubEDANormBlueBlind(i,:));
end

%Red Blind
AllAvrEDANormRedBlind = 1;
AllStdEDANormRedBlind = 1;
AllSubEDANormRedBlind = [Sub2normEDARedBlind, Sub3normEDARedBlind, Sub4normEDARedBlind,...
    Sub5normEDARedBlind, Sub6normEDARedBlind, Sub7normEDARedBlind, Sub8normEDARedBlind,...
    Sub9normEDARedBlind, Sub10normEDARedBlind, Sub11normEDARedBlind, Sub13normEDARedBlind,...
    Sub14normEDARedBlind, Sub15normEDARedBlind, Sub16normEDARedBlind, Sub17normEDARedBlind,...
    Sub18normEDARedBlind, Sub19normEDARedBlind, Sub20normEDARedBlind, Sub21normEDARedBlind,...
    Sub24normEDARedBlind, Sub25normEDARedBlind,...
    Sub26normEDARedBlind];

AllSubEDANormRedBlindColumn = [Sub2normEDARedBlind; Sub3normEDARedBlind; Sub4normEDARedBlind;...
    Sub5normEDARedBlind; Sub6normEDARedBlind; Sub7normEDARedBlind; Sub8normEDARedBlind;...
    Sub9normEDARedBlind; Sub10normEDARedBlind; Sub11normEDARedBlind; Sub13normEDARedBlind;...
    Sub14normEDARedBlind; Sub15normEDARedBlind; Sub16normEDARedBlind; Sub17normEDARedBlind;...
    Sub18normEDARedBlind; Sub19normEDARedBlind; Sub20normEDARedBlind; Sub21normEDARedBlind;...
    Sub24normEDARedBlind; Sub25normEDARedBlind;...
    Sub26normEDARedBlind];

for i=1:size(AllSubEDANormRedBlind)
AllAvrEDANormRedBlind(i) = mean(AllSubEDANormRedBlind(i,:));
AllStdEDANormRedBlind(i) = std(AllSubEDANormRedBlind(i,:));
end

%Yellow Blind
AllAvrEDANormYellowBlind = 1;
AllStdEDANormYellowBlind = 1;
AllTtestEDANormYvsBBlind = 1;
AllSubEDANormYellowBlind = [Sub2normEDAYellowBlind, Sub3normEDAYellowBlind, Sub4normEDAYellowBlind,...
    Sub5normEDAYellowBlind, Sub6normEDAYellowBlind, Sub7normEDAYellowBlind, Sub8normEDAYellowBlind,...
    Sub9normEDAYellowBlind, Sub10normEDAYellowBlind, Sub11normEDAYellowBlind, Sub13normEDAYellowBlind,...
    Sub14normEDAYellowBlind, Sub15normEDAYellowBlind, Sub16normEDAYellowBlind, Sub17normEDAYellowBlind,...
    Sub18normEDAYellowBlind, Sub19normEDAYellowBlind, Sub20normEDAYellowBlind, Sub21normEDAYellowBlind,...
    Sub24normEDAYellowBlind, Sub25normEDAYellowBlind,...
    Sub26normEDAYellowBlind];

AllSubEDANormYellowBlindColumn = [Sub2normEDAYellowBlind; Sub3normEDAYellowBlind; Sub4normEDAYellowBlind;...
    Sub5normEDAYellowBlind; Sub6normEDAYellowBlind; Sub7normEDAYellowBlind; Sub8normEDAYellowBlind;...
    Sub9normEDAYellowBlind; Sub10normEDAYellowBlind; Sub11normEDAYellowBlind; Sub13normEDAYellowBlind;...
    Sub14normEDAYellowBlind; Sub15normEDAYellowBlind; Sub16normEDAYellowBlind; Sub17normEDAYellowBlind;...
    Sub18normEDAYellowBlind; Sub19normEDAYellowBlind; Sub20normEDAYellowBlind; Sub21normEDAYellowBlind;...
    Sub24normEDAYellowBlind; Sub25normEDAYellowBlind;...
    Sub26normEDAYellowBlind];

for i=1:size(AllSubEDANormYellowBlind)
AllAvrEDANormYellowBlind(i) = mean(AllSubEDANormYellowBlind(i,:));
AllStdEDANormYellowBlind(i) = std(AllSubEDANormYellowBlind(i,:));
[H, AllTtestEDANormYvsBBlind(i)] = ttest2(AllSubEDANormYellowBlind(i,:),AllSubEDANormBlueBlind(i,:));
[H, AllTtestEDANormYvsRBlind(i)] = ttest2(AllSubEDANormYellowBlind(i,:),AllSubEDANormRedBlind(i,:));
[H, AllTtestEDANormYvsWBlind(i)] = ttest2(AllSubEDANormYellowBlind(i,:),AllSubEDANormWhiteBlind(i,:));

[H, AllTtestEDANormBvsWBlind(i)] = ttest2(AllSubEDANormBlueBlind(i,:),AllSubEDANormWhiteBlind(i,:));
[H, AllTtestEDANormBvsRBlind(i)] = ttest2(AllSubEDANormBlueBlind(i,:),AllSubEDANormRedBlind(i,:));

[H, AllTtestEDANormRvsWBlind(i)] = ttest2(AllSubEDANormRedBlind(i,:),AllSubEDANormWhiteBlind(i,:));
end
figure
plot(AllTtestEDANormYvsBBlind)
hold on
plot(AllTtestEDANormYvsRBlind)
hold on 
plot(AllTtestEDANormYvsWBlind)
hold on
plot(AllTtestEDANormBvsWBlind)
hold on 
plot(AllTtestEDANormBvsRBlind)
hold on 
plot(AllTtestEDANormRvsWBlind)

%All Average Blind together. 
figure 
plot(AllAvrEDANormBlueBlind)
hold on 
plot(AllAvrEDANormRedBlind)
hold on 
plot(AllAvrEDANormYellowBlind)
hold on 
plot(AllAvrEDANormWhiteBlind)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaEDAReadyBase = [AllSubEDANormWhiteBaseColumn,AllSubEDANormBlueBaseColumn, AllSubEDANormRedBaseColumn, AllSubEDANormYellowBaseColumn];
anova1(anovaEDAReadyBase)

anovaEDAReadyNoBlind = [AllSubEDANormWhiteNoBlindColumn,AllSubEDANormBlueNoBlindColumn, AllSubEDANormRedNoBlindColumn, AllSubEDANormYellowNoBlindColumn];
anova1(anovaEDAReadyNoBlind)

anovaEDAReadyBlind = [AllSubEDANormWhiteBlindColumn,AllSubEDANormBlueBlindColumn, AllSubEDANormRedBlindColumn, AllSubEDANormYellowBlindColumn];
anova1(anovaEDAReadyBlind)

%effect size
meanEDAWBase = mean(AllSubEDANormWhiteBaseColumn);
meanEDAWBlind = mean(AllSubEDANormWhiteBlindColumn);
meanEDAWNoBlind = mean(AllSubEDANormWhiteNoBlindColumn);

stdEDAWBase = std(AllSubEDANormWhiteBaseColumn);
stdEDAWBlind = std(AllSubEDANormWhiteBlindColumn);
stdEDAWNoBlind = std(AllSubEDANormWhiteNoBlindColumn);

meanEDABBase = mean(AllSubEDANormBlueBaseColumn);
meanEDABBlind = mean(AllSubEDANormBlueBlindColumn);
meanEDABNoBlind = mean(AllSubEDANormBlueNoBlindColumn);

stdEDABBase = std(AllSubEDANormBlueBaseColumn);
stdEDABBlind = std(AllSubEDANormBlueBlindColumn);
stdEDABNoBlind = std(AllSubEDANormBlueNoBlindColumn);

meanEDARBase = mean(AllSubEDANormRedBaseColumn);
meanEDARBlind = mean(AllSubEDANormRedBlindColumn);
meanEDARNoBlind = mean(AllSubEDANormRedNoBlindColumn);

stdEDARBase = std(AllSubEDANormRedBaseColumn);
stdEDARBlind = std(AllSubEDANormRedBlindColumn);
stdEDARNoBlind = std(AllSubEDANormRedNoBlindColumn);

meanEDAYBase = mean(AllSubEDANormYellowBaseColumn);
meanEDAYBlind = mean(AllSubEDANormYellowBlindColumn);
meanEDAYNoBlind = mean(AllSubEDANormYellowNoBlindColumn);

stdEDAYBase = std(AllSubEDANormYellowBaseColumn);
stdEDAYBlind = std(AllSubEDANormYellowBlindColumn);
stdEDAYNoBlind = std(AllSubEDANormYellowNoBlindColumn);

effectSizesBase(1) = effectSize(meanEDABBase, meanEDARBase, stdEDABBase, stdEDARBase);
effectSizesBase(2) = effectSize(meanEDABBase, meanEDAWBase, stdEDABBase, stdEDAWBase);
effectSizesBase(3) = effectSize(meanEDABBase, meanEDAYBase, stdEDABBase, stdEDAYBase);

effectSizesBase(4) = effectSize(meanEDARBase, meanEDAWBase, stdEDARBase, stdEDAWBase);
effectSizesBase(5) = effectSize(meanEDARBase, meanEDAYBase, stdEDARBase, stdEDAYBase);

effectSizesBase(6) = effectSize(meanEDAYBase, meanEDAWBase, stdEDAYBase, stdEDAWBase)

effectSizesNoBlind(1) = effectSize(meanEDABNoBlind, meanEDARNoBlind, stdEDABNoBlind, stdEDARNoBlind);
effectSizesNoBlind(2) = effectSize(meanEDABNoBlind, meanEDAWNoBlind, stdEDABNoBlind, stdEDAWNoBlind);
effectSizesNoBlind(3) = effectSize(meanEDABNoBlind, meanEDAYNoBlind, stdEDABNoBlind, stdEDAYNoBlind);

effectSizesNoBlind(4) = effectSize(meanEDARNoBlind, meanEDAWNoBlind, stdEDARNoBlind, stdEDAWNoBlind);
effectSizesNoBlind(5) = effectSize(meanEDARNoBlind, meanEDAYNoBlind, stdEDARNoBlind, stdEDAYNoBlind);

effectSizesNoBlind(6) = effectSize(meanEDAYNoBlind, meanEDAWNoBlind, stdEDAYNoBlind, stdEDAWNoBlind)

effectSizesBlind(1) = effectSize(meanEDABBlind, meanEDARBlind, stdEDABBlind, stdEDARBlind);
effectSizesBlind(2) = effectSize(meanEDABBlind, meanEDAWBlind, stdEDABBlind, stdEDAWBlind);
effectSizesBlind(3) = effectSize(meanEDABBlind, meanEDAYBlind, stdEDABBlind, stdEDAYBlind);

effectSizesBlind(4) = effectSize(meanEDARBlind, meanEDAWBlind, stdEDARBlind, stdEDAWBlind);
effectSizesBlind(5) = effectSize(meanEDARBlind, meanEDAYBlind, stdEDARBlind, stdEDAYBlind);

effectSizesBlind(6) = effectSize(meanEDAYBlind, meanEDAWBlind, stdEDAYBlind, stdEDAWBlind)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end