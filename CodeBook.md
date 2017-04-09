# Getting and Cleaning Data Course Project - Course Project (Week 4)
# CodeBook.md for the "Human Activity Recognition Using Smartphones" data

About the original data
=======================
The data are retrieved from below link.  They are the result of collecting data as read from mobile phone accelerometers and gyroscopes as test subjects perform 6 types of predefined movements with the smartphone sensors above.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Major transformations
=====================
- Out of the original 561 values measured for each data, only the means and standard deviations are collected.  This gives a total of 79 variables.
- In the original data sets, the subjects and activities for each row of measurement are stored in their own separate data sets.  They have been merged into one.
- In the original data sets, where there are a total of 30 volunteers performing the actions, 9 of the 30 are randomly chosen so the data they gave were treated as test data, while those from the rest of the 23 subjects were treated as train data providers.  In the transformation performed by this run_analysis.R script, these two data sets (test and train) are merged into one.
- Activity names were originally stored as numbers, but are now replaced using more descriptive texts (as indicated below)

List of Variables in the resulting data set
===========================================
subject - A number that indicates one of the 30 subjects (volunteers) who performed activities being monitored
activity - One of six activies, that indicates that actual actions performed by the subject:
    walking
    walking_upstairs
    walking_downstairs
    sitting
    standing
    laying
