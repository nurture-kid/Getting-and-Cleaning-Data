Code Book
=================

DATA:
------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



DATASET 1:
----------
HumanActivity_ActivityMeanAndStandardDeviationMeasurements_Full.txt 


QUALITATIVE VARIABLES: 
-----------------------
subject: id of subject performing activity  
activity: label of activity performed by subject  

QUANTITATIVE VARIABLES:
-----------------------
mean(): Mean value and std(): Standard deviation for the following set of signals along X, Y and Z axis of motion:  
tBodyAcc  
tGravityAcc  
tBodyAccJerk  
tBodyGyro  
tBodyGyroJerk  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc  
fBodyAccJerk  
fBodyGyro  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

TRANSFORMATIONS
----------------
1. augment list of feature names with names for subject and activity
2. combine subject, activity and test set, assign names
3. repeat 2. for train set
4. merge test and training datasets by column names
5. remove datasets from 2. and 3. from memory
6. extract dataset with only mean and stdev features
7. remove full dataset from memory
8. assign descriptive names to activities in the new datasest
9. write resultant dataset to file



DATASET 2:
----------
HumanActivity_AverageMeasurementsBySubjectByActivityType.txt 


QUALITATIVE VARIABLES: 
-----------------------
subject: id of subject performing activity  
activity: label of activity performed by subject  
  
QUANTITATIVE VARIABLES:
-----------------------
Average by Subject and Activity of the following measures:  
mean(): Mean value and std(): Standard deviation for the following set of signals along X, Y and Z axis of motion:  
tBodyAcc  
tGravityAcc  
tBodyAccJerk  
tBodyGyro  
tBodyGyroJerk  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc  
fBodyAccJerk  
fBodyGyro  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

TRANSFORMATIONS
----------------
1. melt dataset obtained through transformations for DATASET 1 by subject and activity
2. cast subject and activity across all variables in the dataset, and get average for each variable
3. write resuntant dataset to file