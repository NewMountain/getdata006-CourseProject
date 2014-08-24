getdata006-CourseProject
========================

Course Project for the Getting and Cleaning data course

This file was created to solve the problem assigned for the course project getdata006 Getting and Cleaning Data.

The code has been written to solve for 5 fundamental steps:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

To accomodate these requests my took took the following actions:

* Set the working directory to the highest level in which all data was contained
* Set the working drive to the test folder one level below working to test
* Read the test group files; x_test, y_test and subject_test, into r
* Combined these files into a single dataframe
* Set working directory up on level
* Set the working drive to the test folder one level below working to train
* Read the test group files; x_train, y_train and subject_train, into r
* Combined these files into a single dataframe
* Combined the two consolidated dataframes using rbind
* Set the working directory up a level and read the features table into R
* Attach these titles as the headers of the dataframe
* Grep these headers for standard deviation or mean
* Use the results of grep to subset columns
* Melt the data using reshape2 by subject and activity
* Assign easily readable names to the activities and labelling the numerical factors
* Use dplyr to create a group_by sequence by subject, activity and variable
* Calculate the mean of the subject,activity,variable subset
* Write this data to a text file titled "tidy_data.txt"
