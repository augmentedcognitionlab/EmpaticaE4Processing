%statistics on all subs 
% EDA Data

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

%White noBlindCS
AllAvrEDAwhitenoBlindCS = 1;
AllStdEDAwhitenoBlindCS = 1;
AllSubEDAwhitenoBlindCS = [Sub2EDAwhitenoBlindCS, Sub3EDAwhitenoBlindCS, Sub4EDAwhitenoBlindCS,...
    Sub5EDAwhitenoBlindCS, Sub6EDAwhitenoBlindCS, Sub7EDAwhitenoBlindCS, Sub8EDAwhitenoBlindCS,...
    Sub9EDAwhitenoBlindCS, Sub10EDAwhitenoBlindCS, Sub11EDAwhitenoBlindCS, Sub13EDAwhitenoBlindCS,...
    Sub14EDAwhitenoBlindCS, Sub15EDAwhitenoBlindCS, Sub16EDAwhitenoBlindCS, Sub17EDAwhitenoBlindCS,...
    Sub18EDAwhitenoBlindCS, Sub19EDAwhitenoBlindCS, Sub20EDAwhitenoBlindCS, Sub21EDAwhitenoBlindCS,...
    Sub24EDAwhitenoBlindCS, Sub25EDAwhitenoBlindCS,...
    Sub26EDAwhitenoBlindCS];

AllSubEDAwhitenoBlindCSColumn = [Sub2EDAwhitenoBlindCS; Sub3EDAwhitenoBlindCS; Sub4EDAwhitenoBlindCS;...
    Sub5EDAwhitenoBlindCS; Sub6EDAwhitenoBlindCS; Sub7EDAwhitenoBlindCS; Sub8EDAwhitenoBlindCS;...
    Sub9EDAwhitenoBlindCS; Sub10EDAwhitenoBlindCS; Sub11EDAwhitenoBlindCS; Sub13EDAwhitenoBlindCS;...
    Sub14EDAwhitenoBlindCS; Sub15EDAwhitenoBlindCS; Sub16EDAwhitenoBlindCS; Sub17EDAwhitenoBlindCS;...
    Sub18EDAwhitenoBlindCS; Sub19EDAwhitenoBlindCS; Sub20EDAwhitenoBlindCS; Sub21EDAwhitenoBlindCS;...
    Sub24EDAwhitenoBlindCS; Sub25EDAwhitenoBlindCS;...
    Sub26EDAwhitenoBlindCS];

for i=1:size(AllSubEDAwhitenoBlindCS)
AllAvrEDAwhitenoBlindCS(i) = mean(AllSubEDAwhitenoBlindCS(i,:));
AllStdEDAwhitenoBlindCS(i) = std(AllSubEDAwhitenoBlindCS(i,:));
end

%Blue noBlindCS
AllAvrEDABluenoBlindCS = 1;
AllStdEDABluenoBlindCS = 1;
AllSubEDABluenoBlindCS = [Sub2EDABluenoBlindCS, Sub3EDABluenoBlindCS, Sub4EDABluenoBlindCS,...
    Sub5EDABluenoBlindCS, Sub6EDABluenoBlindCS, Sub7EDABluenoBlindCS, Sub8EDABluenoBlindCS,...
    Sub9EDABluenoBlindCS, Sub10EDABluenoBlindCS, Sub11EDABluenoBlindCS, Sub13EDABluenoBlindCS,...
    Sub14EDABluenoBlindCS, Sub15EDABluenoBlindCS, Sub16EDABluenoBlindCS, Sub17EDABluenoBlindCS,...
    Sub18EDABluenoBlindCS, Sub19EDABluenoBlindCS, Sub20EDABluenoBlindCS, Sub21EDABluenoBlindCS,...
    Sub24EDABluenoBlindCS, Sub25EDABluenoBlindCS,...
    Sub26EDABluenoBlindCS];

