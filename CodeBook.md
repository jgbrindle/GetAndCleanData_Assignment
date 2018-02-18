# A CodeBook for the file *tidy_average_by_subject_and_activity.txt*

## Purpose

The dataset *tidy_average_by_subject_and_activity.txt* contains the average of each variable for each activity and each subject from the 
merged wearables motion data contained in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Producing the Tidy Dataset

This dataset can be reproduced by downloading and running the following R file in Rstudio using:

       source("run_analysis.R")

The tidy dataset will be produced and written into *tidy_average_by_subject_and_activity.txt*

## Structure of the Tidy Dataset

The file contains one line (row) for each subject / activity pair.  Each line contains the following columns:

* subject - an integer value (1 to 30) designating the human subject who completed the particular activity
* activity - a factor variable designating the activity being undertaken.  This takes one of the following six values:
      - LAYING
      - SITTING
      - STANDING
      - WALKING
      - WALKING_DOWNSTAIRS
      - WALKING_UPSTAIRS
* 66 different averaged measurements.  The ones included in the dataset are those that measured mean() or std() metrics from the original dataset. Each corresponding value is a numeric representing the average of all of the corresponding measures for this subject / activity pair.  The included measures (listed here in groups of 3 for the equivalent X, Y and Z values) are:
      - "tBodyAcc_mean_X"           "tBodyAcc_mean_Y"           "tBodyAcc_mean_Z"          
      - "tBodyAcc_std_X"            "tBodyAcc_std_Y"            "tBodyAcc_std_Z" 
      - "tGravityAcc_mean_X"        "tGravityAcc_mean_Y"        "tGravityAcc_mean_Z"  
      - "tGravityAcc_std_X"         "tGravityAcc_std_Y"         "tGravityAcc_std_Z"       
      - "tBodyAccJerk_mean_X"       "tBodyAccJerk_mean_Y"       "tBodyAccJerk_mean_Z"  
      - "tBodyAccJerk_std_X"        "tBodyAccJerk_std_Y"        "tBodyAccJerk_std_Z"   
      - "tBodyGyro_mean_X"          "tBodyGyro_mean_Y"          "tBodyGyro_mean_Z" 
      - "tBodyGyro_std_X"           "tBodyGyro_std_Y"           "tBodyGyro_std_Z"  
      - "tBodyGyroJerk_mean_X"      "tBodyGyroJerk_mean_Y"      "tBodyGyroJerk_mean_Z" 
      - "tBodyGyroJerk_std_X"       "tBodyGyroJerk_std_Y"       "tBodyGyroJerk_std_Z" 
      - "tBodyAccMag_mean"          "tBodyAccMag_std"           "tGravityAccMag_mean"  
      - "tGravityAccMag_std"        "tBodyAccJerkMag_mean"      "tBodyAccJerkMag_std" 
      - "tBodyGyroMag_mean"         "tBodyGyroMag_std"          "tBodyGyroJerkMag_mean"  
      - "tBodyGyroJerkMag_std"      "fBodyAcc_mean_X"           "fBodyAcc_mean_Y"  
      - "fBodyAcc_mean_Z"           "fBodyAcc_std_X"            "fBodyAcc_std_Y"  
      - "fBodyAcc_std_Z"            "fBodyAccJerk_mean_X"       "fBodyAccJerk_mean_Y"  
      - "fBodyAccJerk_mean_Z"       "fBodyAccJerk_std_X"        "fBodyAccJerk_std_Y"
      - "fBodyAccJerk_std_Z"        "fBodyGyro_mean_X"          "fBodyGyro_mean_Y"  
      - "fBodyGyro_mean_Z"          "fBodyGyro_std_X"           "fBodyGyro_std_Y" 
      - "fBodyGyro_std_Z"           "fBodyAccMag_mean"          "fBodyAccMag_std"   
      - "fBodyBodyAccJerkMag_mean"  "fBodyBodyAccJerkMag_std"   "fBodyBodyGyroMag_mean"   
      - "fBodyBodyGyroMag_std"      "fBodyBodyGyroJerkMag_mean" "fBodyBodyGyroJerkMag_std" 
