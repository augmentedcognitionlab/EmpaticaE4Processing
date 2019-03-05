% ACC statistics 
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
AllAvrACCNormWhiteBase = 1;
AllStdACCNormWhiteBase = 1;
AllSubACCNormWhiteBase = [Sub2normACCWhiteBase, Sub3normACCWhiteBase, Sub4normACCWhiteBase,...
    Sub5normACCWhiteBase, Sub6normACCWhiteBase, Sub7normACCWhiteBase, Sub8normACCWhiteBase,...
    Sub9normACCWhiteBase, Sub10normACCWhiteBase, Sub11normACCWhiteBase, Sub13normACCWhiteBase,...
    Sub14normACCWhiteBase, Sub15normACCWhiteBase, Sub16normACCWhiteBase, Sub17normACCWhiteBase,...
    Sub18normACCWhiteBase, Sub19normACCWhiteBase, Sub20normACCWhiteBase, Sub21normACCWhiteBase,...
    Sub24normACCWhiteBase, Sub25normACCWhiteBase,...
    Sub26normACCWhiteBase];

AllSubACCNormWhiteBaseColumn = [Sub2normACCWhiteBase; Sub3normACCWhiteBase; Sub4normACCWhiteBase;...
    Sub5normACCWhiteBase; Sub6normACCWhiteBase; Sub7normACCWhiteBase; Sub8normACCWhiteBase;...
    Sub9normACCWhiteBase; Sub10normACCWhiteBase; Sub11normACCWhiteBase; Sub13normACCWhiteBase;...
    Sub14normACCWhiteBase; Sub15normACCWhiteBase; Sub16normACCWhiteBase; Sub17normACCWhiteBase;...
    Sub18normACCWhiteBase; Sub19normACCWhiteBase; Sub20normACCWhiteBase; Sub21normACCWhiteBase;...
    Sub24normACCWhiteBase; Sub25normACCWhiteBase;...
    Sub26normACCWhiteBase];


for i=1:size(AllSubACCNormWhiteBase)
AllAvrACCNormWhiteBase(i) = mean(AllSubACCNormWhiteBase(i,:));
AllStdACCNormWhiteBase(i) = std(AllSubACCNormWhiteBase(i,:));
end
figure 
plot(AllAvrACCNormWhiteBase)
hold on 
plot(AllStdACCNormWhiteBase)

%Blue Baseline 
AllAvrACCNormBlueBase = 1;
AllStdACCNormBlueBase = 1;
AllSubACCNormBlueBase = [Sub2normACCBlueBase, Sub3normACCBlueBase, Sub4normACCBlueBase,...
    Sub5normACCBlueBase, Sub6normACCBlueBase, Sub7normACCBlueBase, Sub8normACCBlueBase,...
    Sub9normACCBlueBase, Sub10normACCBlueBase, Sub11normACCBlueBase, Sub13normACCBlueBase,...
    Sub14normACCBlueBase, Sub15normACCBlueBase, Sub16normACCBlueBase, Sub17normACCBlueBase,...
    Sub18normACCBlueBase, Sub19normACCBlueBase, Sub20normACCBlueBase, Sub21normACCBlueBase,...
    Sub24normACCBlueBase, Sub25normACCBlueBase,...
    Sub26normACCBlueBase];

AllSubACCNormBlueBaseColumn = [Sub2normACCBlueBase; Sub3normACCBlueBase; Sub4normACCBlueBase;...
    Sub5normACCBlueBase; Sub6normACCBlueBase; Sub7normACCBlueBase; Sub8normACCBlueBase;...
    Sub9normACCBlueBase; Sub10normACCBlueBase; Sub11normACCBlueBase; Sub13normACCBlueBase;...
    Sub14normACCBlueBase; Sub15normACCBlueBase; Sub16normACCBlueBase; Sub17normACCBlueBase;...
    Sub18normACCBlueBase; Sub19normACCBlueBase; Sub20normACCBlueBase; Sub21normACCBlueBase;...
    Sub24normACCBlueBase; Sub25normACCBlueBase;...
    Sub26normACCBlueBase];


for i=1:size(AllSubACCNormBlueBase)
AllAvrACCNormBlueBase(i) = mean(AllSubACCNormBlueBase(i,:));
AllStdACCNormBlueBase(i) = std(AllSubACCNormBlueBase(i,:));
end

