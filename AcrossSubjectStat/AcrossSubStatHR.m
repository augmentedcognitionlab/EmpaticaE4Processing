%Heart Rate Statistics

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

%statistics on all subs 

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

%White NoBlind
AllAvrHRNormWhiteNoBlind = 1;
AllStdHRNormWhiteNoBlind = 1;
AllSubHRNormWhiteNoBlind = [Sub2normHRWhiteNoBlind, Sub3normHRWhiteNoBlind, Sub4normHRWhiteNoBlind,...
    Sub5normHRWhiteNoBlind, Sub6normHRWhiteNoBlind, Sub7normHRWhiteNoBlind, Sub8normHRWhiteNoBlind,...
    Sub9normHRWhiteNoBlind, Sub10normHRWhiteNoBlind, Sub11normHRWhiteNoBlind, Sub13normHRWhiteNoBlind,...
    Sub14normHRWhiteNoBlind, Sub15normHRWhiteNoBlind, Sub16normHRWhiteNoBlind, Sub17normHRWhiteNoBlind,...
    Sub18normHRWhiteNoBlind, Sub19normHRWhiteNoBlind, Sub20normHRWhiteNoBlind, Sub21normHRWhiteNoBlind,...
    Sub24normHRWhiteNoBlind, Sub25normHRWhiteNoBlind,...
    Sub26normHRWhiteNoBlind];

AllSubHRNormWhiteNoBlindColumn = [Sub2normHRWhiteNoBlind; Sub3normHRWhiteNoBlind; Sub4normHRWhiteNoBlind;...
    Sub5normHRWhiteNoBlind; Sub6normHRWhiteNoBlind; Sub7normHRWhiteNoBlind; Sub8normHRWhiteNoBlind;...
    Sub9normHRWhiteNoBlind; Sub10normHRWhiteNoBlind; Sub11normHRWhiteNoBlind; Sub13normHRWhiteNoBlind;...
    Sub14normHRWhiteNoBlind; Sub15normHRWhiteNoBlind; Sub16normHRWhiteNoBlind; Sub17normHRWhiteNoBlind;...
    Sub18normHRWhiteNoBlind; Sub19normHRWhiteNoBlind; Sub20normHRWhiteNoBlind; Sub21normHRWhiteNoBlind;...
    Sub24normHRWhiteNoBlind; Sub25normHRWhiteNoBlind;...
    Sub26normHRWhiteNoBlind];

for i=1:size(AllSubHRNormWhiteNoBlind)
AllAvrHRNormWhiteNoBlind(i) = mean(AllSubHRNormWhiteNoBlind(i,:));
AllStdHRNormWhiteNoBlind(i) = std(AllSubHRNormWhiteNoBlind(i,:));
end

%Blue NoBlind
AllAvrHRNormBlueNoBlind = 1;
AllStdHRNormBlueNoBlind = 1;
AllSubHRNormBlueNoBlind = [Sub2normHRBlueNoBlind, Sub3normHRBlueNoBlind, Sub4normHRBlueNoBlind,...
    Sub5normHRBlueNoBlind, Sub6normHRBlueNoBlind, Sub7normHRBlueNoBlind, Sub8normHRBlueNoBlind,...
    Sub9normHRBlueNoBlind, Sub10normHRBlueNoBlind, Sub11normHRBlueNoBlind, Sub13normHRBlueNoBlind,...
    Sub14normHRBlueNoBlind, Sub15normHRBlueNoBlind, Sub16normHRBlueNoBlind, Sub17normHRBlueNoBlind,...
    Sub18normHRBlueNoBlind, Sub19normHRBlueNoBlind, Sub20normHRBlueNoBlind, Sub21normHRBlueNoBlind,...
    Sub24normHRBlueNoBlind, Sub25normHRBlueNoBlind,...
    Sub26normHRBlueNoBlind];

