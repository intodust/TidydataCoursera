About source data

As sourse data for work was used Human Activity Recognition Using Smartphones Data Set. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Credit Information about the data :

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws



Variables:

Feature_train, Activity_train, Feature_test, Activity_test, subject_train and subject_test contain the data from the downloaded files. Read through read.table
features contains the features, and ActivityLables contains labels of activities
training_merged and test_merged are two intermediary data which are result of columnbinding of 2 data sets each, these two data sets are then merged through rowbinding to give MergedData.
ActivityNamedDataset is created by naming getting activity names into the mergeddata and getting sebset on just mean and standard deviation variable.
seconddataset is tidy data set which is aggregated on mean from ActivityNamedDataset and arranged on subjectID and ActivityID.