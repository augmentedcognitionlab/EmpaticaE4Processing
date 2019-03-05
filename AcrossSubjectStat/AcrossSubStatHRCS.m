%statistics on all subs 
% HR Data

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
AllAvrHRNormWhiteBase = 1;
AllStdHRNormWhiteBase = 1;
AllSubHRNormWhiteBase = [Sub2normHRWhiteBase, Sub3normHRWhiteBase, Sub4normHRWhiteBase,...
    Sub5normHRWhiteBase, Sub6normHRWhiteBase, Sub7normHRWhiteBase, Sub8normHRWhiteBase,...
    Sub9normHRWhiteBase, Sub10normHRWhiteBase, Sub11normHRWhiteBase, Sub13normHRWhiteBase,...
    Sub14normHRWhiteBase, Sub15normHRWhiteBase, Sub16normHRWhiteBase, Sub17normHRWhiteBase,...
    Sub18normHRWhiteBase, Sub19normHRWhiteBase, Sub20normHRWhiteBase, Sub21normHRWhiteBase,...
    Sub24normHRWhiteBase, Sub25normHRWhiteBase,...
    Sub26normHRWhiteBase];

AllSubHRNormWhiteBaseColumn = [Sub2normHRWhiteBase; Sub3normHRWhiteBase; Sub4normHRWhiteBase;...
    Sub5normHRWhiteBase; Sub6normHRWhiteBase; Sub7normHRWhiteBase; Sub8normHRWhiteBase;...
    Sub9normHRWhiteBase; Sub10normHRWhiteBase; Sub11normHRWhiteBase; Sub13normHRWhiteBase;...
    Sub14normHRWhiteBase; Sub15normHRWhiteBase; Sub16normHRWhiteBase; Sub17normHRWhiteBase;...
    Sub18normHRWhiteBase; Sub19normHRWhiteBase; Sub20normHRWhiteBase; Sub21normHRWhiteBase;...
    Sub24normHRWhiteBase; Sub25normHRWhiteBase;...
    Sub26normHRWhiteBase];


for i=1:size(AllSubHRNormWhiteBase)
AllAvrHRNormWhiteBase(i) = mean(AllSubHRNormWhiteBase(i,:));
AllStdHRNormWhiteBase(i) = std(AllSubHRNormWhiteBase(i,:));
end
figure 
plot(AllAvrHRNormWhiteBase)
hold on 
plot(AllStdHRNormWhiteBase)

%Blue Baseline 
AllAvrHRNormBlueBase = 1;
AllStdHRNormBlueBase = 1;
AllSubHRNormBlueBase = [Sub2normHRBlueBase, Sub3normHRBlueBase, Sub4normHRBlueBase,...
    Sub5normHRBlueBase, Sub6normHRBlueBase, Sub7normHRBlueBase, Sub8normHRBlueBase,...
    Sub9normHRBlueBase, Sub10normHRBlueBase, Sub11normHRBlueBase, Sub13normHRBlueBase,...
    Sub14normHRBlueBase, Sub15normHRBlueBase, Sub16normHRBlueBase, Sub17normHRBlueBase,...
    Sub18normHRBlueBase, Sub19normHRBlueBase, Sub20normHRBlueBase, Sub21normHRBlueBase,...
    Sub24normHRBlueBase, Sub25normHRBlueBase,...
    Sub26normHRBlueBase];

AllSubHRNormBlueBaseColumn = [Sub2normHRBlueBase; Sub3normHRBlueBase; Sub4normHRBlueBase;...
    Sub5normHRBlueBase; Sub6normHRBlueBase; Sub7normHRBlueBase; Sub8normHRBlueBase;...
    Sub9normHRBlueBase; Sub10normHRBlueBase; Sub11normHRBlueBase; Sub13normHRBlueBase;...
    Sub14normHRBlueBase; Sub15normHRBlueBase; Sub16normHRBlueBase; Sub17normHRBlueBase;...
    Sub18normHRBlueBase; Sub19normHRBlueBase; Sub20normHRBlueBase; Sub21normHRBlueBase;...
    Sub24normHRBlueBase; Sub25normHRBlueBase;...
    Sub26normHRBlueBase];


for i=1:size(AllSubHRNormBlueBase)
AllAvrHRNormBlueBase(i) = mean(AllSubHRNormBlueBase(i,:));
AllStdHRNormBlueBase(i) = std(AllSubHRNormBlueBase(i,:));
end