AllSubHRNormBlueNoBlindColumn = [Sub2normHRBlueNoBlind; Sub3normHRBlueNoBlind; Sub4normHRBlueNoBlind;...
    Sub5normHRBlueNoBlind; Sub6normHRBlueNoBlind; Sub7normHRBlueNoBlind; Sub8normHRBlueNoBlind;...
    Sub9normHRBlueNoBlind; Sub10normHRBlueNoBlind; Sub11normHRBlueNoBlind; Sub13normHRBlueNoBlind;...
    Sub14normHRBlueNoBlind; Sub15normHRBlueNoBlind; Sub16normHRBlueNoBlind; Sub17normHRBlueNoBlind;...
    Sub18normHRBlueNoBlind; Sub19normHRBlueNoBlind; Sub20normHRBlueNoBlind; Sub21normHRBlueNoBlind;...
    Sub24normHRBlueNoBlind; Sub25normHRBlueNoBlind;...
    Sub26normHRBlueNoBlind];

for i=1:size(AllSubHRNormBlueNoBlind)
AllAvrHRNormBlueNoBlind(i) = mean(AllSubHRNormBlueNoBlind(i,:));
AllStdHRNormBlueNoBlind(i) = std(AllSubHRNormBlueNoBlind(i,:));
end

%Red NoBlind
AllAvrHRNormRedNoBlind = 1;
AllStdHRNormRedNoBlind = 1;
AllSubHRNormRedNoBlind = [Sub2normHRRedNoBlind, Sub3normHRRedNoBlind, Sub4normHRRedNoBlind,...
    Sub5normHRRedNoBlind, Sub6normHRRedNoBlind, Sub7normHRRedNoBlind, Sub8normHRRedNoBlind,...
    Sub9normHRRedNoBlind, Sub10normHRRedNoBlind, Sub11normHRRedNoBlind, Sub13normHRRedNoBlind,...
    Sub14normHRRedNoBlind, Sub15normHRRedNoBlind, Sub16normHRRedNoBlind, Sub17normHRRedNoBlind,...
    Sub18normHRRedNoBlind, Sub19normHRRedNoBlind, Sub20normHRRedNoBlind, Sub21normHRRedNoBlind,...
    Sub24normHRRedNoBlind, Sub25normHRRedNoBlind,...
    Sub26normHRRedNoBlind];

AllSubHRNormRedNoBlindColumn = [Sub2normHRRedNoBlind; Sub3normHRRedNoBlind; Sub4normHRRedNoBlind;...
    Sub5normHRRedNoBlind; Sub6normHRRedNoBlind; Sub7normHRRedNoBlind; Sub8normHRRedNoBlind;...
    Sub9normHRRedNoBlind; Sub10normHRRedNoBlind; Sub11normHRRedNoBlind; Sub13normHRRedNoBlind;...
    Sub14normHRRedNoBlind; Sub15normHRRedNoBlind; Sub16normHRRedNoBlind; Sub17normHRRedNoBlind;...
    Sub18normHRRedNoBlind; Sub19normHRRedNoBlind; Sub20normHRRedNoBlind; Sub21normHRRedNoBlind;...
    Sub24normHRRedNoBlind; Sub25normHRRedNoBlind;...
    Sub26normHRRedNoBlind];

for i=1:size(AllSubHRNormRedNoBlind)
AllAvrHRNormRedNoBlind(i) = mean(AllSubHRNormRedNoBlind(i,:));
AllStdHRNormRedNoBlind(i) = std(AllSubHRNormRedNoBlind(i,:));
end