AllSubEDABluenoBlindCSColumn = [Sub2EDABluenoBlindCS; Sub3EDABluenoBlindCS; Sub4EDABluenoBlindCS;...
    Sub5EDABluenoBlindCS; Sub6EDABluenoBlindCS; Sub7EDABluenoBlindCS; Sub8EDABluenoBlindCS;...
    Sub9EDABluenoBlindCS; Sub10EDABluenoBlindCS; Sub11EDABluenoBlindCS; Sub13EDABluenoBlindCS;...
    Sub14EDABluenoBlindCS; Sub15EDABluenoBlindCS; Sub16EDABluenoBlindCS; Sub17EDABluenoBlindCS;...
    Sub18EDABluenoBlindCS; Sub19EDABluenoBlindCS; Sub20EDABluenoBlindCS; Sub21EDABluenoBlindCS;...
    Sub24EDABluenoBlindCS; Sub25EDABluenoBlindCS;...
    Sub26EDABluenoBlindCS];

for i=1:size(AllSubEDABluenoBlindCS)
AllAvrEDABluenoBlindCS(i) = mean(AllSubEDABluenoBlindCS(i,:));
AllStdEDABluenoBlindCS(i) = std(AllSubEDABluenoBlindCS(i,:));
end

%Red noBlindCS
AllAvrEDARednoBlindCS = 1;
AllStdEDARednoBlindCS = 1;
AllSubEDARednoBlindCS = [Sub2EDARednoBlindCS, Sub3EDARednoBlindCS, Sub4EDARednoBlindCS,...
    Sub5EDARednoBlindCS, Sub6EDARednoBlindCS, Sub7EDARednoBlindCS, Sub8EDARednoBlindCS,...
    Sub9EDARednoBlindCS, Sub10EDARednoBlindCS, Sub11EDARednoBlindCS, Sub13EDARednoBlindCS,...
    Sub14EDARednoBlindCS, Sub15EDARednoBlindCS, Sub16EDARednoBlindCS, Sub17EDARednoBlindCS,...
    Sub18EDARednoBlindCS, Sub19EDARednoBlindCS, Sub20EDARednoBlindCS, Sub21EDARednoBlindCS,...
    Sub24EDARednoBlindCS, Sub25EDARednoBlindCS,...
    Sub26EDARednoBlindCS];

AllSubEDARednoBlindCSColumn = [Sub2EDARednoBlindCS; Sub3EDARednoBlindCS; Sub4EDARednoBlindCS;...
    Sub5EDARednoBlindCS; Sub6EDARednoBlindCS; Sub7EDARednoBlindCS; Sub8EDARednoBlindCS;...
    Sub9EDARednoBlindCS; Sub10EDARednoBlindCS; Sub11EDARednoBlindCS; Sub13EDARednoBlindCS;...
    Sub14EDARednoBlindCS; Sub15EDARednoBlindCS; Sub16EDARednoBlindCS; Sub17EDARednoBlindCS;...
    Sub18EDARednoBlindCS; Sub19EDARednoBlindCS; Sub20EDARednoBlindCS; Sub21EDARednoBlindCS;...
    Sub24EDARednoBlindCS; Sub25EDARednoBlindCS;...
    Sub26EDARednoBlindCS];

for i=1:size(AllSubEDARednoBlindCS)
AllAvrEDARednoBlindCS(i) = mean(AllSubEDARednoBlindCS(i,:));
AllStdEDARednoBlindCS(i) = std(AllSubEDARednoBlindCS(i,:));
end

%Yellow noBlindCS
AllAvrEDAYellownoBlindCS = 1;
AllStdEDAYellownoBlindCS = 1;
AllSubEDAYellownoBlindCS = [Sub2EDAYellownoBlindCS, Sub3EDAYellownoBlindCS, Sub4EDAYellownoBlindCS,...
    Sub5EDAYellownoBlindCS, Sub6EDAYellownoBlindCS, Sub7EDAYellownoBlindCS, Sub8EDAYellownoBlindCS,...
    Sub9EDAYellownoBlindCS, Sub10EDAYellownoBlindCS, Sub11EDAYellownoBlindCS, Sub13EDAYellownoBlindCS,...
    Sub14EDAYellownoBlindCS, Sub15EDAYellownoBlindCS, Sub16EDAYellownoBlindCS, Sub17EDAYellownoBlindCS,...
    Sub18EDAYellownoBlindCS, Sub19EDAYellownoBlindCS, Sub20EDAYellownoBlindCS, Sub21EDAYellownoBlindCS,...
    Sub24EDAYellownoBlindCS, Sub25EDAYellownoBlindCS,...
    Sub26EDAYellownoBlindCS];

