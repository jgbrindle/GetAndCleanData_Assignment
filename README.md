# GetAndCleanData_Assignment

## Author

Jeff Brindle, "Getting and Cleaning Data" Assignment, week 4,  18 February 2018

## Included Files

1. *README.md* : this file
2. *CodeBook.md* : describes the contents of the produced tidy dataset
3. *tidy_average_by_subject_and_activity.txt* : a copy of the tidy dataset
4. *run_analysis.R* : produces the tidy dataset of the average of each variable for each activity and each subject from the merged wearables motion data contained in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Producing the Tidy Dataset

To load and run this R file use:

       source("run_analysis.R")

The tidy dataset will be produced and written into *tidy_average_by_subject_and_activity.txt*

Note: The *run_analysis.R* file is structured around the following steps:
* Step 0 : download and read in the relevant source datasets
* Step 1 : Merge the training and the test sets to create one data set.
* Step 2 : Extract only the measurements on the mean and standard deviation for each measurement.
* Step 3 : Use descriptive activity names to name the activities in the data set
* Step 4 : Appropriately label the data set with descriptive variable names.
* Step 5 : From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

Note: further discussion on the approach to producing this dataset can be found in the excellent article by David Hood at:

https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