%Red Baseline 
AllAvrACCNormRedBase = 1;
AllStdACCNormRedBase = 1;
AllSubACCNormRedBase = [Sub2normACCRedBase, Sub3normACCRedBase, Sub4normACCRedBase,...
    Sub5normACCRedBase, Sub6normACCRedBase, Sub7normACCRedBase, Sub8normACCRedBase,...
    Sub9normACCRedBase, Sub10normACCRedBase, Sub11normACCRedBase, Sub13normACCRedBase,...
    Sub14normACCRedBase, Sub15normACCRedBase, Sub16normACCRedBase, Sub17normACCRedBase,...
    Sub18normACCRedBase, Sub19normACCRedBase, Sub20normACCRedBase, Sub21normACCRedBase,...
    Sub24normACCRedBase, Sub25normACCRedBase,...
    Sub26normACCRedBase];

AllSubACCNormRedBaseColumn = [Sub2normACCRedBase; Sub3normACCRedBase; Sub4normACCRedBase;...
    Sub5normACCRedBase; Sub6normACCRedBase; Sub7normACCRedBase; Sub8normACCRedBase;...
    Sub9normACCRedBase; Sub10normACCRedBase; Sub11normACCRedBase; Sub13normACCRedBase;...
    Sub14normACCRedBase; Sub15normACCRedBase; Sub16normACCRedBase; Sub17normACCRedBase;...
    Sub18normACCRedBase; Sub19normACCRedBase; Sub20normACCRedBase; Sub21normACCRedBase;...
    Sub24normACCRedBase; Sub25normACCRedBase;...
    Sub26normACCRedBase];


for i=1:size(AllSubACCNormRedBase)
AllAvrACCNormRedBase(i) = mean(AllSubACCNormRedBase(i,:));
AllStdACCNormRedBase(i) = std(AllSubACCNormRedBase(i,:));
end

%Yellow Baseline 
AllAvrACCNormYellowBase = 1;
AllStdACCNormYellowBase = 1;
AllSubACCNormYellowBase = [Sub2normACCYellowBase, Sub3normACCYellowBase, Sub4normACCYellowBase,...
    Sub5normACCYellowBase, Sub6normACCYellowBase, Sub7normACCYellowBase, Sub8normACCYellowBase,...
    Sub9normACCYellowBase, Sub10normACCYellowBase, Sub11normACCYellowBase, Sub13normACCYellowBase,...
    Sub14normACCYellowBase, Sub15normACCYellowBase, Sub16normACCYellowBase, Sub17normACCYellowBase,...
    Sub18normACCYellowBase, Sub19normACCYellowBase, Sub20normACCYellowBase, Sub21normACCYellowBase,...
    Sub24normACCYellowBase, Sub25normACCYellowBase,...
    Sub26normACCYellowBase];

AllSubACCNormYellowBaseColumn = [Sub2normACCYellowBase; Sub3normACCYellowBase; Sub4normACCYellowBase;...
    Sub5normACCYellowBase; Sub6normACCYellowBase; Sub7normACCYellowBase; Sub8normACCYellowBase;...
    Sub9normACCYellowBase; Sub10normACCYellowBase; Sub11normACCYellowBase; Sub13normACCYellowBase;...
    Sub14normACCYellowBase; Sub15normACCYellowBase; Sub16normACCYellowBase; Sub17normACCYellowBase;...
    Sub18normACCYellowBase; Sub19normACCYellowBase; Sub20normACCYellowBase; Sub21normACCYellowBase;...
    Sub24normACCYellowBase; Sub25normACCYellowBase;...
    Sub26normACCYellowBase];

for i=1:size(AllSubACCNormYellowBase)
AllAvrACCNormYellowBase(i) = mean(AllSubACCNormYellowBase(i,:));
AllStdACCNormYellowBase(i) = std(AllSubACCNormYellowBase(i,:));
[H, AllTtestACCNormYvsBBase(i)] = ttest2(AllSubACCNormYellowBase(i,:),AllSubACCNormBlueBase(i,:));
[H, AllTtestACCNormYvsRBase(i)] = ttest2(AllSubACCNormYellowBase(i,:),AllSubACCNormRedBase(i,:));
[H, AllTtestACCNormYvsWBase(i)] = ttest2(AllSubACCNormYellowBase(i,:),AllSubACCNormWhiteBase(i,:));

[H, AllTtestACCNormBvsWBase(i)] = ttest2(AllSubACCNormBlueBase(i,:),AllSubACCNormWhiteBase(i,:));
[H, AllTtestACCNormBvsRBase(i)] = ttest2(AllSubACCNormBlueBase(i,:),AllSubACCNormRedBase(i,:));

