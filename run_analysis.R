##Cheks if the folder "data" exists in the working directory, if not then creates the directory called "data"
if(!file.exists("./data")){dir.create("./data")}
## Downloads the file from URL
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

##unzips the file 

unzip(zipfile="./data/Dataset.zip",exdir="./data")

## Reading trainings tables:
Feature_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Activity_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

## Reading testing tables:
Feature_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Activity_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Reading feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

## Reading activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

##Column Names assignment
colnames(Feature_train) <- features[,2] 
colnames(Activity_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(Feature_test) <- features[,2] 
colnames(Activity_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

##Merging the data sets

training_merged <- cbind(Activity_train, subject_train, Feature_train)
test_merged <- cbind(Activity_test, subject_test, Feature_test)
MergedData <- rbind(training_merged, test_merged)

##Reading Colimn names of the MergedData
ColumnNames<- colnames(MergedData)

##Creating vector for defining ID, mean and standard deviation:
MeanAndStdDev <- (grepl("activityId" , ColumnNames) | 
                       grepl("subjectId" , ColumnNames) | 
                       grepl("mean.." , ColumnNames) | 
                       grepl("std.." , ColumnNames) 
)

##Making the subset for mean and standard deviation 
subsetMeanAndStdev <- MergedData[ , MeanAndStdDev == TRUE]

##Using descriptive activity names for activities
ActivityNamedDataset <- merge(subsetMeanAndStdev, activityLabels,
                              by='activityId',
                              all.x=TRUE)

##Expanding the abbreviations in column names to make it more readable 
names(ActivityNamedDataset)<-gsub("^t", "time", names(ActivityNamedDataset))
names(ActivityNamedDataset)<-gsub("^f", "frequency", names(ActivityNamedDataset))
names(ActivityNamedDataset)<-gsub("Acc", "Accelerometer", names(ActivityNamedDataset))
names(ActivityNamedDataset)<-gsub("Gyro", "Gyroscope", names(ActivityNamedDataset))
names(ActivityNamedDataset)<-gsub("Mag", "Magnitude", names(ActivityNamedDataset))
names(ActivityNamedDataset)<-gsub("BodyBody", "Body", names(ActivityNamedDataset))

##Creating a second, independent tidy data set with the average of each variable for each activity 
##and each subject:

## Making second tidy data set 
seconddataSet <- aggregate(. ~subjectId + activityId, ActivityNamedDataset, mean)
seconddataSet <- seconddataSet[order(seconddataSet$subjectId, seconddataSet$activityId),]

#writing the second tidy data set in text file
write.table(seconddataSet, "seconddataSet.txt", row.name=FALSE)
# while importing this tidy data set, please note that it has no row names and it has the column names (descriptive)


