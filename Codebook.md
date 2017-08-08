#Code Book for Getting and Cleaning Data output tidyDataFinal.txt

tidyDataFinal.txt contains the following categorical factor attributes:

subject - A deidentified code indicated the person who completed the experiment.  The codes are the integers from 1 to 30.  

activity_label - One of six activities performed during the experiment:  {"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"}

Additionally the data set contains the following measures:

tBodyAcc.mean.X/Y/Z - mean of the triaxial acceleration means from accelerometer for the X/Y/Z axis components

tBodyAcc.std.X/Y/X - mean of the triaxial acceleration standard deviations from the accelerometer for the X/Y/Z axis components

tGraviityAcc.mean.X/Y/Z - mean of the triaxial gravity acceleration means for the X/Y/Z axis components

tGravityAcc.std.X/Y/Z - mean of the triaxial gravity acceleration standard deviations for the X/Y/Z axis components

tBodyAccJerk.mean.X/Y/Z - mean of the triaxial body acceleration jerk meansfor the X/Y/Z axis components

tBodyAccJerk.std.X/Y/Z - mean of the triaxial body acceleration jerk standard deviationsf or the X/Y/Z axis components

tBodyGyro.mean.X/Y/Z - mean of the triaxial body gyro means for the X/Y/Z axis components

tBodyGyro.std.X/Y/Z - mean of the triaxial body gyro standard deviations for the X/Y/Z axis components

tBodyGyroJerk.mean.X/Y/Z - mean of the triaxial body gyro jerk means for the X/Y/Z axis components

tBodyGyroJerk.std.X/Y/Z - mean of the triaxial body gyro jerk standard deviations for the X/Y/Z axis components

tBodyGravityAccMag.mean- mean of the triaxial body gravity acceleration mag means 

tBodyGravityAccMag.std - mean of the triaxial body gravity acceleration mag standard deviations 

tBodyGravityAccJerkMag.mean - mean of the triaxial body gravity acceleration jerk mag means

tBodyGravityAccJerkMag.std - mean of the triaxial body gravity acceleration jerk mag standard deviations

tBodyGravityGryoMag.mean- mean of the triaxial body gravity gyro mag means 

tBodyGravityGyroMag.std - mean of the triaxial body gravity gyro mag standard deviations 

tBodyGravityGyroJerkMag.mean - mean of the triaxial body gravity gyro jerk mag means

tBodyGravityGyroJerkMag.std - mean of the triaxial body gravity gyro jerk mag standard deviations

fBodyAcc.mean.X/Y/Z - mean of the triaxial acceleration means from accelerometer for the X/Y/Z axis components

fBodyAcc.std.X/Y/X - mean of the triaxial acceleration standard deviations from the accelerometer for the X/Y/Z axis components

fGraviityAcc.mean.X/Y/Z - mean of the triaxial gravity acceleration means for the X/Y/Z axis components

fGravityAcc.std.X/Y/Z - mean of the triaxial gravity acceleration standard deviations for the X/Y/Z axis components

fBodyAccJerk.mean.X/Y/Z - mean of the triaxial body acceleration jerk meansfor the X/Y/Z axis components

fBodyAccJerk.std.X/Y/Z - mean of the triaxial body acceleration jerk standard deviationsf or the X/Y/Z axis components

fBodyGyro.mean.X/Y/Z - mean of the triaxial body gyro means for the X/Y/Z axis components

fBodyGyro.std.X/Y/Z - mean of the triaxial body gyro standard deviations for the X/Y/Z axis components

fBodyGyroJerk.mean.X/Y/Z - mean of the triaxial body gyro jerk means for the X/Y/Z axis components

fBodyGyroJerk.std.X/Y/Z - mean of the triaxial body gyro jerk standard deviations for the X/Y/Z axis components

fBodyGravityAccMag.mean- mean of the triaxial body gravity acceleration mag means 

fBodyGravityAccMag.std - mean of the triaxial body gravity acceleration mag standard deviations 

fBodyGravityAccJerkMag.mean - mean of the triaxial body gravity acceleration jerk mag means

fBodyGravityAccJerkMag.std - mean of the triaxial body gravity acceleration jerk mag standard deviations

fBodyGravityGryoMag.mean- mean of the triaxial body gravity gyro mag means 

fBodyGravityGyroMag.std - mean of the triaxial body gravity gyro mag standard deviations 

fBodyGravityGyroJerkMag.mean - mean of the triaxial body gravity gyro jerk mag means

fBodyGravityGyroJerkMag.std - mean of the triaxial body gravity gyro jerk mag standard deviations

#Original Read Me that accompanied that data sets used:

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
