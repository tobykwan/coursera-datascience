# Getting and Cleaning Data Course Project - Course Project (Week 4)
# README for the "Human Activity Recognition Using Smartphones" data

The goal of this project is to process data collected from below link.  This original data was the result of collecting data as read from mobile phone accelerometers and gyroscopes as test subjects perform 6 types of predefined movements with the smartphone sensors above.

Link to the original data set:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script run_analysis.R in this repo is used to analyse the above data.  Here are the instructions:

- Download the zipped data via the above link
- Download the script run_analysis.R
- Unzip the above zip file into a directory, and copy the above run_analysis.R script into the same folder
- Load the script in R.  The tested version of R is 3.3.2.
- Run the script, which will analyse the data in the folder and generate a data set and save it in a text file called "harGroupedAvg.txt".

Here's what the script does:
- It loads data from the original data sets in these files (the original raw signals, under the folders "Inertial Signals", which have been absorbed into below data sets, are not further processed here)

activity_labels.txt
features.txt
train/X_train.txt
train/subject_train.txt
train/y_train.txt
test/X_test.txt
test/subject_test.txt
test/y_test.txt

- Train (train/X_train.txt) and test (test/X_test.txt) data are absorbed; both contain 561 columns (corresponding to 561 different measurements).  Each column is given more descriptive column names via the descriptive file features.txt

- Then it selects only the data containing 'mean' and 'standard deviation' values, resulting in 79 columns for each of them

- The above selected data are then merged (cbind in R) with the subjects (train/subject_train.txt and test/subject_test.txt) and their activities (train/y_train.txt and test/y_test.txt)

- These two resulting train and test data are merged (rbind in R)

- The data are finally grouped by their subjects and activities, and an average (mean) is computed for each of the mean or standard deviation measurements of the grouped values.  The result is stored in the text file "harGroupedAvg.txt".
