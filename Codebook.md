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

About R script

File with R code "run_analysis.R" perform 5 following steps (in accordance assigned task of course work):
0.Downloading data in the subfolder "data" of the working directory, 
1. Merging the training and the test sets to create one data set.
1.1 Reading files
1.1.1 Reading trainings tables
1.1.2 Reading testing tables
1.1.3 Reading feature vector
1.1.4 Reading activity labels
1.2 Assigning column names
1.3 Merging all data in one set
2. Extracting only the measurements on the mean and standard deviation for each measurement
2.1 Reading column names
2.2 Create vector for defining ID, mean and standard deviation
2.3 Making nessesary subset from setAllInOne
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labeling the data set with descriptive variable names, expanding the abbraviations
5. Creating a second, independent tidy data set with the average of each variable for each activity and each subject
5.1 Making second tidy data set
5.2 Writing second tidy data set in txt file

Variables:

Feature_train , Activity_train, Feature_test, Activity_test, subject_train and subject_test contain the data from the downloaded files.
features contains the features, and ActivityLables contains labels of activities