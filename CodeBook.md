# A CodeBook for the file *tidy_average_by_subject_and_activity.txt*

## Purpose

The dataset *tidy_average_by_subject_and_activity.txt* contains the average of each variable for each activity and each subject from the 
merged wearables motion data contained in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Producing the Tidy Dataset

This dataset can be reproduced by downloading and running the following R file in Rstudio using:

       source("run_analysis.R")

The tidy dataset will be produced and written into *tidy_average_by_subject_and_activity.txt*

## Why is this file Tidy?

The dataset included in this repo and produced by the above script can be said to be tidy because it:

* each row represents a single set of observations for each subject / activity pair
* each column contains only one discrete piece of data (e.g. a single measure of a particular type)
* the columns have been named with clear names (see below).  Note: I have adjusted the names of the measurement variables to remove the "()" components and converted minus characters to underscores to avoid any issues with name interpretation.
* the _activity_ column is a factor variable with meaningful names, not just a coded integer

See the article at https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/  for further information.

## Structure of the Tidy Dataset

The file contains one line (row) for each subject / activity pair.  Each line contains the following columns:

* _subject_ - an integer value (1 to 30) designating the human subject who completed the particular activity
* _activity_ - a factor variable designating the activity being undertaken.  This takes one of the following six values:
    * LAYING
    * SITTING
    * STANDING
    * WALKING
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS
* 66 different averaged measurements.  The ones included in the dataset are those that measured mean() or std() metrics from the original dataset. Each corresponding value is a numeric representing the average of all of the corresponding measures for this subject / activity pa     ir.  The included measures (listed here in groups of 3 for the equivalent X, Y and Z values) are:
    * _tBodyAcc_mean_X_ ,            _tBodyAcc_mean_Y_ ,           _tBodyAcc_mean_Z_           
    * _tBodyAcc_std_X_ ,            _tBodyAcc_std_Y_ ,            _tBodyAcc_std_Z_
    * _tGravityAcc_mean_X_ ,            _tGravityAcc_mean_Y_ ,            _tGravityAcc_mean_Z_  
    * _tGravityAcc_std_X_ ,            _tGravityAcc_std_Y_ ,            _tGravityAcc_std_Z_       
    * _tBodyAccJerk_mean_X_ ,            _tBodyAccJerk_mean_Y_ ,            _tBodyAccJerk_mean_Z_  
    * _tBodyAccJerk_std_X_ ,            _tBodyAccJerk_std_Y_ ,            _tBodyAccJerk_std_Z_   
    * _tBodyGyro_mean_X_ ,            _tBodyGyro_mean_Y_ ,            _tBodyGyro_mean_Z_ 
    * _tBodyGyro_std_X_ ,            _tBodyGyro_std_Y_ ,            _tBodyGyro_std_Z_  
    * _tBodyGyroJerk_mean_X_ ,            _tBodyGyroJerk_mean_Y_ ,            _tBodyGyroJerk_mean_Z_ 
    * _tBodyGyroJerk_std_X_ ,            _tBodyGyroJerk_std_Y_ ,            _tBodyGyroJerk_std_Z_ 
    * _tBodyAccMag_mean_ ,            _tBodyAccMag_std_ ,            _tGravityAccMag_mean_  
    * _tGravityAccMag_std_ ,            _tBodyAccJerkMag_mean_ ,            _tBodyAccJerkMag_std_ 
    * _tBodyGyroMag_mean_ ,            _tBodyGyroMag_std_ ,            _tBodyGyroJerkMag_mean_  
    * _tBodyGyroJerkMag_std_ ,            _fBodyAcc_mean_X_ ,            _fBodyAcc_mean_Y_  
    * _fBodyAcc_mean_Z_ ,            _fBodyAcc_std_X_ ,            _fBodyAcc_std_Y_ 
    * _fBodyAcc_std_Z_ ,            _fBodyAccJerk_mean_X_ ,            _fBodyAccJerk_mean_Y_  
    * _fBodyAccJerk_mean_Z_ ,            _fBodyAccJerk_std_X_ ,            _fBodyAccJerk_std_Y_
    * _fBodyAccJerk_std_Z_ ,            _fBodyGyro_mean_X_ ,            _fBodyGyro_mean_Y_  
    * _fBodyGyro_mean_Z_ ,            _fBodyGyro_std_X_ ,            _fBodyGyro_std_Y_ 
    * _fBodyGyro_std_Z_ ,            _fBodyAccMag_mean_ ,            _fBodyAccMag_std_   
    * _fBodyBodyAccJerkMag_mean_ ,            _fBodyBodyAccJerkMag_std_ ,            _fBodyBodyGyroMag_mean_   
    * _fBodyBodyGyroMag_std_ ,            _fBodyBodyGyroJerkMag_mean_ ,            _fBodyBodyGyroJerkMag_std_ 

Note: see the description files in the following link for further information on what each of these 66 measures:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