%Yellow NoBlind
AllAvrHRNormYellowNoBlind = 1;
AllStdHRNormYellowNoBlind = 1;
AllSubHRNormYellowNoBlind = [Sub2normHRYellowNoBlind, Sub3normHRYellowNoBlind, Sub4normHRYellowNoBlind,...
    Sub5normHRYellowNoBlind, Sub6normHRYellowNoBlind, Sub7normHRYellowNoBlind, Sub8normHRYellowNoBlind,...
    Sub9normHRYellowNoBlind, Sub10normHRYellowNoBlind, Sub11normHRYellowNoBlind, Sub13normHRYellowNoBlind,...
    Sub14normHRYellowNoBlind, Sub15normHRYellowNoBlind, Sub16normHRYellowNoBlind, Sub17normHRYellowNoBlind,...
    Sub18normHRYellowNoBlind, Sub19normHRYellowNoBlind, Sub20normHRYellowNoBlind, Sub21normHRYellowNoBlind,...
    Sub24normHRYellowNoBlind, Sub25normHRYellowNoBlind,...
    Sub26normHRYellowNoBlind];

AllSubHRNormYellowNoBlindColumn = [Sub2normHRYellowNoBlind; Sub3normHRYellowNoBlind; Sub4normHRYellowNoBlind;...
    Sub5normHRYellowNoBlind; Sub6normHRYellowNoBlind; Sub7normHRYellowNoBlind; Sub8normHRYellowNoBlind;...
    Sub9normHRYellowNoBlind; Sub10normHRYellowNoBlind; Sub11normHRYellowNoBlind; Sub13normHRYellowNoBlind;...
    Sub14normHRYellowNoBlind; Sub15normHRYellowNoBlind; Sub16normHRYellowNoBlind; Sub17normHRYellowNoBlind;...
    Sub18normHRYellowNoBlind; Sub19normHRYellowNoBlind; Sub20normHRYellowNoBlind; Sub21normHRYellowNoBlind;...
    Sub24normHRYellowNoBlind; Sub25normHRYellowNoBlind;...
    Sub26normHRYellowNoBlind];


for i=1:size(AllSubHRNormYellowNoBlind)
AllAvrHRNormYellowNoBlind(i) = mean(AllSubHRNormYellowNoBlind(i,:));
AllStdHRNormYellowNoBlind(i) = std(AllSubHRNormYellowNoBlind(i,:));
[H, AllTtestHRNormYvsBNoBlind(i)] = ttest2(AllSubHRNormYellowNoBlind(i,:),AllSubHRNormBlueNoBlind(i,:));
[H, AllTtestHRNormYvsRNoBlind(i)] = ttest2(AllSubHRNormYellowNoBlind(i,:),AllSubHRNormRedNoBlind(i,:));
[H, AllTtestHRNormYvsWNoBlind(i)] = ttest2(AllSubHRNormYellowNoBlind(i,:),AllSubHRNormWhiteNoBlind(i,:));

[H, AllTtestHRNormBvsWNoBlind(i)] = ttest2(AllSubHRNormBlueNoBlind(i,:),AllSubHRNormWhiteNoBlind(i,:));
[H, AllTtestHRNormBvsRNoBlind(i)] = ttest2(AllSubHRNormBlueNoBlind(i,:),AllSubHRNormRedNoBlind(i,:));

[H, AllTtestHRNormRvsWNoBlind(i)] = ttest2(AllSubHRNormRedNoBlind(i,:),AllSubHRNormWhiteNoBlind(i,:));
end
figure
plot(AllTtestHRNormYvsBNoBlind)
hold on
plot(AllTtestHRNormYvsRNoBlind)
hold on 
plot(AllTtestHRNormYvsWNoBlind)
hold on
plot(AllTtestHRNormBvsWNoBlind)
hold on 
plot(AllTtestHRNormBvsRNoBlind)
hold on 
plot(AllTtestHRNormRvsWNoBlind)

%All Average NoBlind together. 
figure 
plot(AllAvrHRNormBlueNoBlind)
hold on 
plot(AllAvrHRNormRedNoBlind)
hold on 
plot(AllAvrHRNormYellowNoBlind)
hold on 
plot(AllAvrHRNormWhiteNoBlind)
hold on

