#
# run_analysis.R
# 
# This script does the following:
# 1) Merges the training and the test sets to create one data set.
# 2) Extracts only the measurements on the mean and standard deviation for each measurement.
# 3) Uses descriptive activity names to name the activities in the data set
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

library(dplyr) 

# Read data from files
actlabels <- read.table(file = "activity_labels.txt")  # Names of the activity performed
features <- read.table(file = "features.txt") # Column names for the readings

trainset <- read.table(file = "train/X_train.txt")  # Training data sets (no subjects or activities)
trainsubject <- read.table(file = "train/subject_train.txt") # Training set subjects
trainlabel <- read.table(file = "train/y_train.txt")  # Training set activites

testset <- read.table(file = "test/X_test.txt") # Test data sets (no subjects or activities)
testsubject <- read.table(file = "test/subject_test.txt") # Test set subjects
testlabel <- read.table(file = "test/y_test.txt") # Test set activities

# Tweak names for easier reading
actlabels$V2 <- tolower(actlabels$V2)
features$V2 <- gsub("-", "_", features$V2)
features$V2 <- gsub("()", "", features$V2, fixed = TRUE)

# Assign descriptive variable names to columns
names(trainsubject)[1] <- "subject"   # From "V1" to "subject"
names(trainlabel)[1] <- "activity"
names(trainset) <- features$V2

names(testsubject)[1] <- "subject"   # From "V1" to "subject"
names(testlabel)[1] <- "activity"
names(testset) <- features$V2

# Convert numerical activity labels to descriptive names
trainlabel$activity <- actlabels[trainlabel$activity,]$V2
testlabel$activity <- actlabels[testlabel$activity,]$V2

# Get the column indices that contain only the measurements on the mean and standard deviation
meanColNums <- grep("mean", features$V2)
stdColNums <- grep("std", features$V2)

# Use the column indices generated above to select only the mean/std columns
testMeanStdSet <- testset[c(meanColNums,stdColNums)]
trainMeanStdSet <- trainset[c(meanColNums,stdColNums)]

# Complete the data with leading two columns of subject and activity
testMeanStdSet <- cbind(testsubject, testlabel, testMeanStdSet)
trainMeanStdSet <- cbind(trainsubject, trainlabel, trainMeanStdSet)

# Merges the training and the test sets
har_MeanStd <- rbind(testMeanStdSet, trainMeanStdSet)

# Part 5 - Group the above cleaned data set by subject and activity
harAvg_MeanStd <- group_by(harMeanStdSet, subject, activity) %>% summarize_each(funs(mean))

# Rename column names to reflect aggregation by the 'mean' (avg) function
names(harAvg_MeanStd)[-(1:2)] <- paste("avg", names(harAvg_MeanStd)[-(1:2)], sep = "_")

# Output the data set into text file
write.table(harAvg_MeanStd, file = "harGroupedAvg.txt", row.name=FALSE)