%Red Baseline 
AllAvrHRNormRedBase = 1;
AllStdHRNormRedBase = 1;
AllSubHRNormRedBase = [Sub2normHRRedBase, Sub3normHRRedBase, Sub4normHRRedBase,...
    Sub5normHRRedBase, Sub6normHRRedBase, Sub7normHRRedBase, Sub8normHRRedBase,...
    Sub9normHRRedBase, Sub10normHRRedBase, Sub11normHRRedBase, Sub13normHRRedBase,...
    Sub14normHRRedBase, Sub15normHRRedBase, Sub16normHRRedBase, Sub17normHRRedBase,...
    Sub18normHRRedBase, Sub19normHRRedBase, Sub20normHRRedBase, Sub21normHRRedBase,...
    Sub24normHRRedBase, Sub25normHRRedBase,...
    Sub26normHRRedBase];

AllSubHRNormRedBaseColumn = [Sub2normHRRedBase; Sub3normHRRedBase; Sub4normHRRedBase;...
    Sub5normHRRedBase; Sub6normHRRedBase; Sub7normHRRedBase; Sub8normHRRedBase;...
    Sub9normHRRedBase; Sub10normHRRedBase; Sub11normHRRedBase; Sub13normHRRedBase;...
    Sub14normHRRedBase; Sub15normHRRedBase; Sub16normHRRedBase; Sub17normHRRedBase;...
    Sub18normHRRedBase; Sub19normHRRedBase; Sub20normHRRedBase; Sub21normHRRedBase;...
    Sub24normHRRedBase; Sub25normHRRedBase;...
    Sub26normHRRedBase];


for i=1:size(AllSubHRNormRedBase)
AllAvrHRNormRedBase(i) = mean(AllSubHRNormRedBase(i,:));
AllStdHRNormRedBase(i) = std(AllSubHRNormRedBase(i,:));
end

%Yellow Baseline 
AllAvrHRNormYellowBase = 1;
AllStdHRNormYellowBase = 1;
AllSubHRNormYellowBase = [Sub2normHRYellowBase, Sub3normHRYellowBase, Sub4normHRYellowBase,...
    Sub5normHRYellowBase, Sub6normHRYellowBase, Sub7normHRYellowBase, Sub8normHRYellowBase,...
    Sub9normHRYellowBase, Sub10normHRYellowBase, Sub11normHRYellowBase, Sub13normHRYellowBase,...
    Sub14normHRYellowBase, Sub15normHRYellowBase, Sub16normHRYellowBase, Sub17normHRYellowBase,...
    Sub18normHRYellowBase, Sub19normHRYellowBase, Sub20normHRYellowBase, Sub21normHRYellowBase,...
    Sub24normHRYellowBase, Sub25normHRYellowBase,...
    Sub26normHRYellowBase];

AllSubHRNormYellowBaseColumn = [Sub2normHRYellowBase; Sub3normHRYellowBase; Sub4normHRYellowBase;...
    Sub5normHRYellowBase; Sub6normHRYellowBase; Sub7normHRYellowBase; Sub8normHRYellowBase;...
    Sub9normHRYellowBase; Sub10normHRYellowBase; Sub11normHRYellowBase; Sub13normHRYellowBase;...
    Sub14normHRYellowBase; Sub15normHRYellowBase; Sub16normHRYellowBase; Sub17normHRYellowBase;...
    Sub18normHRYellowBase; Sub19normHRYellowBase; Sub20normHRYellowBase; Sub21normHRYellowBase;...
    Sub24normHRYellowBase; Sub25normHRYellowBase;...
    Sub26normHRYellowBase];

for i=1:size(AllSubHRNormYellowBase)
AllAvrHRNormYellowBase(i) = mean(AllSubHRNormYellowBase(i,:));
AllStdHRNormYellowBase(i) = std(AllSubHRNormYellowBase(i,:));
[H, AllTtestHRNormYvsBBase(i)] = ttest2(AllSubHRNormYellowBase(i,:),AllSubHRNormBlueBase(i,:));
[H, AllTtestHRNormYvsRBase(i)] = ttest2(AllSubHRNormYellowBase(i,:),AllSubHRNormRedBase(i,:));
[H, AllTtestHRNormYvsWBase(i)] = ttest2(AllSubHRNormYellowBase(i,:),AllSubHRNormWhiteBase(i,:));

[H, AllTtestHRNormBvsWBase(i)] = ttest2(AllSubHRNormBlueBase(i,:),AllSubHRNormWhiteBase(i,:));
[H, AllTtestHRNormBvsRBase(i)] = ttest2(AllSubHRNormBlueBase(i,:),AllSubHRNormRedBase(i,:));

[H, AllTtestHRNormRvsWBase(i)] = ttest2(AllSubHRNormRedBase(i,:),AllSubHRNormWhiteBase(i,:));
end
figure
plot(AllTtestHRNormYvsBBase)
hold on
plot(AllTtestHRNormYvsRBase)
hold on 
plot(AllTtestHRNormYvsWBase)
hold on
plot(AllTtestHRNormBvsWBase)
hold on 
plot(AllTtestHRNormBvsRBase)
hold on 
plot(AllTtestHRNormRvsWBase)


