Class Project for Coursera's Getting and Cleaning the Data class
==================================================================



by Anna
----------

The class project requires downloading Human Activity Recognition Using Smartphones Dataset Version 1.0 from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

More details on the dataset are available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


The purpose of this project is to demonstrate my ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.



Class Project Requirements:
===========================
Create one R script called run_analysis.R that does the following: 

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive activity names. 

5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


This repository includes the following files
============================================

- 'README.md'

- 'run_analysis.R' : R script performing tasks described in the Project Requirements above. Run the script to obtain sought data sets. 

- 'HumanActivity_ActivityMeanAndStandardDeviationMeasurements_Full.txt' : Dataset containing results of R script, described in 1-4 above

- 'HumanActivity_AverageMeasurementsBySubjectByActivityType.txt' : Dataset containing results of R script, described in 5 above

- 'CodeBook.md' : a code book that describes the variables, the data, and any transformations I performed to clean up the data 