AllSubEDAYellownoBlindCSColumn = [Sub2EDAYellownoBlindCS; Sub3EDAYellownoBlindCS; Sub4EDAYellownoBlindCS;...
    Sub5EDAYellownoBlindCS; Sub6EDAYellownoBlindCS; Sub7EDAYellownoBlindCS; Sub8EDAYellownoBlindCS;...
    Sub9EDAYellownoBlindCS; Sub10EDAYellownoBlindCS; Sub11EDAYellownoBlindCS; Sub13EDAYellownoBlindCS;...
    Sub14EDAYellownoBlindCS; Sub15EDAYellownoBlindCS; Sub16EDAYellownoBlindCS; Sub17EDAYellownoBlindCS;...
    Sub18EDAYellownoBlindCS; Sub19EDAYellownoBlindCS; Sub20EDAYellownoBlindCS; Sub21EDAYellownoBlindCS;...
    Sub24EDAYellownoBlindCS; Sub25EDAYellownoBlindCS;...
    Sub26EDAYellownoBlindCS];


for i=1:size(AllSubEDAYellownoBlindCS)
AllAvrEDAYellownoBlindCS(i) = mean(AllSubEDAYellownoBlindCS(i,:));
AllStdEDAYellownoBlindCS(i) = std(AllSubEDAYellownoBlindCS(i,:));
[H, AllTtestEDAYvsBnoBlindCS(i)] = ttest2(AllSubEDAYellownoBlindCS(i,:),AllSubEDABluenoBlindCS(i,:));
[H, AllTtestEDAYvsRnoBlindCS(i)] = ttest2(AllSubEDAYellownoBlindCS(i,:),AllSubEDARednoBlindCS(i,:));
[H, AllTtestEDAYvsWnoBlindCS(i)] = ttest2(AllSubEDAYellownoBlindCS(i,:),AllSubEDAwhitenoBlindCS(i,:));

[H, AllTtestEDABvsWnoBlindCS(i)] = ttest2(AllSubEDABluenoBlindCS(i,:),AllSubEDAwhitenoBlindCS(i,:));
[H, AllTtestEDABvsRnoBlindCS(i)] = ttest2(AllSubEDABluenoBlindCS(i,:),AllSubEDARednoBlindCS(i,:));

[H, AllTtestEDARvsWnoBlindCS(i)] = ttest2(AllSubEDARednoBlindCS(i,:),AllSubEDAwhitenoBlindCS(i,:));
end
figure
plot(AllTtestEDAYvsBnoBlindCS)
hold on
plot(AllTtestEDAYvsRnoBlindCS)
hold on 
plot(AllTtestEDAYvsWnoBlindCS)
hold on
plot(AllTtestEDABvsWnoBlindCS)
hold on 
plot(AllTtestEDABvsRnoBlindCS)
hold on 
plot(AllTtestEDARvsWnoBlindCS)

%All Average noBlindCS together. 
figure 
plot(AllAvrEDABluenoBlindCS)
hold on 
plot(AllAvrEDARednoBlindCS)
hold on 
plot(AllAvrEDAYellownoBlindCS)
hold on 
plot(AllAvrEDAwhitenoBlindCS)
hold on