%All Average Baselines together. 
figure 
plot(AllAvrHRNormBlueBase)
hold on 
plot(AllAvrHRNormRedBase)
hold on 
plot(AllAvrHRNormYellowBase)
hold on 
plot(AllAvrHRNormWhiteBase)
hold on 

%White noBlindCS
AllAvrHRwhitenoBlindCS = 1;
AllStdHRwhitenoBlindCS = 1;
AllSubHRwhitenoBlindCS = [Sub2HRwhitenoBlindCS, Sub3HRwhitenoBlindCS, Sub4HRwhitenoBlindCS,...
    Sub5HRwhitenoBlindCS, Sub6HRwhitenoBlindCS, Sub7HRwhitenoBlindCS, Sub8HRwhitenoBlindCS,...
    Sub9HRwhitenoBlindCS, Sub10HRwhitenoBlindCS, Sub11HRwhitenoBlindCS, Sub13HRwhitenoBlindCS,...
    Sub14HRwhitenoBlindCS, Sub15HRwhitenoBlindCS, Sub16HRwhitenoBlindCS, Sub17HRwhitenoBlindCS,...
    Sub18HRwhitenoBlindCS, Sub19HRwhitenoBlindCS, Sub20HRwhitenoBlindCS, Sub21HRwhitenoBlindCS,...
    Sub24HRwhitenoBlindCS, Sub25HRwhitenoBlindCS,...
    Sub26HRwhitenoBlindCS];

AllSubHRwhitenoBlindCSColumn = [Sub2HRwhitenoBlindCS; Sub3HRwhitenoBlindCS; Sub4HRwhitenoBlindCS;...
    Sub5HRwhitenoBlindCS; Sub6HRwhitenoBlindCS; Sub7HRwhitenoBlindCS; Sub8HRwhitenoBlindCS;...
    Sub9HRwhitenoBlindCS; Sub10HRwhitenoBlindCS; Sub11HRwhitenoBlindCS; Sub13HRwhitenoBlindCS;...
    Sub14HRwhitenoBlindCS; Sub15HRwhitenoBlindCS; Sub16HRwhitenoBlindCS; Sub17HRwhitenoBlindCS;...
    Sub18HRwhitenoBlindCS; Sub19HRwhitenoBlindCS; Sub20HRwhitenoBlindCS; Sub21HRwhitenoBlindCS;...
    Sub24HRwhitenoBlindCS; Sub25HRwhitenoBlindCS;...
    Sub26HRwhitenoBlindCS];

for i=1:size(AllSubHRwhitenoBlindCS)
AllAvrHRwhitenoBlindCS(i) = mean(AllSubHRwhitenoBlindCS(i,:));
AllStdHRwhitenoBlindCS(i) = std(AllSubHRwhitenoBlindCS(i,:));
end

%Blue noBlindCS
AllAvrHRBluenoBlindCS = 1;
AllStdHRBluenoBlindCS = 1;
AllSubHRBluenoBlindCS = [Sub2HRBluenoBlindCS, Sub3HRBluenoBlindCS, Sub4HRBluenoBlindCS,...
    Sub5HRBluenoBlindCS, Sub6HRBluenoBlindCS, Sub7HRBluenoBlindCS, Sub8HRBluenoBlindCS,...
    Sub9HRBluenoBlindCS, Sub10HRBluenoBlindCS, Sub11HRBluenoBlindCS, Sub13HRBluenoBlindCS,...
    Sub14HRBluenoBlindCS, Sub15HRBluenoBlindCS, Sub16HRBluenoBlindCS, Sub17HRBluenoBlindCS,...
    Sub18HRBluenoBlindCS, Sub19HRBluenoBlindCS, Sub20HRBluenoBlindCS, Sub21HRBluenoBlindCS,...
    Sub24HRBluenoBlindCS, Sub25HRBluenoBlindCS,...
    Sub26HRBluenoBlindCS];

AllSubHRBluenoBlindCSColumn = [Sub2HRBluenoBlindCS; Sub3HRBluenoBlindCS; Sub4HRBluenoBlindCS;...
    Sub5HRBluenoBlindCS; Sub6HRBluenoBlindCS; Sub7HRBluenoBlindCS; Sub8HRBluenoBlindCS;...
    Sub9HRBluenoBlindCS; Sub10HRBluenoBlindCS; Sub11HRBluenoBlindCS; Sub13HRBluenoBlindCS;...
    Sub14HRBluenoBlindCS; Sub15HRBluenoBlindCS; Sub16HRBluenoBlindCS; Sub17HRBluenoBlindCS;...
    Sub18HRBluenoBlindCS; Sub19HRBluenoBlindCS; Sub20HRBluenoBlindCS; Sub21HRBluenoBlindCS;...
    Sub24HRBluenoBlindCS; Sub25HRBluenoBlindCS;...
    Sub26HRBluenoBlindCS];

