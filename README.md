# EmpaticaE4Processing
This repository contain the standard paradigm used for analyzing Empatica E4 data at the Augmented Cognition Lab 

* all the files are currently formatted to work with three different scenarios Baseline, No Blindfold and Blindfold. and within them are there four different scenarios Blue, Red, White and Yellow. 
* all condition and scenarios are subject to change when aplying the scripts to another analysis. 
* currently they do not work with multiple of the same marker per person 
* Subject number is also subject for change in according to your subject number.

Enough of all the thingd you should be aware off and let's move to how you'll use the scripts. 

First be in the folder with the raw empatica Excel files 
open Tags and edit the second column to include the marker numbers. 

when you are in the same folder open and run

"DataPrep"

Next run 

"DescriptiveAlalysis"

Repeat both for all the different subjects you have. 

when all subjects are processsed run the scripts that proesses the new data. 
First 

"correlations" 

To test whether some of the datastreams correlated to each other. 

now we can continue with the statistical tests. 
we run 

"AcrossSubStat, AccrossSubStatHR, AcrossSubStatTEMP, & AccrossSubStatACCX"

This will tell us which of the scenarios within the conditions that are significnat different and when. 
If you are interested in the Change Score data instead of the Normalized data run

"AcrossSubStatEDACS, AccrossSubStatHRCS, AcrossSubStatTEMPCS"

Another test you can run is to see how much the datastream differs overtime, either the difference from start to finish or difference between every 6th of the stimuli e.g. 30 seconds for the No BlindFold and Blindfold. 
to do this run tthe following scripts for all datastreams. 

"TemporalChangeStat, TemporalChangeStatHR, & TemporalChangeStatTemp"