[H, AllTtestACCNormRvsWBase(i)] = ttest2(AllSubACCNormRedBase(i,:),AllSubACCNormWhiteBase(i,:));
end
figure
plot(AllTtestACCNormYvsBBase)
hold on
plot(AllTtestACCNormYvsRBase)
hold on 
plot(AllTtestACCNormYvsWBase)
hold on
plot(AllTtestACCNormBvsWBase)
hold on 
plot(AllTtestACCNormBvsRBase)
hold on 
plot(AllTtestACCNormRvsWBase)


%All Average Baselines together. 
figure 
plot(AllAvrACCNormBlueBase)
hold on 
plot(AllAvrACCNormRedBase)
hold on 
plot(AllAvrACCNormYellowBase)
hold on 
plot(AllAvrACCNormWhiteBase)
hold on 

%White NoBlind
AllAvrACCNormWhiteNoBlind = 1;
AllStdACCNormWhiteNoBlind = 1;
AllSubACCNormWhiteNoBlind = [Sub2normACCWhiteNoBlind, Sub3normACCWhiteNoBlind, Sub4normACCWhiteNoBlind,...
    Sub5normACCWhiteNoBlind, Sub6normACCWhiteNoBlind, Sub7normACCWhiteNoBlind, Sub8normACCWhiteNoBlind,...
    Sub9normACCWhiteNoBlind, Sub10normACCWhiteNoBlind, Sub11normACCWhiteNoBlind, Sub13normACCWhiteNoBlind,...
    Sub14normACCWhiteNoBlind, Sub15normACCWhiteNoBlind, Sub16normACCWhiteNoBlind, Sub17normACCWhiteNoBlind,...
    Sub18normACCWhiteNoBlind, Sub19normACCWhiteNoBlind, Sub20normACCWhiteNoBlind, Sub21normACCWhiteNoBlind,...
    Sub24normACCWhiteNoBlind, Sub25normACCWhiteNoBlind,...
    Sub26normACCWhiteNoBlind];

AllSubACCNormWhiteNoBlindColumn = [Sub2normACCWhiteNoBlind; Sub3normACCWhiteNoBlind; Sub4normACCWhiteNoBlind;...
    Sub5normACCWhiteNoBlind; Sub6normACCWhiteNoBlind; Sub7normACCWhiteNoBlind; Sub8normACCWhiteNoBlind;...
    Sub9normACCWhiteNoBlind; Sub10normACCWhiteNoBlind; Sub11normACCWhiteNoBlind; Sub13normACCWhiteNoBlind;...
    Sub14normACCWhiteNoBlind; Sub15normACCWhiteNoBlind; Sub16normACCWhiteNoBlind; Sub17normACCWhiteNoBlind;...
    Sub18normACCWhiteNoBlind; Sub19normACCWhiteNoBlind; Sub20normACCWhiteNoBlind; Sub21normACCWhiteNoBlind;...
    Sub24normACCWhiteNoBlind; Sub25normACCWhiteNoBlind;...
    Sub26normACCWhiteNoBlind];

for i=1:size(AllSubACCNormWhiteNoBlind)
AllAvrACCNormWhiteNoBlind(i) = mean(AllSubACCNormWhiteNoBlind(i,:));
AllStdACCNormWhiteNoBlind(i) = std(AllSubACCNormWhiteNoBlind(i,:));
end

%Blue NoBlind
AllAvrACCNormBlueNoBlind = 1;
AllStdACCNormBlueNoBlind = 1;
AllSubACCNormBlueNoBlind = [Sub2normACCBlueNoBlind, Sub3normACCBlueNoBlind, Sub4normACCBlueNoBlind,...
    Sub5normACCBlueNoBlind, Sub6normACCBlueNoBlind, Sub7normACCBlueNoBlind, Sub8normACCBlueNoBlind,...
    Sub9normACCBlueNoBlind, Sub10normACCBlueNoBlind, Sub11normACCBlueNoBlind, Sub13normACCBlueNoBlind,...
    Sub14normACCBlueNoBlind, Sub15normACCBlueNoBlind, Sub16normACCBlueNoBlind, Sub17normACCBlueNoBlind,...
    Sub18normACCBlueNoBlind, Sub19normACCBlueNoBlind, Sub20normACCBlueNoBlind, Sub21normACCBlueNoBlind,...
    Sub24normACCBlueNoBlind, Sub25normACCBlueNoBlind,...
    Sub26normACCBlueNoBlind];