for i=1:size(AllSubHRBluenoBlindCS)
AllAvrHRBluenoBlindCS(i) = mean(AllSubHRBluenoBlindCS(i,:));
AllStdHRBluenoBlindCS(i) = std(AllSubHRBluenoBlindCS(i,:));
end

%Red noBlindCS
AllAvrHRRednoBlindCS = 1;
AllStdHRRednoBlindCS = 1;
AllSubHRRednoBlindCS = [Sub2HRRednoBlindCS, Sub3HRRednoBlindCS, Sub4HRRednoBlindCS,...
    Sub5HRRednoBlindCS, Sub6HRRednoBlindCS, Sub7HRRednoBlindCS, Sub8HRRednoBlindCS,...
    Sub9HRRednoBlindCS, Sub10HRRednoBlindCS, Sub11HRRednoBlindCS, Sub13HRRednoBlindCS,...
    Sub14HRRednoBlindCS, Sub15HRRednoBlindCS, Sub16HRRednoBlindCS, Sub17HRRednoBlindCS,...
    Sub18HRRednoBlindCS, Sub19HRRednoBlindCS, Sub20HRRednoBlindCS, Sub21HRRednoBlindCS,...
    Sub24HRRednoBlindCS, Sub25HRRednoBlindCS,...
    Sub26HRRednoBlindCS];

AllSubHRRednoBlindCSColumn = [Sub2HRRednoBlindCS; Sub3HRRednoBlindCS; Sub4HRRednoBlindCS;...
    Sub5HRRednoBlindCS; Sub6HRRednoBlindCS; Sub7HRRednoBlindCS; Sub8HRRednoBlindCS;...
    Sub9HRRednoBlindCS; Sub10HRRednoBlindCS; Sub11HRRednoBlindCS; Sub13HRRednoBlindCS;...
    Sub14HRRednoBlindCS; Sub15HRRednoBlindCS; Sub16HRRednoBlindCS; Sub17HRRednoBlindCS;...
    Sub18HRRednoBlindCS; Sub19HRRednoBlindCS; Sub20HRRednoBlindCS; Sub21HRRednoBlindCS;...
    Sub24HRRednoBlindCS; Sub25HRRednoBlindCS;...
    Sub26HRRednoBlindCS];

for i=1:size(AllSubHRRednoBlindCS)
AllAvrHRRednoBlindCS(i) = mean(AllSubHRRednoBlindCS(i,:));
AllStdHRRednoBlindCS(i) = std(AllSubHRRednoBlindCS(i,:));
end

%Yellow noBlindCS
AllAvrHRYellownoBlindCS = 1;
AllStdHRYellownoBlindCS = 1;
AllSubHRYellownoBlindCS = [Sub2HRYellownoBlindCS, Sub3HRYellownoBlindCS, Sub4HRYellownoBlindCS,...
    Sub5HRYellownoBlindCS, Sub6HRYellownoBlindCS, Sub7HRYellownoBlindCS, Sub8HRYellownoBlindCS,...
    Sub9HRYellownoBlindCS, Sub10HRYellownoBlindCS, Sub11HRYellownoBlindCS, Sub13HRYellownoBlindCS,...
    Sub14HRYellownoBlindCS, Sub15HRYellownoBlindCS, Sub16HRYellownoBlindCS, Sub17HRYellownoBlindCS,...
    Sub18HRYellownoBlindCS, Sub19HRYellownoBlindCS, Sub20HRYellownoBlindCS, Sub21HRYellownoBlindCS,...
    Sub24HRYellownoBlindCS, Sub25HRYellownoBlindCS,...
    Sub26HRYellownoBlindCS];

AllSubHRYellownoBlindCSColumn = [Sub2HRYellownoBlindCS; Sub3HRYellownoBlindCS; Sub4HRYellownoBlindCS;...
    Sub5HRYellownoBlindCS; Sub6HRYellownoBlindCS; Sub7HRYellownoBlindCS; Sub8HRYellownoBlindCS;...
    Sub9HRYellownoBlindCS; Sub10HRYellownoBlindCS; Sub11HRYellownoBlindCS; Sub13HRYellownoBlindCS;...
    Sub14HRYellownoBlindCS; Sub15HRYellownoBlindCS; Sub16HRYellownoBlindCS; Sub17HRYellownoBlindCS;...
    Sub18HRYellownoBlindCS; Sub19HRYellownoBlindCS; Sub20HRYellownoBlindCS; Sub21HRYellownoBlindCS;...
    Sub24HRYellownoBlindCS; Sub25HRYellownoBlindCS;...
    Sub26HRYellownoBlindCS];