%white BlindCS
AllAvrEDAwhiteBlindCS = 1;
AllStdEDAwhiteBlindCS = 1;
AllSubEDAwhiteBlindCS = [Sub2EDAwhiteBlindCS, Sub3EDAwhiteBlindCS, Sub4EDAwhiteBlindCS,...
    Sub5EDAwhiteBlindCS, Sub6EDAwhiteBlindCS, Sub7EDAwhiteBlindCS, Sub8EDAwhiteBlindCS,...
    Sub9EDAwhiteBlindCS, Sub10EDAwhiteBlindCS, Sub11EDAwhiteBlindCS, Sub13EDAwhiteBlindCS,...
    Sub14EDAwhiteBlindCS, Sub15EDAwhiteBlindCS, Sub16EDAwhiteBlindCS, Sub17EDAwhiteBlindCS,...
    Sub18EDAwhiteBlindCS, Sub19EDAwhiteBlindCS, Sub20EDAwhiteBlindCS, Sub21EDAwhiteBlindCS,...
    Sub24EDAwhiteBlindCS, Sub25EDAwhiteBlindCS,...
    Sub26EDAwhiteBlindCS];

AllSubEDAwhiteBlindCSColumn = [Sub2EDAwhiteBlindCS; Sub3EDAwhiteBlindCS; Sub4EDAwhiteBlindCS;...
    Sub5EDAwhiteBlindCS; Sub6EDAwhiteBlindCS; Sub7EDAwhiteBlindCS; Sub8EDAwhiteBlindCS;...
    Sub9EDAwhiteBlindCS; Sub10EDAwhiteBlindCS; Sub11EDAwhiteBlindCS; Sub13EDAwhiteBlindCS;...
    Sub14EDAwhiteBlindCS; Sub15EDAwhiteBlindCS; Sub16EDAwhiteBlindCS; Sub17EDAwhiteBlindCS;...
    Sub18EDAwhiteBlindCS; Sub19EDAwhiteBlindCS; Sub20EDAwhiteBlindCS; Sub21EDAwhiteBlindCS;...
    Sub24EDAwhiteBlindCS; Sub25EDAwhiteBlindCS;...
    Sub26EDAwhiteBlindCS];

for i=1:size(AllSubEDAwhiteBlindCS)
AllAvrEDAwhiteBlindCS(i) = mean(AllSubEDAwhiteBlindCS(i,:));
AllStdEDAwhiteBlindCS(i) = std(AllSubEDAwhiteBlindCS(i,:));
end

%Blue BlindCS
AllAvrEDABlueBlindCS = 1;
AllStdEDABlueBlindCS = 1;
AllSubEDABlueBlindCS = [Sub2EDABlueBlindCS, Sub3EDABlueBlindCS, Sub4EDABlueBlindCS,...
    Sub5EDABlueBlindCS, Sub6EDABlueBlindCS, Sub7EDABlueBlindCS, Sub8EDABlueBlindCS,...
    Sub9EDABlueBlindCS, Sub10EDABlueBlindCS, Sub11EDABlueBlindCS, Sub13EDABlueBlindCS,...
    Sub14EDABlueBlindCS, Sub15EDABlueBlindCS, Sub16EDABlueBlindCS, Sub17EDABlueBlindCS,...
    Sub18EDABlueBlindCS, Sub19EDABlueBlindCS, Sub20EDABlueBlindCS, Sub21EDABlueBlindCS,...
    Sub24EDABlueBlindCS, Sub25EDABlueBlindCS,...
    Sub26EDABlueBlindCS];

AllSubEDABlueBlindCSColumn = [Sub2EDABlueBlindCS; Sub3EDABlueBlindCS; Sub4EDABlueBlindCS;...
    Sub5EDABlueBlindCS; Sub6EDABlueBlindCS; Sub7EDABlueBlindCS; Sub8EDABlueBlindCS;...
    Sub9EDABlueBlindCS; Sub10EDABlueBlindCS; Sub11EDABlueBlindCS; Sub13EDABlueBlindCS;...
    Sub14EDABlueBlindCS; Sub15EDABlueBlindCS; Sub16EDABlueBlindCS; Sub17EDABlueBlindCS;...
    Sub18EDABlueBlindCS; Sub19EDABlueBlindCS; Sub20EDABlueBlindCS; Sub21EDABlueBlindCS;...
    Sub24EDABlueBlindCS; Sub25EDABlueBlindCS;...
    Sub26EDABlueBlindCS];