AllSubACCNormBlueNoBlindColumn = [Sub2normACCBlueNoBlind; Sub3normACCBlueNoBlind; Sub4normACCBlueNoBlind;...
    Sub5normACCBlueNoBlind; Sub6normACCBlueNoBlind; Sub7normACCBlueNoBlind; Sub8normACCBlueNoBlind;...
    Sub9normACCBlueNoBlind; Sub10normACCBlueNoBlind; Sub11normACCBlueNoBlind; Sub13normACCBlueNoBlind;...
    Sub14normACCBlueNoBlind; Sub15normACCBlueNoBlind; Sub16normACCBlueNoBlind; Sub17normACCBlueNoBlind;...
    Sub18normACCBlueNoBlind; Sub19normACCBlueNoBlind; Sub20normACCBlueNoBlind; Sub21normACCBlueNoBlind;...
    Sub24normACCBlueNoBlind; Sub25normACCBlueNoBlind;...
    Sub26normACCBlueNoBlind];

for i=1:size(AllSubACCNormBlueNoBlind)
AllAvrACCNormBlueNoBlind(i) = mean(AllSubACCNormBlueNoBlind(i,:));
AllStdACCNormBlueNoBlind(i) = std(AllSubACCNormBlueNoBlind(i,:));
end

%Red NoBlind
AllAvrACCNormRedNoBlind = 1;
AllStdACCNormRedNoBlind = 1;
AllSubACCNormRedNoBlind = [Sub2normACCRedNoBlind, Sub3normACCRedNoBlind, Sub4normACCRedNoBlind,...
    Sub5normACCRedNoBlind, Sub6normACCRedNoBlind, Sub7normACCRedNoBlind, Sub8normACCRedNoBlind,...
    Sub9normACCRedNoBlind, Sub10normACCRedNoBlind, Sub11normACCRedNoBlind, Sub13normACCRedNoBlind,...
    Sub14normACCRedNoBlind, Sub15normACCRedNoBlind, Sub16normACCRedNoBlind, Sub17normACCRedNoBlind,...
    Sub18normACCRedNoBlind, Sub19normACCRedNoBlind, Sub20normACCRedNoBlind, Sub21normACCRedNoBlind,...
    Sub24normACCRedNoBlind, Sub25normACCRedNoBlind,...
    Sub26normACCRedNoBlind];

AllSubACCNormRedNoBlindColumn = [Sub2normACCRedNoBlind; Sub3normACCRedNoBlind; Sub4normACCRedNoBlind;...
    Sub5normACCRedNoBlind; Sub6normACCRedNoBlind; Sub7normACCRedNoBlind; Sub8normACCRedNoBlind;...
    Sub9normACCRedNoBlind; Sub10normACCRedNoBlind; Sub11normACCRedNoBlind; Sub13normACCRedNoBlind;...
    Sub14normACCRedNoBlind; Sub15normACCRedNoBlind; Sub16normACCRedNoBlind; Sub17normACCRedNoBlind;...
    Sub18normACCRedNoBlind; Sub19normACCRedNoBlind; Sub20normACCRedNoBlind; Sub21normACCRedNoBlind;...
    Sub24normACCRedNoBlind; Sub25normACCRedNoBlind;...
    Sub26normACCRedNoBlind];

for i=1:size(AllSubACCNormRedNoBlind)
AllAvrACCNormRedNoBlind(i) = mean(AllSubACCNormRedNoBlind(i,:));
AllStdACCNormRedNoBlind(i) = std(AllSubACCNormRedNoBlind(i,:));
end

%Yellow NoBlind
AllAvrACCNormYellowNoBlind = 1;
AllStdACCNormYellowNoBlind = 1;
AllSubACCNormYellowNoBlind = [Sub2normACCYellowNoBlind, Sub3normACCYellowNoBlind, Sub4normACCYellowNoBlind,...
    Sub5normACCYellowNoBlind, Sub6normACCYellowNoBlind, Sub7normACCYellowNoBlind, Sub8normACCYellowNoBlind,...
    Sub9normACCYellowNoBlind, Sub10normACCYellowNoBlind, Sub11normACCYellowNoBlind, Sub13normACCYellowNoBlind,...
    Sub14normACCYellowNoBlind, Sub15normACCYellowNoBlind, Sub16normACCYellowNoBlind, Sub17normACCYellowNoBlind,...
    Sub18normACCYellowNoBlind, Sub19normACCYellowNoBlind, Sub20normACCYellowNoBlind, Sub21normACCYellowNoBlind,...
    Sub24normACCYellowNoBlind, Sub25normACCYellowNoBlind,...
    Sub26normACCYellowNoBlind];