for i=1:size(AllSubHRYellownoBlindCS)
AllAvrHRYellownoBlindCS(i) = mean(AllSubHRYellownoBlindCS(i,:));
AllStdHRYellownoBlindCS(i) = std(AllSubHRYellownoBlindCS(i,:));
[H, AllTtestHRYvsBnoBlindCS(i)] = ttest2(AllSubHRYellownoBlindCS(i,:),AllSubHRBluenoBlindCS(i,:));
[H, AllTtestHRYvsRnoBlindCS(i)] = ttest2(AllSubHRYellownoBlindCS(i,:),AllSubHRRednoBlindCS(i,:));
[H, AllTtestHRYvsWnoBlindCS(i)] = ttest2(AllSubHRYellownoBlindCS(i,:),AllSubHRwhitenoBlindCS(i,:));

[H, AllTtestHRBvsWnoBlindCS(i)] = ttest2(AllSubHRBluenoBlindCS(i,:),AllSubHRwhitenoBlindCS(i,:));
[H, AllTtestHRBvsRnoBlindCS(i)] = ttest2(AllSubHRBluenoBlindCS(i,:),AllSubHRRednoBlindCS(i,:));

[H, AllTtestHRRvsWnoBlindCS(i)] = ttest2(AllSubHRRednoBlindCS(i,:),AllSubHRwhitenoBlindCS(i,:));
end
figure
plot(AllTtestHRYvsBnoBlindCS)
hold on
plot(AllTtestHRYvsRnoBlindCS)
hold on 
plot(AllTtestHRYvsWnoBlindCS)
hold on
plot(AllTtestHRBvsWnoBlindCS)
hold on 
plot(AllTtestHRBvsRnoBlindCS)
hold on 
plot(AllTtestHRRvsWnoBlindCS)

%All Average noBlindCS together. 
figure 
plot(AllAvrHRBluenoBlindCS)
hold on 
plot(AllAvrHRRednoBlindCS)
hold on 
plot(AllAvrHRYellownoBlindCS)
hold on 
plot(AllAvrHRwhitenoBlindCS)
hold on

%white BlindCS
AllAvrHRwhiteBlindCS = 1;
AllStdHRwhiteBlindCS = 1;
AllSubHRwhiteBlindCS = [Sub2HRwhiteBlindCS, Sub3HRwhiteBlindCS, Sub4HRwhiteBlindCS,...
    Sub5HRwhiteBlindCS, Sub6HRwhiteBlindCS, Sub7HRwhiteBlindCS, Sub8HRwhiteBlindCS,...
    Sub9HRwhiteBlindCS, Sub10HRwhiteBlindCS, Sub11HRwhiteBlindCS, Sub13HRwhiteBlindCS,...
    Sub14HRwhiteBlindCS, Sub15HRwhiteBlindCS, Sub16HRwhiteBlindCS, Sub17HRwhiteBlindCS,...
    Sub18HRwhiteBlindCS, Sub19HRwhiteBlindCS, Sub20HRwhiteBlindCS, Sub21HRwhiteBlindCS,...
    Sub24HRwhiteBlindCS, Sub25HRwhiteBlindCS,...
    Sub26HRwhiteBlindCS];

AllSubHRwhiteBlindCSColumn = [Sub2HRwhiteBlindCS; Sub3HRwhiteBlindCS; Sub4HRwhiteBlindCS;...
    Sub5HRwhiteBlindCS; Sub6HRwhiteBlindCS; Sub7HRwhiteBlindCS; Sub8HRwhiteBlindCS;...
    Sub9HRwhiteBlindCS; Sub10HRwhiteBlindCS; Sub11HRwhiteBlindCS; Sub13HRwhiteBlindCS;...
    Sub14HRwhiteBlindCS; Sub15HRwhiteBlindCS; Sub16HRwhiteBlindCS; Sub17HRwhiteBlindCS;...
    Sub18HRwhiteBlindCS; Sub19HRwhiteBlindCS; Sub20HRwhiteBlindCS; Sub21HRwhiteBlindCS;...
    Sub24HRwhiteBlindCS; Sub25HRwhiteBlindCS;...
    Sub26HRwhiteBlindCS];

for i=1:size(AllSubHRwhiteBlindCS)
AllAvrHRwhiteBlindCS(i) = mean(AllSubHRwhiteBlindCS(i,:));
AllStdHRwhiteBlindCS(i) = std(AllSubHRwhiteBlindCS(i,:));
end