%White Blind
AllAvrHRNormWhiteBlind = 1;
AllStdHRNormWhiteBlind = 1;
AllSubHRNormWhiteBlind = [Sub2normHRWhiteBlind, Sub3normHRWhiteBlind, Sub4normHRWhiteBlind,...
    Sub5normHRWhiteBlind, Sub6normHRWhiteBlind, Sub7normHRWhiteBlind, Sub8normHRWhiteBlind,...
    Sub9normHRWhiteBlind, Sub10normHRWhiteBlind, Sub11normHRWhiteBlind, Sub13normHRWhiteBlind,...
    Sub14normHRWhiteBlind, Sub15normHRWhiteBlind, Sub16normHRWhiteBlind, Sub17normHRWhiteBlind,...
    Sub18normHRWhiteBlind, Sub19normHRWhiteBlind, Sub20normHRWhiteBlind, Sub21normHRWhiteBlind,...
    Sub24normHRWhiteBlind, Sub25normHRWhiteBlind,...
    Sub26normHRWhiteBlind];

AllSubHRNormWhiteBlindColumn = [Sub2normHRWhiteBlind; Sub3normHRWhiteBlind; Sub4normHRWhiteBlind;...
    Sub5normHRWhiteBlind; Sub6normHRWhiteBlind; Sub7normHRWhiteBlind; Sub8normHRWhiteBlind;...
    Sub9normHRWhiteBlind; Sub10normHRWhiteBlind; Sub11normHRWhiteBlind; Sub13normHRWhiteBlind;...
    Sub14normHRWhiteBlind; Sub15normHRWhiteBlind; Sub16normHRWhiteBlind; Sub17normHRWhiteBlind;...
    Sub18normHRWhiteBlind; Sub19normHRWhiteBlind; Sub20normHRWhiteBlind; Sub21normHRWhiteBlind;...
    Sub24normHRWhiteBlind; Sub25normHRWhiteBlind;...
    Sub26normHRWhiteBlind];

for i=1:size(AllSubHRNormWhiteBlind)
AllAvrHRNormWhiteBlind(i) = mean(AllSubHRNormWhiteBlind(i,:));
AllStdHRNormWhiteBlind(i) = std(AllSubHRNormWhiteBlind(i,:));
end

%Blue Blind
AllAvrHRNormBlueBlind = 1;
AllStdHRNormBlueBlind = 1;
AllSubHRNormBlueBlind = [Sub2normHRBlueBlind, Sub3normHRBlueBlind, Sub4normHRBlueBlind,...
    Sub5normHRBlueBlind, Sub6normHRBlueBlind, Sub7normHRBlueBlind, Sub8normHRBlueBlind,...
    Sub9normHRBlueBlind, Sub10normHRBlueBlind, Sub11normHRBlueBlind, Sub13normHRBlueBlind,...
    Sub14normHRBlueBlind, Sub15normHRBlueBlind, Sub16normHRBlueBlind, Sub17normHRBlueBlind,...
    Sub18normHRBlueBlind, Sub19normHRBlueBlind, Sub20normHRBlueBlind, Sub21normHRBlueBlind,...
    Sub24normHRBlueBlind, Sub25normHRBlueBlind,...
    Sub26normHRBlueBlind];

AllSubHRNormBlueBlindColumn = [Sub2normHRBlueBlind; Sub3normHRBlueBlind; Sub4normHRBlueBlind;...
    Sub5normHRBlueBlind; Sub6normHRBlueBlind; Sub7normHRBlueBlind; Sub8normHRBlueBlind;...
    Sub9normHRBlueBlind; Sub10normHRBlueBlind; Sub11normHRBlueBlind; Sub13normHRBlueBlind;...
    Sub14normHRBlueBlind; Sub15normHRBlueBlind; Sub16normHRBlueBlind; Sub17normHRBlueBlind;...
    Sub18normHRBlueBlind; Sub19normHRBlueBlind; Sub20normHRBlueBlind; Sub21normHRBlueBlind;...
    Sub24normHRBlueBlind; Sub25normHRBlueBlind;...
    Sub26normHRBlueBlind];