for i=1:size(AllSubEDABlueBlindCS)
AllAvrEDABlueBlindCS(i) = mean(AllSubEDABlueBlindCS(i,:));
AllStdEDABlueBlindCS(i) = std(AllSubEDABlueBlindCS(i,:));
end

%Red BlindCS
AllAvrEDARedBlindCS = 1;
AllStdEDARedBlindCS = 1;
AllSubEDARedBlindCS = [Sub2EDARedBlindCS, Sub3EDARedBlindCS, Sub4EDARedBlindCS,...
    Sub5EDARedBlindCS, Sub6EDARedBlindCS, Sub7EDARedBlindCS, Sub8EDARedBlindCS,...
    Sub9EDARedBlindCS, Sub10EDARedBlindCS, Sub11EDARedBlindCS, Sub13EDARedBlindCS,...
    Sub14EDARedBlindCS, Sub15EDARedBlindCS, Sub16EDARedBlindCS, Sub17EDARedBlindCS,...
    Sub18EDARedBlindCS, Sub19EDARedBlindCS, Sub20EDARedBlindCS, Sub21EDARedBlindCS,...
    Sub24EDARedBlindCS, Sub25EDARedBlindCS,...
    Sub26EDARedBlindCS];

AllSubEDARedBlindCSColumn = [Sub2EDARedBlindCS; Sub3EDARedBlindCS; Sub4EDARedBlindCS;...
    Sub5EDARedBlindCS; Sub6EDARedBlindCS; Sub7EDARedBlindCS; Sub8EDARedBlindCS;...
    Sub9EDARedBlindCS; Sub10EDARedBlindCS; Sub11EDARedBlindCS; Sub13EDARedBlindCS;...
    Sub14EDARedBlindCS; Sub15EDARedBlindCS; Sub16EDARedBlindCS; Sub17EDARedBlindCS;...
    Sub18EDARedBlindCS; Sub19EDARedBlindCS; Sub20EDARedBlindCS; Sub21EDARedBlindCS;...
    Sub24EDARedBlindCS; Sub25EDARedBlindCS;...
    Sub26EDARedBlindCS];

for i=1:size(AllSubEDARedBlindCS)
AllAvrEDARedBlindCS(i) = mean(AllSubEDARedBlindCS(i,:));
AllStdEDARedBlindCS(i) = std(AllSubEDARedBlindCS(i,:));
end

%Yellow BlindCS
AllAvrEDAYellowBlindCS = 1;
AllStdEDAYellowBlindCS = 1;
AllTtestEDAYvsBBlindCS = 1;
AllSubEDAYellowBlindCS = [Sub2EDAYellowBlindCS, Sub3EDAYellowBlindCS, Sub4EDAYellowBlindCS,...
    Sub5EDAYellowBlindCS, Sub6EDAYellowBlindCS, Sub7EDAYellowBlindCS, Sub8EDAYellowBlindCS,...
    Sub9EDAYellowBlindCS, Sub10EDAYellowBlindCS, Sub11EDAYellowBlindCS, Sub13EDAYellowBlindCS,...
    Sub14EDAYellowBlindCS, Sub15EDAYellowBlindCS, Sub16EDAYellowBlindCS, Sub17EDAYellowBlindCS,...
    Sub18EDAYellowBlindCS, Sub19EDAYellowBlindCS, Sub20EDAYellowBlindCS, Sub21EDAYellowBlindCS,...
    Sub24EDAYellowBlindCS, Sub25EDAYellowBlindCS,...
    Sub26EDAYellowBlindCS];

AllSubEDAYellowBlindCSColumn = [Sub2EDAYellowBlindCS; Sub3EDAYellowBlindCS; Sub4EDAYellowBlindCS;...
    Sub5EDAYellowBlindCS; Sub6EDAYellowBlindCS; Sub7EDAYellowBlindCS; Sub8EDAYellowBlindCS;...
    Sub9EDAYellowBlindCS; Sub10EDAYellowBlindCS; Sub11EDAYellowBlindCS; Sub13EDAYellowBlindCS;...
    Sub14EDAYellowBlindCS; Sub15EDAYellowBlindCS; Sub16EDAYellowBlindCS; Sub17EDAYellowBlindCS;...
    Sub18EDAYellowBlindCS; Sub19EDAYellowBlindCS; Sub20EDAYellowBlindCS; Sub21EDAYellowBlindCS;...
    Sub24EDAYellowBlindCS; Sub25EDAYellowBlindCS;...
    Sub26EDAYellowBlindCS];