%Blue BlindCS
AllAvrHRBlueBlindCS = 1;
AllStdHRBlueBlindCS = 1;
AllSubHRBlueBlindCS = [Sub2HRBlueBlindCS, Sub3HRBlueBlindCS, Sub4HRBlueBlindCS,...
    Sub5HRBlueBlindCS, Sub6HRBlueBlindCS, Sub7HRBlueBlindCS, Sub8HRBlueBlindCS,...
    Sub9HRBlueBlindCS, Sub10HRBlueBlindCS, Sub11HRBlueBlindCS, Sub13HRBlueBlindCS,...
    Sub14HRBlueBlindCS, Sub15HRBlueBlindCS, Sub16HRBlueBlindCS, Sub17HRBlueBlindCS,...
    Sub18HRBlueBlindCS, Sub19HRBlueBlindCS, Sub20HRBlueBlindCS, Sub21HRBlueBlindCS,...
    Sub24HRBlueBlindCS, Sub25HRBlueBlindCS,...
    Sub26HRBlueBlindCS];

AllSubHRBlueBlindCSColumn = [Sub2HRBlueBlindCS; Sub3HRBlueBlindCS; Sub4HRBlueBlindCS;...
    Sub5HRBlueBlindCS; Sub6HRBlueBlindCS; Sub7HRBlueBlindCS; Sub8HRBlueBlindCS;...
    Sub9HRBlueBlindCS; Sub10HRBlueBlindCS; Sub11HRBlueBlindCS; Sub13HRBlueBlindCS;...
    Sub14HRBlueBlindCS; Sub15HRBlueBlindCS; Sub16HRBlueBlindCS; Sub17HRBlueBlindCS;...
    Sub18HRBlueBlindCS; Sub19HRBlueBlindCS; Sub20HRBlueBlindCS; Sub21HRBlueBlindCS;...
    Sub24HRBlueBlindCS; Sub25HRBlueBlindCS;...
    Sub26HRBlueBlindCS];

for i=1:size(AllSubHRBlueBlindCS)
AllAvrHRBlueBlindCS(i) = mean(AllSubHRBlueBlindCS(i,:));
AllStdHRBlueBlindCS(i) = std(AllSubHRBlueBlindCS(i,:));
end

%Red BlindCS
AllAvrHRRedBlindCS = 1;
AllStdHRRedBlindCS = 1;
AllSubHRRedBlindCS = [Sub2HRRedBlindCS, Sub3HRRedBlindCS, Sub4HRRedBlindCS,...
    Sub5HRRedBlindCS, Sub6HRRedBlindCS, Sub7HRRedBlindCS, Sub8HRRedBlindCS,...
    Sub9HRRedBlindCS, Sub10HRRedBlindCS, Sub11HRRedBlindCS, Sub13HRRedBlindCS,...
    Sub14HRRedBlindCS, Sub15HRRedBlindCS, Sub16HRRedBlindCS, Sub17HRRedBlindCS,...
    Sub18HRRedBlindCS, Sub19HRRedBlindCS, Sub20HRRedBlindCS, Sub21HRRedBlindCS,...
    Sub24HRRedBlindCS, Sub25HRRedBlindCS,...
    Sub26HRRedBlindCS];

AllSubHRRedBlindCSColumn = [Sub2HRRedBlindCS; Sub3HRRedBlindCS; Sub4HRRedBlindCS;...
    Sub5HRRedBlindCS; Sub6HRRedBlindCS; Sub7HRRedBlindCS; Sub8HRRedBlindCS;...
    Sub9HRRedBlindCS; Sub10HRRedBlindCS; Sub11HRRedBlindCS; Sub13HRRedBlindCS;...
    Sub14HRRedBlindCS; Sub15HRRedBlindCS; Sub16HRRedBlindCS; Sub17HRRedBlindCS;...
    Sub18HRRedBlindCS; Sub19HRRedBlindCS; Sub20HRRedBlindCS; Sub21HRRedBlindCS;...
    Sub24HRRedBlindCS; Sub25HRRedBlindCS;...
    Sub26HRRedBlindCS];

for i=1:size(AllSubHRRedBlindCS)
AllAvrHRRedBlindCS(i) = mean(AllSubHRRedBlindCS(i,:));
AllStdHRRedBlindCS(i) = std(AllSubHRRedBlindCS(i,:));
end