for i=1:size(AllSubHRNormBlueBlind)
AllAvrHRNormBlueBlind(i) = mean(AllSubHRNormBlueBlind(i,:));
AllStdHRNormBlueBlind(i) = std(AllSubHRNormBlueBlind(i,:));
end

%Red Blind
AllAvrHRNormRedBlind = 1;
AllStdHRNormRedBlind = 1;
AllSubHRNormRedBlind = [Sub2normHRRedBlind, Sub3normHRRedBlind, Sub4normHRRedBlind,...
    Sub5normHRRedBlind, Sub6normHRRedBlind, Sub7normHRRedBlind, Sub8normHRRedBlind,...
    Sub9normHRRedBlind, Sub10normHRRedBlind, Sub11normHRRedBlind, Sub13normHRRedBlind,...
    Sub14normHRRedBlind, Sub15normHRRedBlind, Sub16normHRRedBlind, Sub17normHRRedBlind,...
    Sub18normHRRedBlind, Sub19normHRRedBlind, Sub20normHRRedBlind, Sub21normHRRedBlind,...
    Sub24normHRRedBlind, Sub25normHRRedBlind,...
    Sub26normHRRedBlind];

AllSubHRNormRedBlindColumn = [Sub2normHRRedBlind; Sub3normHRRedBlind; Sub4normHRRedBlind;...
    Sub5normHRRedBlind; Sub6normHRRedBlind; Sub7normHRRedBlind; Sub8normHRRedBlind;...
    Sub9normHRRedBlind; Sub10normHRRedBlind; Sub11normHRRedBlind; Sub13normHRRedBlind;...
    Sub14normHRRedBlind; Sub15normHRRedBlind; Sub16normHRRedBlind; Sub17normHRRedBlind;...
    Sub18normHRRedBlind; Sub19normHRRedBlind; Sub20normHRRedBlind; Sub21normHRRedBlind;...
    Sub24normHRRedBlind; Sub25normHRRedBlind;...
    Sub26normHRRedBlind];

for i=1:size(AllSubHRNormRedBlind)
AllAvrHRNormRedBlind(i) = mean(AllSubHRNormRedBlind(i,:));
AllStdHRNormRedBlind(i) = std(AllSubHRNormRedBlind(i,:));
end

%Yellow Blind
AllAvrHRNormYellowBlind = 1;
AllStdHRNormYellowBlind = 1;
AllTtestHRNormYvsBBlind = 1;
AllSubHRNormYellowBlind = [Sub2normHRYellowBlind, Sub3normHRYellowBlind, Sub4normHRYellowBlind,...
    Sub5normHRYellowBlind, Sub6normHRYellowBlind, Sub7normHRYellowBlind, Sub8normHRYellowBlind,...
    Sub9normHRYellowBlind, Sub10normHRYellowBlind, Sub11normHRYellowBlind, Sub13normHRYellowBlind,...
    Sub14normHRYellowBlind, Sub15normHRYellowBlind, Sub16normHRYellowBlind, Sub17normHRYellowBlind,...
    Sub18normHRYellowBlind, Sub19normHRYellowBlind, Sub20normHRYellowBlind, Sub21normHRYellowBlind,...
    Sub24normHRYellowBlind, Sub25normHRYellowBlind,...
    Sub26normHRYellowBlind];

AllSubHRNormYellowBlindColumn = [Sub2normHRYellowBlind; Sub3normHRYellowBlind; Sub4normHRYellowBlind;...
    Sub5normHRYellowBlind; Sub6normHRYellowBlind; Sub7normHRYellowBlind; Sub8normHRYellowBlind;...
    Sub9normHRYellowBlind; Sub10normHRYellowBlind; Sub11normHRYellowBlind; Sub13normHRYellowBlind;...
    Sub14normHRYellowBlind; Sub15normHRYellowBlind; Sub16normHRYellowBlind; Sub17normHRYellowBlind;...
    Sub18normHRYellowBlind; Sub19normHRYellowBlind; Sub20normHRYellowBlind; Sub21normHRYellowBlind;...
    Sub24normHRYellowBlind; Sub25normHRYellowBlind;...
    Sub26normHRYellowBlind];