for i=1:size(AllSubEDAYellowBlindCS)
AllAvrEDAYellowBlindCS(i) = mean(AllSubEDAYellowBlindCS(i,:));
AllStdEDAYellowBlindCS(i) = std(AllSubEDAYellowBlindCS(i,:));
[H, AllTtestEDAYvsBBlindCS(i)] = ttest2(AllSubEDAYellowBlindCS(i,:),AllSubEDABlueBlindCS(i,:));
[H, AllTtestEDAYvsRBlindCS(i)] = ttest2(AllSubEDAYellowBlindCS(i,:),AllSubEDARedBlindCS(i,:));
[H, AllTtestEDAYvsWBlindCS(i)] = ttest2(AllSubEDAYellowBlindCS(i,:),AllSubEDAwhiteBlindCS(i,:));

[H, AllTtestEDABvsWBlindCS(i)] = ttest2(AllSubEDABlueBlindCS(i,:),AllSubEDAwhiteBlindCS(i,:));
[H, AllTtestEDABvsRBlindCS(i)] = ttest2(AllSubEDABlueBlindCS(i,:),AllSubEDARedBlindCS(i,:));

[H, AllTtestEDARvsWBlindCS(i)] = ttest2(AllSubEDARedBlindCS(i,:),AllSubEDAwhiteBlindCS(i,:));
end
figure
plot(AllTtestEDAYvsBBlindCS)
hold on
plot(AllTtestEDAYvsRBlindCS)
hold on 
plot(AllTtestEDAYvsWBlindCS)
hold on
plot(AllTtestEDABvsWBlindCS)
hold on 
plot(AllTtestEDABvsRBlindCS)
hold on 
plot(AllTtestEDARvsWBlindCS)

%All Average BlindCS together. 
figure 
plot(AllAvrEDABlueBlindCS)
hold on 
plot(AllAvrEDARedBlindCS)
hold on 
plot(AllAvrEDAYellowBlindCS)
hold on 
plot(AllAvrEDAwhiteBlindCS)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaEDAReadyBase = [AllSubEDANormWhiteBaseColumn,AllSubEDANormBlueBaseColumn, AllSubEDANormRedBaseColumn, AllSubEDANormYellowBaseColumn];
anova1(anovaEDAReadyBase)

anovaEDAReadynoBlindCSCS = [AllSubEDAwhitenoBlindCSColumn,AllSubEDABluenoBlindCSColumn, AllSubEDARednoBlindCSColumn, AllSubEDAYellownoBlindCSColumn];
anova1(anovaEDAReadynoBlindCSCS)

anovaEDAReadyBlindCSCS = [AllSubEDAwhiteBlindCSColumn,AllSubEDABlueBlindCSColumn, AllSubEDARedBlindCSColumn, AllSubEDAYellowBlindCSColumn];
anova1(anovaEDAReadyBlindCSCS)

%effect size
meanEDAWBase = mean(AllSubEDANormWhiteBaseColumn);
meanEDAWBlindCS = mean(AllSubEDAwhiteBlindCSColumn);
meanEDAWnoBlindCS = mean(AllSubEDAwhitenoBlindCSColumn);

stdEDAWBase = std(AllSubEDANormWhiteBaseColumn);
stdEDAWBlindCS = std(AllSubEDAwhiteBlindCSColumn);
stdEDAWnoBlindCS = std(AllSubEDAwhitenoBlindCSColumn);

meanEDABBase = mean(AllSubEDANormBlueBaseColumn);
meanEDABBlindCS = mean(AllSubEDABlueBlindCSColumn);
meanEDABnoBlindCS = mean(AllSubEDABluenoBlindCSColumn);