avg_tBodyAcc_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-mean()-X' for the subject performing this activity
avg_tBodyAcc_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-mean()-Z' for the subject performing this activity
avg_tBodyAccJerk_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-mean()-X' for the subject performing this activity
avg_tBodyGyro_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-mean()-Y' for the subject performing this activity
avg_tBodyGyroJerk_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-mean()-Z' for the subject performing this activity
avg_tBodyGyroMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroMag-mean()' for the subject performing this activity
avg_fBodyAcc_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()-Z' for the subject performing this activity
avg_fBodyAccJerk_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()-X' for the subject performing this activity
avg_fBodyAccJerk_meanFreq_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()Freq-Y' for the subject performing this activity
avg_fBodyGyro_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()-Z' for the subject performing this activity
avg_fBodyAccMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccMag-mean()' for the subject performing this activity
avg_fBodyBodyGyroMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroMag-mean()' for the subject performing this activity
avg_tBodyAcc_std_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-std()-X' for the subject performing this activity
avg_tGravityAcc_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-std()-Y' for the subject performing this activity
avg_tBodyAccJerk_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-std()-Z' for the subject performing this activity
avg_tBodyGyroJerk_std_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-std()-X' for the subject performing this activity
avg_tGravityAccMag_std - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAccMag-std()' for the subject performing this activity
avg_fBodyAcc_std_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-std()-X' for the subject performing this activity
avg_fBodyAccJerk_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-std()-Y' for the subject performing this activity
avg_fBodyGyro_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-std()-Z' for the subject performing this activity
avg_fBodyBodyGyroJerkMag_std - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroJerkMag-std()' for the subject performing this activity
avg_tBodyAcc_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-mean()-Y' for the subject performing this activity
avg_tGravityAcc_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-mean()-X' for the subject performing this activity
avg_tBodyAccJerk_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-mean()-Y' for the subject performing this activity
avg_tBodyGyro_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-mean()-Z' for the subject performing this activity
avg_tBodyAccMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccMag-mean()' for the subject performing this activity
avg_tBodyGyroJerkMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerkMag-mean()' for the subject performing this activity
avg_fBodyAcc_meanFreq_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()Freq-X' for the subject performing this activity
avg_fBodyAccJerk_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()-Y' for the subject performing this activity
avg_fBodyAccJerk_meanFreq_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()Freq-Z' for the subject performing this activity
avg_fBodyGyro_meanFreq_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()Freq-X' for the subject performing this activity
avg_fBodyAccMag_meanFreq - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccMag-mean()Freq' for the subject performing this activity
avg_fBodyBodyGyroMag_meanFreq - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroMag-mean()Freq' for the subject performing this activity
avg_tBodyAcc_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-std()-Y' for the subject performing this activity
avg_tGravityAcc_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-std()-Z' for the subject performing this activity
avg_tBodyGyro_std_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-std()-X' for the subject performing this activity
avg_tBodyGyroJerk_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-std()-Y' for the subject performing this activity
avg_tBodyAccJerkMag_std - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerkMag-std()' for the subject performing this activity
avg_fBodyAcc_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-std()-Y' for the subject performing this activity
avg_fBodyAccJerk_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-std()-Z' for the subject performing this activity
avg_fBodyAccMag_std - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccMag-std()' for the subject performing this activity
avg_tGravityAcc_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-mean()-Y' for the subject performing this activity
avg_tBodyAccJerk_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-mean()-Z' for the subject performing this activity
avg_tBodyGyroJerk_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-mean()-X' for the subject performing this activity
avg_tGravityAccMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAccMag-mean()' for the subject performing this activity
avg_fBodyAcc_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()-X' for the subject performing this activity
avg_fBodyAcc_meanFreq_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()Freq-Y' for the subject performing this activity
avg_fBodyAccJerk_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()-Z' for the subject performing this activity
avg_fBodyGyro_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()-X' for the subject performing this activity
avg_fBodyGyro_meanFreq_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()Freq-Y' for the subject performing this activity
avg_fBodyBodyAccJerkMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyAccJerkMag-mean()' for the subject performing this activity
avg_fBodyBodyGyroJerkMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroJerkMag-mean()' for the subject performing this activity
avg_tBodyAcc_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAcc-std()-Z' for the subject performing this activity
avg_tBodyAccJerk_std_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-std()-X' for the subject performing this activity
avg_tBodyGyro_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-std()-Y' for the subject performing this activity
avg_tBodyGyroJerk_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-std()-Z' for the subject performing this activity
avg_tBodyGyroMag_std - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroMag-std()' for the subject performing this activity
avg_fBodyAcc_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-std()-Z' for the subject performing this activity
avg_fBodyGyro_std_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-std()-X' for the subject performing this activity
avg_fBodyBodyAccJerkMag_std - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyAccJerkMag-std()' for the subject performing this activity
avg_tGravityAcc_mean_Z - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-mean()-Z' for the subject performing this activity
avg_tBodyGyro_mean_X - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-mean()-X' for the subject performing this activity
avg_tBodyGyroJerk_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerk-mean()-Y' for the subject performing this activity
avg_tBodyAccJerkMag_mean - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerkMag-mean()' for the subject performing this activity
avg_fBodyAcc_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()-Y' for the subject performing this activity
avg_fBodyAcc_meanFreq_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAcc-mean()Freq-Z' for the subject performing this activity
avg_fBodyAccJerk_meanFreq_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-mean()Freq-X' for the subject performing this activity
avg_fBodyGyro_mean_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()-Y' for the subject performing this activity
avg_fBodyGyro_meanFreq_Z - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-mean()Freq-Z' for the subject performing this activity
avg_fBodyBodyAccJerkMag_meanFreq - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyAccJerkMag-mean()Freq' for the subject performing this activity
avg_fBodyBodyGyroJerkMag_meanFreq - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroJerkMag-mean()Freq' for the subject performing this activity
avg_tGravityAcc_std_X - the average of the values that corresponds to the column indicated in the original data set as 'tGravityAcc-std()-X' for the subject performing this activity
avg_tBodyAccJerk_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccJerk-std()-Y' for the subject performing this activity
avg_tBodyGyro_std_Z - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyro-std()-Z' for the subject performing this activity
avg_tBodyAccMag_std - the average of the values that corresponds to the column indicated in the original data set as 'tBodyAccMag-std()' for the subject performing this activity
avg_tBodyGyroJerkMag_std - the average of the values that corresponds to the column indicated in the original data set as 'tBodyGyroJerkMag-std()' for the subject performing this activity
avg_fBodyAccJerk_std_X - the average of the values that corresponds to the column indicated in the original data set as 'fBodyAccJerk-std()-X' for the subject performing this activity
avg_fBodyGyro_std_Y - the average of the values that corresponds to the column indicated in the original data set as 'fBodyGyro-std()-Y' for the subject performing this activity
avg_fBodyBodyGyroMag_std - the average of the values that corresponds to the column indicated in the original data set as 'fBodyBodyGyroMag-std()' for the subject performing this activity