AllSubACCNormYellowNoBlindColumn = [Sub2normACCYellowNoBlind; Sub3normACCYellowNoBlind; Sub4normACCYellowNoBlind;...
    Sub5normACCYellowNoBlind; Sub6normACCYellowNoBlind; Sub7normACCYellowNoBlind; Sub8normACCYellowNoBlind;...
    Sub9normACCYellowNoBlind; Sub10normACCYellowNoBlind; Sub11normACCYellowNoBlind; Sub13normACCYellowNoBlind;...
    Sub14normACCYellowNoBlind; Sub15normACCYellowNoBlind; Sub16normACCYellowNoBlind; Sub17normACCYellowNoBlind;...
    Sub18normACCYellowNoBlind; Sub19normACCYellowNoBlind; Sub20normACCYellowNoBlind; Sub21normACCYellowNoBlind;...
    Sub24normACCYellowNoBlind; Sub25normACCYellowNoBlind;...
    Sub26normACCYellowNoBlind];


for i=1:size(AllSubACCNormYellowNoBlind)
AllAvrACCNormYellowNoBlind(i) = mean(AllSubACCNormYellowNoBlind(i,:));
AllStdACCNormYellowNoBlind(i) = std(AllSubACCNormYellowNoBlind(i,:));
[H, AllTtestACCNormYvsBNoBlind(i)] = ttest2(AllSubACCNormYellowNoBlind(i,:),AllSubACCNormBlueNoBlind(i,:));
[H, AllTtestACCNormYvsRNoBlind(i)] = ttest2(AllSubACCNormYellowNoBlind(i,:),AllSubACCNormRedNoBlind(i,:));
[H, AllTtestACCNormYvsWNoBlind(i)] = ttest2(AllSubACCNormYellowNoBlind(i,:),AllSubACCNormWhiteNoBlind(i,:));

[H, AllTtestACCNormBvsWNoBlind(i)] = ttest2(AllSubACCNormBlueNoBlind(i,:),AllSubACCNormWhiteNoBlind(i,:));
[H, AllTtestACCNormBvsRNoBlind(i)] = ttest2(AllSubACCNormBlueNoBlind(i,:),AllSubACCNormRedNoBlind(i,:));

[H, AllTtestACCNormRvsWNoBlind(i)] = ttest2(AllSubACCNormRedNoBlind(i,:),AllSubACCNormWhiteNoBlind(i,:));
end
figure
plot(AllTtestACCNormYvsBNoBlind)
hold on
plot(AllTtestACCNormYvsRNoBlind)
hold on 
plot(AllTtestACCNormYvsWNoBlind)
hold on
plot(AllTtestACCNormBvsWNoBlind)
hold on 
plot(AllTtestACCNormBvsRNoBlind)
hold on 
plot(AllTtestACCNormRvsWNoBlind)

%All Average NoBlind together. 
figure 
plot(AllAvrACCNormBlueNoBlind)
hold on 
plot(AllAvrACCNormRedNoBlind)
hold on 
plot(AllAvrACCNormYellowNoBlind)
hold on 
plot(AllAvrACCNormWhiteNoBlind)
hold on

%White Blind
AllAvrACCNormWhiteBlind = 1;
AllStdACCNormWhiteBlind = 1;
AllSubACCNormWhiteBlind = [Sub2normACCWhiteBlind, Sub3normACCWhiteBlind, Sub4normACCWhiteBlind,...
    Sub5normACCWhiteBlind, Sub6normACCWhiteBlind, Sub7normACCWhiteBlind, Sub8normACCWhiteBlind,...
    Sub9normACCWhiteBlind, Sub10normACCWhiteBlind, Sub11normACCWhiteBlind, Sub13normACCWhiteBlind,...
    Sub14normACCWhiteBlind, Sub15normACCWhiteBlind, Sub16normACCWhiteBlind, Sub17normACCWhiteBlind,...
    Sub18normACCWhiteBlind, Sub19normACCWhiteBlind, Sub20normACCWhiteBlind, Sub21normACCWhiteBlind,...
    Sub24normACCWhiteBlind, Sub25normACCWhiteBlind,...
    Sub26normACCWhiteBlind];

AllSubACCNormWhiteBlindColumn = [Sub2normACCWhiteBlind; Sub3normACCWhiteBlind; Sub4normACCWhiteBlind;...
    Sub5normACCWhiteBlind; Sub6normACCWhiteBlind; Sub7normACCWhiteBlind; Sub8normACCWhiteBlind;...
    Sub9normACCWhiteBlind; Sub10normACCWhiteBlind; Sub11normACCWhiteBlind; Sub13normACCWhiteBlind;...
    Sub14normACCWhiteBlind; Sub15normACCWhiteBlind; Sub16normACCWhiteBlind; Sub17normACCWhiteBlind;...
    Sub18normACCWhiteBlind; Sub19normACCWhiteBlind; Sub20normACCWhiteBlind; Sub21normACCWhiteBlind;...
    Sub24normACCWhiteBlind; Sub25normACCWhiteBlind;...
    Sub26normACCWhiteBlind];