stdEDABBase = std(AllSubEDANormBlueBaseColumn);
stdEDABBlindCS = std(AllSubEDABlueBlindCSColumn);
stdEDABnoBlindCS = std(AllSubEDABluenoBlindCSColumn);

meanEDARBase = mean(AllSubEDANormRedBaseColumn);
meanEDARBlindCS = mean(AllSubEDARedBlindCSColumn);
meanEDARnoBlindCS = mean(AllSubEDARednoBlindCSColumn);

stdEDARBase = std(AllSubEDANormRedBaseColumn);
stdEDARBlindCS = std(AllSubEDARedBlindCSColumn);
stdEDARnoBlindCS = std(AllSubEDARednoBlindCSColumn);

meanEDAYBase = mean(AllSubEDANormYellowBaseColumn);
meanEDAYBlindCS = mean(AllSubEDAYellowBlindCSColumn);
meanEDAYnoBlindCS = mean(AllSubEDAYellownoBlindCSColumn);

stdEDAYBase = std(AllSubEDANormYellowBaseColumn);
stdEDAYBlindCS = std(AllSubEDAYellowBlindCSColumn);
stdEDAYnoBlindCS = std(AllSubEDAYellownoBlindCSColumn);

effectSizesBase(1) = effectSize(meanEDABBase, meanEDARBase, stdEDABBase, stdEDARBase);
effectSizesBase(2) = effectSize(meanEDABBase, meanEDAWBase, stdEDABBase, stdEDAWBase);
effectSizesBase(3) = effectSize(meanEDABBase, meanEDAYBase, stdEDABBase, stdEDAYBase);

effectSizesBase(4) = effectSize(meanEDARBase, meanEDAWBase, stdEDARBase, stdEDAWBase);
effectSizesBase(5) = effectSize(meanEDARBase, meanEDAYBase, stdEDARBase, stdEDAYBase);

effectSizesBase(6) = effectSize(meanEDAYBase, meanEDAWBase, stdEDAYBase, stdEDAWBase)

effectSizesnoBlindCS(1) = effectSize(meanEDABnoBlindCS, meanEDARnoBlindCS, stdEDABnoBlindCS, stdEDARnoBlindCS);
effectSizesnoBlindCS(2) = effectSize(meanEDABnoBlindCS, meanEDAWnoBlindCS, stdEDABnoBlindCS, stdEDAWnoBlindCS);
effectSizesnoBlindCS(3) = effectSize(meanEDABnoBlindCS, meanEDAYnoBlindCS, stdEDABnoBlindCS, stdEDAYnoBlindCS);

effectSizesnoBlindCS(4) = effectSize(meanEDARnoBlindCS, meanEDAWnoBlindCS, stdEDARnoBlindCS, stdEDAWnoBlindCS);
effectSizesnoBlindCS(5) = effectSize(meanEDARnoBlindCS, meanEDAYnoBlindCS, stdEDARnoBlindCS, stdEDAYnoBlindCS);

effectSizesnoBlindCS(6) = effectSize(meanEDAYnoBlindCS, meanEDAWnoBlindCS, stdEDAYnoBlindCS, stdEDAWnoBlindCS)

effectSizesBlindCS(1) = effectSize(meanEDABBlindCS, meanEDARBlindCS, stdEDABBlindCS, stdEDARBlindCS);
effectSizesBlindCS(2) = effectSize(meanEDABBlindCS, meanEDAWBlindCS, stdEDABBlindCS, stdEDAWBlindCS);
effectSizesBlindCS(3) = effectSize(meanEDABBlindCS, meanEDAYBlindCS, stdEDABBlindCS, stdEDAYBlindCS);

effectSizesBlindCS(4) = effectSize(meanEDARBlindCS, meanEDAWBlindCS, stdEDARBlindCS, stdEDAWBlindCS);
effectSizesBlindCS(5) = effectSize(meanEDARBlindCS, meanEDAYBlindCS, stdEDARBlindCS, stdEDAYBlindCS);

effectSizesBlindCS(6) = effectSize(meanEDAYBlindCS, meanEDAWBlindCS, stdEDAYBlindCS, stdEDAWBlindCS)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end