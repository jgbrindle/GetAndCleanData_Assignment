## Jeff Brindle - Feb 2018
##
## "Getting and Cleaning Data", Week 4 Assignment
##
## Purpose: 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##
## But first: download and read in the required datasets
##
my_zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
my_zipFile <- "UCI HAR Dataset.zip"
my_dir <- "UCI HAR Dataset"

## only download if it is not already present
if (!file.exists(my_zipFile)) {
  download.file(my_zipUrl, destfile = my_zipFile, method = "curl")
}
## unzip the file if this has not already been done
if (!dir.exists(my_dir)) {
  unzip(my_zipFile)
}
## read in the required files into dataframes from within the zipFile
print ("reading activity_labels")
activity_labels <- read.table(file.path(my_dir,"activity_labels.txt"))
print ("reading features")
features <- read.table(file.path(my_dir,"features.txt"))
print ("reading test_subjects")
test_subjects <- read.table(file.path(my_dir,"test", "subject_test.txt"))
print ("reading train_subjects")
train_subjects <- read.table(file.path(my_dir,"train", "subject_train.txt"))
print ("reading test_X")
test_X <- read.table(file.path(my_dir,"test", "X_test.txt"))
print ("reading test_y")
test_y <- read.table(file.path(my_dir,"test", "y_test.txt"))
print ("reading train_X")
train_X <- read.table(file.path(my_dir,"train", "X_train.txt"))
print ("reading train_y")
train_y <- read.table(file.path(my_dir,"train", "y_train.txt"))

## STEP 1: Merge the training and the test sets to create one data set.
print ("STEP 1 - Merging")

## merge the 2 data sets together
full_data <- rbind(test_X, train_X)

## STEP 2: Extract only the measurements on the mean and standard deviation for each measurement.
print ("STEP 2 - extracting mean and std dev")

## first determine which fields are mean or standard deviation measurements by forming a logical vector of the
## features.  Note use of escape characters to ensure we match mean() to avoid meanfreq etc.
meanOrStdDev <- grep("mean\\(\\)|std\\(\\)", features$V2)
## and apply to the dataset to subset it - ensuring to keep the subject and activity columns
full_data <- full_data[,meanOrStdDev]

## STEP 3: Use descriptive activity names to name the activities in the data set
print ("STEP 3 - assigning activity names")

## convert the activity numbers to factors and label them.  
all_activities <- rbind(test_y, train_y)
all_activities <- factor(all_activities$V1,labels = activity_labels$V2) 

## add them to the front of the data frame
full_data <- cbind(all_activities, full_data)
## also add the subjects
all_subjects <- rbind(test_subjects, train_subjects)
full_data <- cbind(all_subjects, full_data)

## STEP 4 : Appropriately label the data set with descriptive variable names.
print ("STEP 4 - labelling data set")

featureNames <- features$V2[meanOrStdDev]
## remove the "()" from the featureNames
featureNames <- sub("\\(\\)","",featureNames)
## convert the "-" sign to "_" as less confusing
featureNames <- gsub("-","_",featureNames)
names(full_data) <- c("subject","activity",as.character(featureNames))

## STEP 5 : From the data set in step 4, create a second, independent tidy data set with the average of 
## each variable for each activity and each subject.
print ("STEP 5 - creating averaged tidy data set")

tidyAveraged <- aggregate(x = full_data[,3:68], by = list(subject = full_data$subject, activity = full_data$activity), FUN = "mean")

## and write it out as a new file
write.table(tidyAveraged, file = "tidy_average_by_subject_and_activity.txt", row.names = FALSE)