for i=1:size(AllSubACCNormWhiteBlind)
AllAvrACCNormWhiteBlind(i) = mean(AllSubACCNormWhiteBlind(i,:));
AllStdACCNormWhiteBlind(i) = std(AllSubACCNormWhiteBlind(i,:));
end

%Blue Blind
AllAvrACCNormBlueBlind = 1;
AllStdACCNormBlueBlind = 1;
AllSubACCNormBlueBlind = [Sub2normACCBlueBlind, Sub3normACCBlueBlind, Sub4normACCBlueBlind,...
    Sub5normACCBlueBlind, Sub6normACCBlueBlind, Sub7normACCBlueBlind, Sub8normACCBlueBlind,...
    Sub9normACCBlueBlind, Sub10normACCBlueBlind, Sub11normACCBlueBlind, Sub13normACCBlueBlind,...
    Sub14normACCBlueBlind, Sub15normACCBlueBlind, Sub16normACCBlueBlind, Sub17normACCBlueBlind,...
    Sub18normACCBlueBlind, Sub19normACCBlueBlind, Sub20normACCBlueBlind, Sub21normACCBlueBlind,...
    Sub24normACCBlueBlind, Sub25normACCBlueBlind,...
    Sub26normACCBlueBlind];

AllSubACCNormBlueBlindColumn = [Sub2normACCBlueBlind; Sub3normACCBlueBlind; Sub4normACCBlueBlind;...
    Sub5normACCBlueBlind; Sub6normACCBlueBlind; Sub7normACCBlueBlind; Sub8normACCBlueBlind;...
    Sub9normACCBlueBlind; Sub10normACCBlueBlind; Sub11normACCBlueBlind; Sub13normACCBlueBlind;...
    Sub14normACCBlueBlind; Sub15normACCBlueBlind; Sub16normACCBlueBlind; Sub17normACCBlueBlind;...
    Sub18normACCBlueBlind; Sub19normACCBlueBlind; Sub20normACCBlueBlind; Sub21normACCBlueBlind;...
    Sub24normACCBlueBlind; Sub25normACCBlueBlind;...
    Sub26normACCBlueBlind];

for i=1:size(AllSubACCNormBlueBlind)
AllAvrACCNormBlueBlind(i) = mean(AllSubACCNormBlueBlind(i,:));
AllStdACCNormBlueBlind(i) = std(AllSubACCNormBlueBlind(i,:));
end

%Red Blind
AllAvrACCNormRedBlind = 1;
AllStdACCNormRedBlind = 1;
AllSubACCNormRedBlind = [Sub2normACCRedBlind, Sub3normACCRedBlind, Sub4normACCRedBlind,...
    Sub5normACCRedBlind, Sub6normACCRedBlind, Sub7normACCRedBlind, Sub8normACCRedBlind,...
    Sub9normACCRedBlind, Sub10normACCRedBlind, Sub11normACCRedBlind, Sub13normACCRedBlind,...
    Sub14normACCRedBlind, Sub15normACCRedBlind, Sub16normACCRedBlind, Sub17normACCRedBlind,...
    Sub18normACCRedBlind, Sub19normACCRedBlind, Sub20normACCRedBlind, Sub21normACCRedBlind,...
    Sub24normACCRedBlind, Sub25normACCRedBlind,...
    Sub26normACCRedBlind];

AllSubACCNormRedBlindColumn = [Sub2normACCRedBlind; Sub3normACCRedBlind; Sub4normACCRedBlind;...
    Sub5normACCRedBlind; Sub6normACCRedBlind; Sub7normACCRedBlind; Sub8normACCRedBlind;...
    Sub9normACCRedBlind; Sub10normACCRedBlind; Sub11normACCRedBlind; Sub13normACCRedBlind;...
    Sub14normACCRedBlind; Sub15normACCRedBlind; Sub16normACCRedBlind; Sub17normACCRedBlind;...
    Sub18normACCRedBlind; Sub19normACCRedBlind; Sub20normACCRedBlind; Sub21normACCRedBlind;...
    Sub24normACCRedBlind; Sub25normACCRedBlind;...
    Sub26normACCRedBlind];

for i=1:size(AllSubACCNormRedBlind)
AllAvrACCNormRedBlind(i) = mean(AllSubACCNormRedBlind(i,:));
AllStdACCNormRedBlind(i) = std(AllSubACCNormRedBlind(i,:));
end

