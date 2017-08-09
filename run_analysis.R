##You should create one R script called run_analysis.R that does the following.

##Merges the training and the test sets to create one data set.
##Extracts only the measurements on the mean and standard deviation for each measurement.
##Uses descriptive activity names to name the activities in the data set
##Appropriately labels the data set with descriptive variable names.
##From the data set in step 4, creates a second, independent tidy data set with the average of 
##each variable for each activity and each subject.

##Assign the data.table and plyr packages
library(plyr)
library(data.table)

##Read in the test and train data
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)

##Read in the datasets that contain the activity and feature descriptive labels
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
features <- read.table("UCI HAR Dataset/features.txt", header = FALSE)

##Rename test and train main set attributes using the features data set
names(x_test) <- features[,2]
names(x_train) <- features[,2]


##Rename the subject attributes
subject_test <- rename(x=subject_test, replace=c("V1" = "subject"))
subject_train <- rename(x=subject_train, replace=c("V1" = "subject"))

##Rename the activity data header
y_test <- rename(x=y_test, replace=c("V1" = "activity_code"))
y_train <- rename(x=y_train, replace=c("V1" = "activity_code"))

##Rename the activity label set
names(activity_labels) <- c("activity_code","activity_label")

##Combine the subject, y and x test and train sets to create one test and one train set
test <- data.frame(subject_test, y_test, x_test)
train <- data.frame(subject_train, y_train, x_train)

##Convert the data frames to data tables
test <- data.table(test)
train <-data.table(train)
activity_labels <- data.table(activity_labels)

##Set natural keys for each table
setkeyv(test, c("subject","activity_code"))
setkeyv(train, c("subject","activity_code"))
setkey(activity_labels, activity_code)

##Confirm the keys using the tables() command
tables()

##Union the test and train data using SQL
library(sqldf)
main <- sqldf("select distinct * from test union select distinct * from train")

##Merge the activity labels into the dataset
main <- merge(activity_labels, main, by="activity_code", all.y=TRUE)

##Remove datasets that are no longer needed
remove(list = c("activity_labels","features","subject_test","subject_train","test","train","x_test","x_train","y_test","y_train"))

##Extract only the attributes for mean and standard deviation, name contains "mean" or "std"
main.mean_or_std.logical <- main[,colnames(main) %in% c("activity_code","activity_label","subject") | grepl("mean..", colnames(main), fixed=TRUE) | grepl("std..",colnames(main), fixed=TRUE)]
main.mean_or_std <- main[,main.mean_or_std.logical, with=FALSE]
colnames(main.mean_or_std)

##Remove ".." from column names so names are more intuitive and cleaner
oldNames <- colnames(main.mean_or_std)
newNames <- sub("..","",oldNames,fixed=TRUE)
setnames(main.mean_or_std,oldNames,newNames)

##Create a tidy data set that is the average of each variable by subject and activity
##Install reshape2 library
library(reshape2)
main.mean_or_std.melt <- melt(main.mean_or_std[,-1,with=FALSE], id = c("subject","activity_label"))
head(main.mean_or_std.melt)
?dcast

tidyDataFinal <- dcast(main.mean_or_std.melt, subject+activity_label ~ variable, mean)
head(tidyDataFinal, n=10)

## write the data set to a text file with row.name = FALSE
?write.table
write.table(tidyDataFinal, file = "./tidyDataFinal.txt", row.name=FALSE)