%Yellow BlindCS
AllAvrHRYellowBlindCS = 1;
AllStdHRYellowBlindCS = 1;
AllTtestHRYvsBBlindCS = 1;
AllSubHRYellowBlindCS = [Sub2HRYellowBlindCS, Sub3HRYellowBlindCS, Sub4HRYellowBlindCS,...
    Sub5HRYellowBlindCS, Sub6HRYellowBlindCS, Sub7HRYellowBlindCS, Sub8HRYellowBlindCS,...
    Sub9HRYellowBlindCS, Sub10HRYellowBlindCS, Sub11HRYellowBlindCS, Sub13HRYellowBlindCS,...
    Sub14HRYellowBlindCS, Sub15HRYellowBlindCS, Sub16HRYellowBlindCS, Sub17HRYellowBlindCS,...
    Sub18HRYellowBlindCS, Sub19HRYellowBlindCS, Sub20HRYellowBlindCS, Sub21HRYellowBlindCS,...
    Sub24HRYellowBlindCS, Sub25HRYellowBlindCS,...
    Sub26HRYellowBlindCS];

AllSubHRYellowBlindCSColumn = [Sub2HRYellowBlindCS; Sub3HRYellowBlindCS; Sub4HRYellowBlindCS;...
    Sub5HRYellowBlindCS; Sub6HRYellowBlindCS; Sub7HRYellowBlindCS; Sub8HRYellowBlindCS;...
    Sub9HRYellowBlindCS; Sub10HRYellowBlindCS; Sub11HRYellowBlindCS; Sub13HRYellowBlindCS;...
    Sub14HRYellowBlindCS; Sub15HRYellowBlindCS; Sub16HRYellowBlindCS; Sub17HRYellowBlindCS;...
    Sub18HRYellowBlindCS; Sub19HRYellowBlindCS; Sub20HRYellowBlindCS; Sub21HRYellowBlindCS;...
    Sub24HRYellowBlindCS; Sub25HRYellowBlindCS;...
    Sub26HRYellowBlindCS];

for i=1:size(AllSubHRYellowBlindCS)
AllAvrHRYellowBlindCS(i) = mean(AllSubHRYellowBlindCS(i,:));
AllStdHRYellowBlindCS(i) = std(AllSubHRYellowBlindCS(i,:));
[H, AllTtestHRYvsBBlindCS(i)] = ttest2(AllSubHRYellowBlindCS(i,:),AllSubHRBlueBlindCS(i,:));
[H, AllTtestHRYvsRBlindCS(i)] = ttest2(AllSubHRYellowBlindCS(i,:),AllSubHRRedBlindCS(i,:));
[H, AllTtestHRYvsWBlindCS(i)] = ttest2(AllSubHRYellowBlindCS(i,:),AllSubHRwhiteBlindCS(i,:));

[H, AllTtestHRBvsWBlindCS(i)] = ttest2(AllSubHRBlueBlindCS(i,:),AllSubHRwhiteBlindCS(i,:));
[H, AllTtestHRBvsRBlindCS(i)] = ttest2(AllSubHRBlueBlindCS(i,:),AllSubHRRedBlindCS(i,:));

[H, AllTtestHRRvsWBlindCS(i)] = ttest2(AllSubHRRedBlindCS(i,:),AllSubHRwhiteBlindCS(i,:));
end
figure
plot(AllTtestHRYvsBBlindCS)
hold on
plot(AllTtestHRYvsRBlindCS)
hold on 
plot(AllTtestHRYvsWBlindCS)
hold on
plot(AllTtestHRBvsWBlindCS)
hold on 
plot(AllTtestHRBvsRBlindCS)
hold on 
plot(AllTtestHRRvsWBlindCS)

%All Average BlindCS together. 
figure 
plot(AllAvrHRBlueBlindCS)
hold on 
plot(AllAvrHRRedBlindCS)
hold on 
plot(AllAvrHRYellowBlindCS)
hold on 
plot(AllAvrHRwhiteBlindCS)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaHRReadyBase = [AllSubHRNormWhiteBaseColumn,AllSubHRNormBlueBaseColumn, AllSubHRNormRedBaseColumn, AllSubHRNormYellowBaseColumn];
anova1(anovaHRReadyBase)

anovaHRReadynoBlindCSCS = [AllSubHRwhitenoBlindCSColumn,AllSubHRBluenoBlindCSColumn, AllSubHRRednoBlindCSColumn, AllSubHRYellownoBlindCSColumn];
anova1(anovaHRReadynoBlindCSCS)

anovaHRReadyBlindCSCS = [AllSubHRwhiteBlindCSColumn,AllSubHRBlueBlindCSColumn, AllSubHRRedBlindCSColumn, AllSubHRYellowBlindCSColumn];
anova1(anovaHRReadyBlindCSCS)