%Yellow Blind
AllAvrACCNormYellowBlind = 1;
AllStdACCNormYellowBlind = 1;
AllTtestACCNormYvsBBlind = 1;
AllSubACCNormYellowBlind = [Sub2normACCYellowBlind, Sub3normACCYellowBlind, Sub4normACCYellowBlind,...
    Sub5normACCYellowBlind, Sub6normACCYellowBlind, Sub7normACCYellowBlind, Sub8normACCYellowBlind,...
    Sub9normACCYellowBlind, Sub10normACCYellowBlind, Sub11normACCYellowBlind, Sub13normACCYellowBlind,...
    Sub14normACCYellowBlind, Sub15normACCYellowBlind, Sub16normACCYellowBlind, Sub17normACCYellowBlind,...
    Sub18normACCYellowBlind, Sub19normACCYellowBlind, Sub20normACCYellowBlind, Sub21normACCYellowBlind,...
    Sub24normACCYellowBlind, Sub25normACCYellowBlind,...
    Sub26normACCYellowBlind];

AllSubACCNormYellowBlindColumn = [Sub2normACCYellowBlind; Sub3normACCYellowBlind; Sub4normACCYellowBlind;...
    Sub5normACCYellowBlind; Sub6normACCYellowBlind; Sub7normACCYellowBlind; Sub8normACCYellowBlind;...
    Sub9normACCYellowBlind; Sub10normACCYellowBlind; Sub11normACCYellowBlind; Sub13normACCYellowBlind;...
    Sub14normACCYellowBlind; Sub15normACCYellowBlind; Sub16normACCYellowBlind; Sub17normACCYellowBlind;...
    Sub18normACCYellowBlind; Sub19normACCYellowBlind; Sub20normACCYellowBlind; Sub21normACCYellowBlind;...
    Sub24normACCYellowBlind; Sub25normACCYellowBlind;...
    Sub26normACCYellowBlind];

for i=1:size(AllSubACCNormYellowBlind)
AllAvrACCNormYellowBlind(i) = mean(AllSubACCNormYellowBlind(i,:));
AllStdACCNormYellowBlind(i) = std(AllSubACCNormYellowBlind(i,:));
[H, AllTtestACCNormYvsBBlind(i)] = ttest2(AllSubACCNormYellowBlind(i,:),AllSubACCNormBlueBlind(i,:));
[H, AllTtestACCNormYvsRBlind(i)] = ttest2(AllSubACCNormYellowBlind(i,:),AllSubACCNormRedBlind(i,:));
[H, AllTtestACCNormYvsWBlind(i)] = ttest2(AllSubACCNormYellowBlind(i,:),AllSubACCNormWhiteBlind(i,:));

[H, AllTtestACCNormBvsWBlind(i)] = ttest2(AllSubACCNormBlueBlind(i,:),AllSubACCNormWhiteBlind(i,:));
[H, AllTtestACCNormBvsRBlind(i)] = ttest2(AllSubACCNormBlueBlind(i,:),AllSubACCNormRedBlind(i,:));

[H, AllTtestACCNormRvsWBlind(i)] = ttest2(AllSubACCNormRedBlind(i,:),AllSubACCNormWhiteBlind(i,:));
end
figure
plot(AllTtestACCNormYvsBBlind)
hold on
plot(AllTtestACCNormYvsRBlind)
hold on 
plot(AllTtestACCNormYvsWBlind)
hold on
plot(AllTtestACCNormBvsWBlind)
hold on 
plot(AllTtestACCNormBvsRBlind)
hold on 
plot(AllTtestACCNormRvsWBlind)

%All Average Blind together. 
figure 
plot(AllAvrACCNormBlueBlind)
hold on 
plot(AllAvrACCNormRedBlind)
hold on 
plot(AllAvrACCNormYellowBlind)
hold on 
plot(AllAvrACCNormWhiteBlind)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaACCReadyBase = [AllSubACCNormWhiteBaseColumn,AllSubACCNormBlueBaseColumn, AllSubACCNormRedBaseColumn, AllSubACCNormYellowBaseColumn];
anova1(anovaACCReadyBase)

anovaACCReadyNoBlind = [AllSubACCNormWhiteNoBlindColumn,AllSubACCNormBlueNoBlindColumn, AllSubACCNormRedNoBlindColumn, AllSubACCNormYellowNoBlindColumn];
anova1(anovaACCReadyNoBlind)