for i=1:size(AllSubHRNormYellowBlind)
AllAvrHRNormYellowBlind(i) = mean(AllSubHRNormYellowBlind(i,:));
AllStdHRNormYellowBlind(i) = std(AllSubHRNormYellowBlind(i,:));
[H, AllTtestHRNormYvsBBlind(i)] = ttest2(AllSubHRNormYellowBlind(i,:),AllSubHRNormBlueBlind(i,:));
[H, AllTtestHRNormYvsRBlind(i)] = ttest2(AllSubHRNormYellowBlind(i,:),AllSubHRNormRedBlind(i,:));
[H, AllTtestHRNormYvsWBlind(i)] = ttest2(AllSubHRNormYellowBlind(i,:),AllSubHRNormWhiteBlind(i,:));

[H, AllTtestHRNormBvsWBlind(i)] = ttest2(AllSubHRNormBlueBlind(i,:),AllSubHRNormWhiteBlind(i,:));
[H, AllTtestHRNormBvsRBlind(i)] = ttest2(AllSubHRNormBlueBlind(i,:),AllSubHRNormRedBlind(i,:));

[H, AllTtestHRNormRvsWBlind(i)] = ttest2(AllSubHRNormRedBlind(i,:),AllSubHRNormWhiteBlind(i,:));
end
figure
plot(AllTtestHRNormYvsBBlind)
hold on
plot(AllTtestHRNormYvsRBlind)
hold on 
plot(AllTtestHRNormYvsWBlind)
hold on
plot(AllTtestHRNormBvsWBlind)
hold on 
plot(AllTtestHRNormBvsRBlind)
hold on 
plot(AllTtestHRNormRvsWBlind)

%All Average Blind together. 
figure 
plot(AllAvrHRNormBlueBlind)
hold on 
plot(AllAvrHRNormRedBlind)
hold on 
plot(AllAvrHRNormYellowBlind)
hold on 
plot(AllAvrHRNormWhiteBlind)
hold on

% T-test at each time point against each of them 
%std curves for viz 
%ANOVA for overview tot color data vs tot color data 
anovaHRReadyBase = [AllSubHRNormWhiteBaseColumn,AllSubHRNormBlueBaseColumn, AllSubHRNormRedBaseColumn, AllSubHRNormYellowBaseColumn];
anova1(anovaHRReadyBase)

anovaHRReadyNoBlind = [AllSubHRNormWhiteNoBlindColumn,AllSubHRNormBlueNoBlindColumn, AllSubHRNormRedNoBlindColumn, AllSubHRNormYellowNoBlindColumn];
anova1(anovaHRReadyNoBlind)

anovaHRReadyBlind = [AllSubHRNormWhiteBlindColumn,AllSubHRNormBlueBlindColumn, AllSubHRNormRedBlindColumn, AllSubHRNormYellowBlindColumn];
anova1(anovaHRReadyBlind)
%corr accross subjects to see how much each of the data can describe the
%other 

%effect size
meanHRWBase = mean(AllSubHRNormWhiteBaseColumn);
meanHRWBlind = mean(AllSubHRNormWhiteBlindColumn);
meanHRWNoBlind = mean(AllSubHRNormWhiteNoBlindColumn);

stdHRWBase = std(AllSubHRNormWhiteBaseColumn);
stdHRWBlind = std(AllSubHRNormWhiteBlindColumn);
stdHRWNoBlind = std(AllSubHRNormWhiteNoBlindColumn);

meanHRBBase = mean(AllSubHRNormBlueBaseColumn);
meanHRBBlind = mean(AllSubHRNormBlueBlindColumn);
meanHRBNoBlind = mean(AllSubHRNormBlueNoBlindColumn);

