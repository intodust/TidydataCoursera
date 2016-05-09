Getting and Cleaning Data Course Project Assignment:

This repository hosts the R code and documentation files for the Data Science's track course "Getting and Cleaning data", which is 3rd course in Data Science specialization.

Files

CodeBook.md describes the how to use the R script, variables, the data, and any transformations or work that was performed to clean up the data.

run_analysis.R contains all the code to perform the analyses described. They can be launched in RStudio by sourcing the script. 

The output of the RScript is a text file called seconddataSet.txt, it is written via write.table with header names TRUE and row names FALSE and uploaded in the course project's form.

About R script

File with R code "run_analysis.R" perform 5 following steps (in accordance assigned task of course work):
0.Downloading data in the subfolder "data" of the working directory 
#this step is not told to be made part of R script in the assignment, but I thought with this step the script will become just 1 click execution of the whole project. 

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