anovaACCReadyBlind = [AllSubACCNormWhiteBlindColumn,AllSubACCNormBlueBlindColumn, AllSubACCNormRedBlindColumn, AllSubACCNormYellowBlindColumn];
anova1(anovaACCReadyBlind)
%corr accross subjects to see how much each of the data can describe the
%other 
%effect size
meanACCWBase = mean(AllSubACCNormWhiteBaseColumn);
meanACCWBlind = mean(AllSubACCNormWhiteBlindColumn);
meanACCWNoBlind = mean(AllSubACCNormWhiteNoBlindColumn);

stdACCWBase = std(AllSubACCNormWhiteBaseColumn);
stdACCWBlind = std(AllSubACCNormWhiteBlindColumn);
stdACCWNoBlind = std(AllSubACCNormWhiteNoBlindColumn);

meanACCBBase = mean(AllSubACCNormBlueBaseColumn);
meanACCBBlind = mean(AllSubACCNormBlueBlindColumn);
meanACCBNoBlind = mean(AllSubACCNormBlueNoBlindColumn);

stdACCBBase = std(AllSubACCNormBlueBaseColumn);
stdACCBBlind = std(AllSubACCNormBlueBlindColumn);
stdACCBNoBlind = std(AllSubACCNormBlueNoBlindColumn);

meanACCRBase = mean(AllSubACCNormRedBaseColumn);
meanACCRBlind = mean(AllSubACCNormRedBlindColumn);
meanACCRNoBlind = mean(AllSubACCNormRedNoBlindColumn);

stdACCRBase = std(AllSubACCNormRedBaseColumn);
stdACCRBlind = std(AllSubACCNormRedBlindColumn);
stdACCRNoBlind = std(AllSubACCNormRedNoBlindColumn);

meanACCYBase = mean(AllSubACCNormYellowBaseColumn);
meanACCYBlind = mean(AllSubACCNormYellowBlindColumn);
meanACCYNoBlind = mean(AllSubACCNormYellowNoBlindColumn);

stdACCYBase = std(AllSubACCNormYellowBaseColumn);
stdACCYBlind = std(AllSubACCNormYellowBlindColumn);
stdACCYNoBlind = std(AllSubACCNormYellowNoBlindColumn);

effectSizesBase(1) = effectSize(meanACCBBase, meanACCRBase, stdACCBBase, stdACCRBase);
effectSizesBase(2) = effectSize(meanACCBBase, meanACCWBase, stdACCBBase, stdACCWBase);
effectSizesBase(3) = effectSize(meanACCBBase, meanACCYBase, stdACCBBase, stdACCYBase);

effectSizesBase(4) = effectSize(meanACCRBase, meanACCWBase, stdACCRBase, stdACCWBase);
effectSizesBase(5) = effectSize(meanACCRBase, meanACCYBase, stdACCRBase, stdACCYBase);

effectSizesBase(6) = effectSize(meanACCYBase, meanACCWBase, stdACCYBase, stdACCWBase)

effectSizesNoBlind(1) = effectSize(meanACCBNoBlind, meanACCRNoBlind, stdACCBNoBlind, stdACCRNoBlind);
effectSizesNoBlind(2) = effectSize(meanACCBNoBlind, meanACCWNoBlind, stdACCBNoBlind, stdACCWNoBlind);
effectSizesNoBlind(3) = effectSize(meanACCBNoBlind, meanACCYNoBlind, stdACCBNoBlind, stdACCYNoBlind);

effectSizesNoBlind(4) = effectSize(meanACCRNoBlind, meanACCWNoBlind, stdACCRNoBlind, stdACCWNoBlind);
effectSizesNoBlind(5) = effectSize(meanACCRNoBlind, meanACCYNoBlind, stdACCRNoBlind, stdACCYNoBlind);

effectSizesNoBlind(6) = effectSize(meanACCYNoBlind, meanACCWNoBlind, stdACCYNoBlind, stdACCWNoBlind)

effectSizesBlind(1) = effectSize(meanACCBBlind, meanACCRBlind, stdACCBBlind, stdACCRBlind);
effectSizesBlind(2) = effectSize(meanACCBBlind, meanACCWBlind, stdACCBBlind, stdACCWBlind);
effectSizesBlind(3) = effectSize(meanACCBBlind, meanACCYBlind, stdACCBBlind, stdACCYBlind);

effectSizesBlind(4) = effectSize(meanACCRBlind, meanACCWBlind, stdACCRBlind, stdACCWBlind);
effectSizesBlind(5) = effectSize(meanACCRBlind, meanACCYBlind, stdACCRBlind, stdACCYBlind);

effectSizesBlind(6) = effectSize(meanACCYBlind, meanACCWBlind, stdACCYBlind, stdACCWBlind)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end