%effect size
meanHRWBase = mean(AllSubHRNormWhiteBaseColumn);
meanHRWBlindCS = mean(AllSubHRwhiteBlindCSColumn);
meanHRWnoBlindCS = mean(AllSubHRwhitenoBlindCSColumn);

stdHRWBase = std(AllSubHRNormWhiteBaseColumn);
stdHRWBlindCS = std(AllSubHRwhiteBlindCSColumn);
stdHRWnoBlindCS = std(AllSubHRwhitenoBlindCSColumn);

meanHRBBase = mean(AllSubHRNormBlueBaseColumn);
meanHRBBlindCS = mean(AllSubHRBlueBlindCSColumn);
meanHRBnoBlindCS = mean(AllSubHRBluenoBlindCSColumn);

stdHRBBase = std(AllSubHRNormBlueBaseColumn);
stdHRBBlindCS = std(AllSubHRBlueBlindCSColumn);
stdHRBnoBlindCS = std(AllSubHRBluenoBlindCSColumn);

meanHRRBase = mean(AllSubHRNormRedBaseColumn);
meanHRRBlindCS = mean(AllSubHRRedBlindCSColumn);
meanHRRnoBlindCS = mean(AllSubHRRednoBlindCSColumn);

stdHRRBase = std(AllSubHRNormRedBaseColumn);
stdHRRBlindCS = std(AllSubHRRedBlindCSColumn);
stdHRRnoBlindCS = std(AllSubHRRednoBlindCSColumn);

meanHRYBase = mean(AllSubHRNormYellowBaseColumn);
meanHRYBlindCS = mean(AllSubHRYellowBlindCSColumn);
meanHRYnoBlindCS = mean(AllSubHRYellownoBlindCSColumn);

stdHRYBase = std(AllSubHRNormYellowBaseColumn);
stdHRYBlindCS = std(AllSubHRYellowBlindCSColumn);
stdHRYnoBlindCS = std(AllSubHRYellownoBlindCSColumn);

effectSizesBase(1) = effectSize(meanHRBBase, meanHRRBase, stdHRBBase, stdHRRBase);
effectSizesBase(2) = effectSize(meanHRBBase, meanHRWBase, stdHRBBase, stdHRWBase);
effectSizesBase(3) = effectSize(meanHRBBase, meanHRYBase, stdHRBBase, stdHRYBase);

effectSizesBase(4) = effectSize(meanHRRBase, meanHRWBase, stdHRRBase, stdHRWBase);
effectSizesBase(5) = effectSize(meanHRRBase, meanHRYBase, stdHRRBase, stdHRYBase);

effectSizesBase(6) = effectSize(meanHRYBase, meanHRWBase, stdHRYBase, stdHRWBase)

effectSizesnoBlindCS(1) = effectSize(meanHRBnoBlindCS, meanHRRnoBlindCS, stdHRBnoBlindCS, stdHRRnoBlindCS);
effectSizesnoBlindCS(2) = effectSize(meanHRBnoBlindCS, meanHRWnoBlindCS, stdHRBnoBlindCS, stdHRWnoBlindCS);
effectSizesnoBlindCS(3) = effectSize(meanHRBnoBlindCS, meanHRYnoBlindCS, stdHRBnoBlindCS, stdHRYnoBlindCS);

effectSizesnoBlindCS(4) = effectSize(meanHRRnoBlindCS, meanHRWnoBlindCS, stdHRRnoBlindCS, stdHRWnoBlindCS);
effectSizesnoBlindCS(5) = effectSize(meanHRRnoBlindCS, meanHRYnoBlindCS, stdHRRnoBlindCS, stdHRYnoBlindCS);

effectSizesnoBlindCS(6) = effectSize(meanHRYnoBlindCS, meanHRWnoBlindCS, stdHRYnoBlindCS, stdHRWnoBlindCS)

effectSizesBlindCS(1) = effectSize(meanHRBBlindCS, meanHRRBlindCS, stdHRBBlindCS, stdHRRBlindCS);
effectSizesBlindCS(2) = effectSize(meanHRBBlindCS, meanHRWBlindCS, stdHRBBlindCS, stdHRWBlindCS);
effectSizesBlindCS(3) = effectSize(meanHRBBlindCS, meanHRYBlindCS, stdHRBBlindCS, stdHRYBlindCS);

effectSizesBlindCS(4) = effectSize(meanHRRBlindCS, meanHRWBlindCS, stdHRRBlindCS, stdHRWBlindCS);
effectSizesBlindCS(5) = effectSize(meanHRRBlindCS, meanHRYBlindCS, stdHRRBlindCS, stdHRYBlindCS);

effectSizesBlindCS(6) = effectSize(meanHRYBlindCS, meanHRWBlindCS, stdHRYBlindCS, stdHRWBlindCS)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end