stdHRBBase = std(AllSubHRNormBlueBaseColumn);
stdHRBBlind = std(AllSubHRNormBlueBlindColumn);
stdHRBNoBlind = std(AllSubHRNormBlueNoBlindColumn);

meanHRRBase = mean(AllSubHRNormRedBaseColumn);
meanHRRBlind = mean(AllSubHRNormRedBlindColumn);
meanHRRNoBlind = mean(AllSubHRNormRedNoBlindColumn);

stdHRRBase = std(AllSubHRNormRedBaseColumn);
stdHRRBlind = std(AllSubHRNormRedBlindColumn);
stdHRRNoBlind = std(AllSubHRNormRedNoBlindColumn);

meanHRYBase = mean(AllSubHRNormYellowBaseColumn);
meanHRYBlind = mean(AllSubHRNormYellowBlindColumn);
meanHRYNoBlind = mean(AllSubHRNormYellowNoBlindColumn);

stdHRYBase = std(AllSubHRNormYellowBaseColumn);
stdHRYBlind = std(AllSubHRNormYellowBlindColumn);
stdHRYNoBlind = std(AllSubHRNormYellowNoBlindColumn);

effectSizesBase(1) = effectSize(meanHRBBase, meanHRRBase, stdHRBBase, stdHRRBase);
effectSizesBase(2) = effectSize(meanHRBBase, meanHRWBase, stdHRBBase, stdHRWBase);
effectSizesBase(3) = effectSize(meanHRBBase, meanHRYBase, stdHRBBase, stdHRYBase);

effectSizesBase(4) = effectSize(meanHRRBase, meanHRWBase, stdHRRBase, stdHRWBase);
effectSizesBase(5) = effectSize(meanHRRBase, meanHRYBase, stdHRRBase, stdHRYBase);

effectSizesBase(6) = effectSize(meanHRYBase, meanHRWBase, stdHRYBase, stdHRWBase)

effectSizesNoBlind(1) = effectSize(meanHRBNoBlind, meanHRRNoBlind, stdHRBNoBlind, stdHRRNoBlind);
effectSizesNoBlind(2) = effectSize(meanHRBNoBlind, meanHRWNoBlind, stdHRBNoBlind, stdHRWNoBlind);
effectSizesNoBlind(3) = effectSize(meanHRBNoBlind, meanHRYNoBlind, stdHRBNoBlind, stdHRYNoBlind);

effectSizesNoBlind(4) = effectSize(meanHRRNoBlind, meanHRWNoBlind, stdHRRNoBlind, stdHRWNoBlind);
effectSizesNoBlind(5) = effectSize(meanHRRNoBlind, meanHRYNoBlind, stdHRRNoBlind, stdHRYNoBlind);

effectSizesNoBlind(6) = effectSize(meanHRYNoBlind, meanHRWNoBlind, stdHRYNoBlind, stdHRWNoBlind)

effectSizesBlind(1) = effectSize(meanHRBBlind, meanHRRBlind, stdHRBBlind, stdHRRBlind);
effectSizesBlind(2) = effectSize(meanHRBBlind, meanHRWBlind, stdHRBBlind, stdHRWBlind);
effectSizesBlind(3) = effectSize(meanHRBBlind, meanHRYBlind, stdHRBBlind, stdHRYBlind);

effectSizesBlind(4) = effectSize(meanHRRBlind, meanHRWBlind, stdHRRBlind, stdHRWBlind);
effectSizesBlind(5) = effectSize(meanHRRBlind, meanHRYBlind, stdHRRBlind, stdHRYBlind);

effectSizesBlind(6) = effectSize(meanHRYBlind, meanHRWBlind, stdHRYBlind, stdHRWBlind)

%corr accross subjects to see how much each of the data can describe the
%other 
function [d] = effectSize(mean1, mean2, std1, std2)

d = (mean2 - mean1)/(sqrt((std1^2+ std2^2)/2));
d = abs(d);
end

