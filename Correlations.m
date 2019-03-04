%Correlations accross all participants 
%Within all the conditions and scenarios 
totDataWBase = [AllSubEDANormWhiteBaseColumn, AllSubHRNormWhiteBaseColumn, AllSubACCNormWhiteBaseColumn...
    , AllSubTEMPNormWhiteBaseColumn];

totDataWNoBlind = [AllSubEDANormWhiteNoBlindColumn, AllSubHRNormWhiteNoBlindColumn, AllSubACCNormWhiteNoBlindColumn...
    , AllSubTEMPNormWhiteNoBlindColumn];

totDataWBlind = [AllSubEDANormWhiteBlindColumn, AllSubHRNormWhiteBlindColumn, AllSubACCNormWhiteBlindColumn...
    , AllSubTEMPNormWhiteBlindColumn];

totDataBBase = [AllSubEDANormBlueBaseColumn, AllSubHRNormBlueBaseColumn, AllSubACCNormBlueBaseColumn...
    , AllSubTEMPNormBlueBaseColumn];

totDataBNoBlind = [AllSubEDANormBlueNoBlindColumn, AllSubHRNormBlueNoBlindColumn, AllSubACCNormBlueNoBlindColumn...
    , AllSubTEMPNormBlueNoBlindColumn];

totDataBBlind = [AllSubEDANormBlueBlindColumn, AllSubHRNormBlueBlindColumn, AllSubACCNormBlueBlindColumn...
    , AllSubTEMPNormBlueBlindColumn];

totDataRBase = [AllSubEDANormRedBaseColumn, AllSubHRNormRedBaseColumn, AllSubACCNormRedBaseColumn...
    , AllSubTEMPNormRedBaseColumn];

totDataRNoBlind = [AllSubEDANormRedNoBlindColumn, AllSubHRNormRedNoBlindColumn, AllSubACCNormRedNoBlindColumn...
    , AllSubTEMPNormRedNoBlindColumn];

totDataRBlind = [AllSubEDANormRedBlindColumn, AllSubHRNormRedBlindColumn, AllSubACCNormRedBlindColumn...
    , AllSubTEMPNormRedBlindColumn];

totDataYBase = [AllSubEDANormYellowBaseColumn, AllSubHRNormYellowBaseColumn, AllSubACCNormYellowBaseColumn...
    , AllSubTEMPNormYellowBaseColumn];

totDataYNoBlind = [AllSubEDANormYellowNoBlindColumn, AllSubHRNormYellowNoBlindColumn, AllSubACCNormYellowNoBlindColumn...
   , AllSubTEMPNormYellowNoBlindColumn];

totDataYBlind = [AllSubEDANormYellowBlindColumn, AllSubHRNormYellowBlindColumn, AllSubACCNormYellowBlindColumn...
    , AllSubTEMPNormYellowBlindColumn];

for i=1:4 
    for j=1:4
   CorrWBase(i,j) = corr(totDataWBase(:,i),totDataWBase(:,j));
   CorrWNoBlind(i,j) = corr(totDataWNoBlind(:,i),totDataWNoBlind(:,j));
   corrWBlind(i,j) = corr(totDataWBlind(:,i),totDataWBlind(:,j));
   
   CorrBBase(i,j) = corr(totDataBBase(:,i),totDataBBase(:,j));
   CorrBNoBlind(i,j) = corr(totDataBNoBlind(:,i),totDataBNoBlind(:,j));
   corrBBlind(i,j) = corr(totDataBBlind(:,i),totDataBBlind(:,j));
   
   CorrRBase(i,j) = corr(totDataRBase(:,i),totDataRBase(:,j));
   CorrRNoBlind(i,j) = corr(totDataRNoBlind(:,i),totDataRNoBlind(:,j));
   corrRBlind(i,j) = corr(totDataRBlind(:,i),totDataRBlind(:,j));
   
   CorrYBase(i,j) = corr(totDataYBase(:,i),totDataYBase(:,j));
   CorrYNoBlind(i,j) = corr(totDataYNoBlind(:,i),totDataYNoBlind(:,j));
   corrYBlind(i,j) = corr(totDataYBlind(:,i),totDataYBlind(:,j));
        
    end
end

   CorrWBase
   CorrWNoBlind
   corrWBlind
   
   CorrBBase
   CorrBNoBlind
   corrBBlind
   
   CorrRBase
   CorrRNoBlind
   corrRBlind
   
   CorrYBase
   CorrYNoBlind
   corrYBlind
