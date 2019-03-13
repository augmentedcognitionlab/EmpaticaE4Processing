%******WRITTEN BY ANDREAS WULFF-ABRAMSSON*****

%This is the second script to run when analyzing Empatica Data 

%*****************************************'''
% first we find the average and std of all the data streams for all the
% conditions. For this version Baseline, No Blindfold and Blindfold are
% the conditions. 
% this is done for a single persons data. 
% Afterwards the changeScore is found for all consitions apart from the
% baseline. This is to reduce the individual variability. 
% next Normalization is performed for all data chunks to make them all
% follow a relative scale, thus make them more comparable and further
% reduce individual variance. 
% please bare in mind Baseline Normalization follows a slightky different
% procedure as its numbers has not been subtracted by baseline beforehand.

% the case are regarding the following order 
% 3 = HR 
% 4 = EDA 
% 5 = ACC
% 6 = Temperature 

%****************************************************************

for i=3:6
 switch(i)
     case 4
[ Sub26avrEDAWhiteBase,  Sub26stdEDAWhiteBase ] = descAnal( Sub26whiteBaseline, i);
[ Sub26avrEDABlueBase,  Sub26stdEDABlueBase ] = descAnal( Sub26BlueBaseline, i);
[ Sub26avrEDARedBase,  Sub26stdEDARedBase ] = descAnal( Sub26RedBaseline, i);
[ Sub26avrEDAYellowBase,  Sub26stdEDAYellowBase ] = descAnal( Sub26YellowBaseline, i);

[ Sub26avrEDAWhiteNoBlind,  Sub26stdEDAWhiteNoBlind ] = descAnal( Sub26whiteNoBlind, i);
[ Sub26avrEDABlueNoBlind,  Sub26stdEDABlueNoBlind ] = descAnal( Sub26BlueNoBlind, i);
[ Sub26avrEDARedNoBlind,  Sub26stdEDARedNoBlind ] = descAnal( Sub26RedNoBlind, i);
[ Sub26avrEDAYellowNoBlind,  Sub26stdEDAYellowNoBlind ] = descAnal( Sub26YellowNoBlind, i);

[ Sub26avrEDAWhiteBlind,  Sub26stdEDAWhiteBlind ] = descAnal( Sub26whiteBlind, i);
[ Sub26avrEDABlueBlind,  Sub26stdEDABlueBlind ] = descAnal( Sub26BlueBlind, i);
[ Sub26avrEDARedBlind,  Sub26stdEDARedBlind ] = descAnal( Sub26RedBlind, i);
[ Sub26avrEDAYellowBlind,  Sub26stdEDAYellowBlind ] = descAnal( Sub26YellowBlind, i);

%ChangeScore EDA

[ Sub26EDAwhitenoBlindCS] = removeBaseline ( Sub26avrEDAWhiteBase,  Sub26whiteNoBlind, i);
[ Sub26EDABluenoBlindCS] = removeBaseline ( Sub26avrEDABlueBase,  Sub26BlueNoBlind, i);
[ Sub26EDARednoBlindCS] = removeBaseline ( Sub26avrEDARedBase,  Sub26RedNoBlind, i);
[ Sub26EDAYellownoBlindCS] = removeBaseline ( Sub26avrEDAYellowBase,  Sub26YellowNoBlind, i);

[ Sub26EDAwhiteBlindCS] = removeBaseline ( Sub26avrEDAWhiteBase,  Sub26whiteBlind, i);
[ Sub26EDABlueBlindCS] = removeBaseline ( Sub26avrEDABlueBase,  Sub26BlueBlind, i);
[ Sub26EDARedBlindCS] = removeBaseline ( Sub26avrEDARedBase,  Sub26RedBlind, i);
[ Sub26EDAYellowBlindCS] = removeBaseline ( Sub26avrEDAYellowBase,  Sub26YellowBlind, i);

%Normalize changeScore EDA data

[ Sub26normEDAWhiteNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDAwhitenoBlindCS, i,  Sub26avrEDAWhiteBase);
[ Sub26normEDABlueNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDABluenoBlindCS, i,  Sub26avrEDABlueBase);
[ Sub26normEDARedNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDARednoBlindCS, i,  Sub26avrEDARedBase);
[ Sub26normEDAYellowNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDAYellownoBlindCS, i,  Sub26avrEDAYellowBase);

[ Sub26normEDAWhiteBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDAwhiteBlindCS, i,  Sub26avrEDAWhiteBase);
[ Sub26normEDABlueBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDABlueBlindCS, i,  Sub26avrEDABlueBase);
[ Sub26normEDARedBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDARedBlindCS, i,  Sub26avrEDARedBase);
[ Sub26normEDAYellowBlind] = normalizeChunk ( Sub26totaldataset,  Sub26EDAYellowBlindCS, i,  Sub26avrEDAYellowBase);

[ Sub26normEDAWhiteBase] = normalizeBase ( Sub26totaldataset,  Sub26whiteBaseline(:,i), i);
[ Sub26normEDABlueBase] = normalizeBase ( Sub26totaldataset,  Sub26BlueBaseline(:,i), i);
[ Sub26normEDARedBase] = normalizeBase ( Sub26totaldataset,  Sub26RedBaseline(:,i), i);
[ Sub26normEDAYellowBase] = normalizeBase ( Sub26totaldataset,  Sub26YellowBaseline(:,i), i);
   
     case 3    
[ Sub26avrHRWhiteBase,  Sub26stdHRWhiteBase ] = descAnal( Sub26whiteBaseline, i);
[ Sub26avrHRBlueBase,  Sub26stdHRBlueBase ] = descAnal( Sub26BlueBaseline, i);
[ Sub26avrHRRedBase,  Sub26stdHRRedBase ] = descAnal( Sub26RedBaseline, i);
[ Sub26avrHRYellowBase,  Sub26stdHRYellowBase ] = descAnal( Sub26YellowBaseline, i);

[ Sub26avrHRWhiteNoBlind,  Sub26stdHRWhiteNoBlind ] = descAnal( Sub26whiteNoBlind, i);
[ Sub26avrHRBlueNoBlind,  Sub26stdHRBlueNoBlind ] = descAnal( Sub26BlueNoBlind, i);
[ Sub26avrHRRedNoBlind,  Sub26stdHRRedNoBlind ] = descAnal( Sub26RedNoBlind, i);
[ Sub26avrHRYellowNoBlind,  Sub26stdHRYellowNoBlind ] = descAnal( Sub26YellowNoBlind, i);

[ Sub26avrHRWhiteBlind,  Sub26stdHRWhiteBlind ] = descAnal( Sub26whiteBlind, i);
[ Sub26avrHRBlueBlind,  Sub26stdHRBlueBlind ] = descAnal( Sub26BlueBlind, i);
[ Sub26avrHRRedBlind,  Sub26stdHRRedBlind ] = descAnal( Sub26RedBlind, i);
[ Sub26avrHRYellowBlind,  Sub26stdHRYellowBlind ] = descAnal( Sub26YellowBlind, i);

%ChangeScore HR

[ Sub26HRwhitenoBlindCS] = removeBaseline ( Sub26avrHRWhiteBase,  Sub26whiteNoBlind, i);
[ Sub26HRBluenoBlindCS] = removeBaseline ( Sub26avrHRBlueBase,  Sub26BlueNoBlind, i);
[ Sub26HRRednoBlindCS] = removeBaseline ( Sub26avrHRRedBase,  Sub26RedNoBlind, i);
[ Sub26HRYellownoBlindCS] = removeBaseline ( Sub26avrHRYellowBase,  Sub26YellowNoBlind, i);

[ Sub26HRwhiteBlindCS] = removeBaseline ( Sub26avrHRWhiteBase,  Sub26whiteBlind, i);
[ Sub26HRBlueBlindCS] = removeBaseline ( Sub26avrHRBlueBase,  Sub26BlueBlind, i);
[ Sub26HRRedBlindCS] = removeBaseline ( Sub26avrHRRedBase,  Sub26RedBlind, i);
[ Sub26HRYellowBlindCS] = removeBaseline ( Sub26avrHRYellowBase,  Sub26YellowBlind, i);

%Normalize changeScore HR data

[ Sub26normHRWhiteNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRwhitenoBlindCS, i,  Sub26avrHRWhiteBase);
[ Sub26normHRBlueNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRBluenoBlindCS, i,  Sub26avrHRBlueBase);
[ Sub26normHRRedNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRRednoBlindCS, i,  Sub26avrHRRedBase);
[ Sub26normHRYellowNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRYellownoBlindCS, i,  Sub26avrHRYellowBase);

[ Sub26normHRWhiteBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRwhiteBlindCS, i,  Sub26avrHRWhiteBase);
[ Sub26normHRBlueBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRBlueBlindCS, i,  Sub26avrHRBlueBase);
[ Sub26normHRRedBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRRedBlindCS, i,  Sub26avrHRRedBase);
[ Sub26normHRYellowBlind] = normalizeChunk ( Sub26totaldataset,  Sub26HRYellowBlindCS, i,  Sub26avrHRYellowBase);

[ Sub26normHRWhiteBase] = normalizeBase ( Sub26totaldataset,  Sub26whiteBaseline(:,i), i);
[ Sub26normHRBlueBase] = normalizeBase ( Sub26totaldataset,  Sub26BlueBaseline(:,i), i);
[ Sub26normHRRedBase] = normalizeBase ( Sub26totaldataset,  Sub26RedBaseline(:,i), i);
[ Sub26normHRYellowBase] = normalizeBase ( Sub26totaldataset,  Sub26YellowBaseline(:,i), i);
         
     case 5
[ Sub26avrACCWhiteBase,  Sub26stdACCWhiteBase ] = descAnal( Sub26whiteBaseline, i);
[ Sub26avrACCBlueBase,  Sub26stdACCBlueBase ] = descAnal( Sub26BlueBaseline, i);
[ Sub26avrACCRedBase,  Sub26stdACCRedBase ] = descAnal( Sub26RedBaseline, i);
[ Sub26avrACCYellowBase,  Sub26stdACCYellowBase ] = descAnal( Sub26YellowBaseline, i);

[ Sub26avrACCWhiteNoBlind,  Sub26stdACCWhiteNoBlind ] = descAnal( Sub26whiteNoBlind, i);
[ Sub26avrACCBlueNoBlind,  Sub26stdACCBlueNoBlind ] = descAnal( Sub26BlueNoBlind, i);
[ Sub26avrACCRedNoBlind,  Sub26stdACCRedNoBlind ] = descAnal( Sub26RedNoBlind, i);
[ Sub26avrACCYellowNoBlind,  Sub26stdACCYellowNoBlind ] = descAnal( Sub26YellowNoBlind, i);

[ Sub26avrACCWhiteBlind,  Sub26stdACCWhiteBlind ] = descAnal( Sub26whiteBlind, i);
[ Sub26avrACCBlueBlind,  Sub26stdACCBlueBlind ] = descAnal( Sub26BlueBlind, i);
[ Sub26avrACCRedBlind,  Sub26stdACCRedBlind ] = descAnal( Sub26RedBlind, i);
[ Sub26avrACCYellowBlind,  Sub26stdACCYellowBlind ] = descAnal( Sub26YellowBlind, i);

%ChangeScore ACC

[ Sub26ACCwhitenoBlindCS] = removeBaseline ( Sub26avrACCWhiteBase,  Sub26whiteNoBlind, i);
[ Sub26ACCBluenoBlindCS] = removeBaseline ( Sub26avrACCBlueBase,  Sub26BlueNoBlind, i);
[ Sub26ACCRednoBlindCS] = removeBaseline ( Sub26avrACCRedBase,  Sub26RedNoBlind, i);
[ Sub26ACCYellownoBlindCS] = removeBaseline ( Sub26avrACCYellowBase,  Sub26YellowNoBlind, i);

[ Sub26ACCwhiteBlindCS] = removeBaseline ( Sub26avrACCWhiteBase,  Sub26whiteBlind, i);
[ Sub26ACCBlueBlindCS] = removeBaseline ( Sub26avrACCBlueBase,  Sub26BlueBlind, i);
[ Sub26ACCRedBlindCS] = removeBaseline ( Sub26avrACCRedBase,  Sub26RedBlind, i);
[ Sub26ACCYellowBlindCS] = removeBaseline ( Sub26avrACCYellowBase,  Sub26YellowBlind, i);

%Normalize changeScore ACC data

[ Sub26normACCWhiteNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCwhitenoBlindCS, i,  Sub26avrACCWhiteBase);
[ Sub26normACCBlueNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCBluenoBlindCS, i,  Sub26avrACCBlueBase);
[ Sub26normACCRedNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCRednoBlindCS, i,  Sub26avrACCRedBase);
[ Sub26normACCYellowNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCYellownoBlindCS, i,  Sub26avrACCYellowBase);

[ Sub26normACCWhiteBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCwhiteBlindCS, i,  Sub26avrACCWhiteBase);
[ Sub26normACCBlueBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCBlueBlindCS, i,  Sub26avrACCBlueBase);
[ Sub26normACCRedBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCRedBlindCS, i,  Sub26avrACCRedBase);
[ Sub26normACCYellowBlind] = normalizeChunk ( Sub26totaldataset,  Sub26ACCYellowBlindCS, i,  Sub26avrACCYellowBase);

[ Sub26normACCWhiteBase] = normalizeBase ( Sub26totaldataset,  Sub26whiteBaseline(:,i), i);
[ Sub26normACCBlueBase] = normalizeBase ( Sub26totaldataset,  Sub26BlueBaseline(:,i), i);
[ Sub26normACCRedBase] = normalizeBase ( Sub26totaldataset,  Sub26RedBaseline(:,i), i);
[ Sub26normACCYellowBase] = normalizeBase ( Sub26totaldataset,  Sub26YellowBaseline(:,i), i);
     
     case 6
[ Sub26avrTEMPWhiteBase,  Sub26stdTEMPWhiteBase ] = descAnal( Sub26whiteBaseline, i);
[ Sub26avrTEMPBlueBase,  Sub26stdTEMPBlueBase ] = descAnal( Sub26BlueBaseline, i);
[ Sub26avrTEMPRedBase,  Sub26stdTEMPRedBase ] = descAnal( Sub26RedBaseline, i);
[ Sub26avrTEMPYellowBase,  Sub26stdTEMPYellowBase ] = descAnal( Sub26YellowBaseline, i);

[ Sub26avrTEMPWhiteNoBlind,  Sub26stdTEMPWhiteNoBlind ] = descAnal( Sub26whiteNoBlind, i);
[ Sub26avrTEMPBlueNoBlind,  Sub26stdTEMPBlueNoBlind ] = descAnal( Sub26BlueNoBlind, i);
[ Sub26avrTEMPRedNoBlind,  Sub26stdTEMPRedNoBlind ] = descAnal( Sub26RedNoBlind, i);
[ Sub26avrTEMPYellowNoBlind,  Sub26stdTEMPYellowNoBlind ] = descAnal( Sub26YellowNoBlind, i);

[ Sub26avrTEMPWhiteBlind,  Sub26stdTEMPWhiteBlind ] = descAnal( Sub26whiteBlind, i);
[ Sub26avrTEMPBlueBlind,  Sub26stdTEMPBlueBlind ] = descAnal( Sub26BlueBlind, i);
[ Sub26avrTEMPRedBlind,  Sub26stdTEMPRedBlind ] = descAnal( Sub26RedBlind, i);
[ Sub26avrTEMPYellowBlind,  Sub26stdTEMPYellowBlind ] = descAnal( Sub26YellowBlind, i);

%ChangeScore TEMP

[ Sub26TEMPwhitenoBlindCS] = removeBaseline ( Sub26avrTEMPWhiteBase,  Sub26whiteNoBlind, i);
[ Sub26TEMPBluenoBlindCS] = removeBaseline ( Sub26avrTEMPBlueBase,  Sub26BlueNoBlind, i);
[ Sub26TEMPRednoBlindCS] = removeBaseline ( Sub26avrTEMPRedBase,  Sub26RedNoBlind, i);
[ Sub26TEMPYellownoBlindCS] = removeBaseline ( Sub26avrTEMPYellowBase,  Sub26YellowNoBlind, i);

[ Sub26TEMPwhiteBlindCS] = removeBaseline ( Sub26avrTEMPWhiteBase,  Sub26whiteBlind, i);
[ Sub26TEMPBlueBlindCS] = removeBaseline ( Sub26avrTEMPBlueBase,  Sub26BlueBlind, i);
[ Sub26TEMPRedBlindCS] = removeBaseline ( Sub26avrTEMPRedBase,  Sub26RedBlind, i);
[ Sub26TEMPYellowBlindCS] = removeBaseline ( Sub26avrTEMPYellowBase,  Sub26YellowBlind, i);

%Normalize changeScore TEMP data

[ Sub26normTEMPWhiteNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPwhitenoBlindCS, i,  Sub26avrTEMPWhiteBase);
[ Sub26normTEMPBlueNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPBluenoBlindCS, i,  Sub26avrTEMPBlueBase);
[ Sub26normTEMPRedNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPRednoBlindCS, i,  Sub26avrTEMPRedBase);
[ Sub26normTEMPYellowNoBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPYellownoBlindCS, i,  Sub26avrTEMPYellowBase);

[ Sub26normTEMPWhiteBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPwhiteBlindCS, i,  Sub26avrTEMPWhiteBase);
[ Sub26normTEMPBlueBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPBlueBlindCS, i,  Sub26avrTEMPBlueBase);
[ Sub26normTEMPRedBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPRedBlindCS, i,  Sub26avrTEMPRedBase);
[ Sub26normTEMPYellowBlind] = normalizeChunk ( Sub26totaldataset,  Sub26TEMPYellowBlindCS, i,  Sub26avrTEMPYellowBase);

[ Sub26normTEMPWhiteBase] = normalizeBase ( Sub26totaldataset,  Sub26whiteBaseline(:,i), i);
[ Sub26normTEMPBlueBase] = normalizeBase ( Sub26totaldataset,  Sub26BlueBaseline(:,i), i);
[ Sub26normTEMPRedBase] = normalizeBase ( Sub26totaldataset,  Sub26RedBaseline(:,i), i);
[ Sub26normTEMPYellowBase] = normalizeBase ( Sub26totaldataset,  Sub26YellowBaseline(:,i), i);
     otherwise 
 end
 
end
function [avr, std1] = descAnal(data, dim)
avr = mean(data(:,dim));
std1 = std(data(:,dim));
end

function [changeScore] = removeBaseline (baseAvr, data, dim)
changeScore = 1;
for i=1:size(data)
 changeScore(i,1) = data(i,dim)-baseAvr;
end

end

function [normalized] = normalizeChunk (totdata, datachunk, dim, baseavr)
Max = max(totdata,[],1);
m = Max(dim) - baseavr;
for i=1:size(datachunk)
    normalized(i,1) = datachunk(i)/m; 
end
end

function [normalized] = normalizeBase (totdata, datachunk, dim)
Max = max(totdata,[],1);
m = Max(dim);
for i=1:size(datachunk)
    normalized(i,1) = datachunk(i)/m; 
end
end

