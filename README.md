# Getting-and-Cleaning-Data-Course-Project
This Repo contains the final project for the Course #3 in the Coursera R programming series: Getting and Cleaning Data
# run_analysis.R 
An R script that has been created to perform the following operations to the "Human Activity Recognition Using Smartphones Data Set"

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This program will read in the test and train data sets into R, as well as a data set that contains the names of the measure variables, and a data set that contains the labels for the activity codes found in the data.  The script renames all of the variables appropriately.  The individual sets that make up the test and train sets are combined into full test and train sets and natural keys are defined.  Using SQL, the test and train sets are appended to each other in a union making a complete set of all observations.  The activity labels are brought in using a join on the activity codes.  Next only the measures that contain the means or standard deviations are kept.  The resulting data set is melted and then recasted such that the average of each of the variables is shown by subject and activity.  Finally the data set is written back to a text file called tidyDataFinal.txt.

# tidyDataFinal.txt
This is a text file that is the result of running run_analysis.R with the data set folder in the R working directory. 

# codeBook.md
A data dictionary that describes the variables contained in the tidyDataFinal.txt output file.
