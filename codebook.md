#Project codebook
==================

The variables in the tidy data set are:

1. Subject - The subjects involved in the study. These subjects are identified by number from 1 to 30 as there were a total of 30 participants in the study
2. Activity - There were six activities in the study ranging from walking, walking upstairs, walking downstairs, sitting, standing and laying down
3. Variable - The variables in the list are a subset of the original data from the UCI study. In order to arrive at these values, the original UCI dataset was read into r. All columns reporting the standard deviation or mean were retained. These values were then subset, using `dplyr()` by a three layer subset grouping Subject>Activity>Variable, `group_by(dfM1, Subject, Activity, variable)`. The values of these variables, (means and standard deviations from the original dataset), were averaged using the `mean()` function in r. Mean values for each Subject>Activity>Variable group for variables related to means and standard deviations, are presented in the tidy data set.

For further information on the methodology of data collection, please refer to the original file describing the data, features.txt and features_info.txt, which have been included in this repo for user convenience. 

For additional details on the steps taken in the r program, please refer to the readme.md file in this repository.

For a full view of the code, the original file, with detailed commenting, has been included in this repository.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are:

#Note the original list was condensed in this assignment to only data related to mean and standard deviation
##Furthermore, the data presented in the tidy dataset, are the means (averages) of these mean and standard deviation results.

- mean(): Mean value
- std(): Standard deviation


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

#Note the original list was condensed in this assignment to only data related to mean and standard deviation
##Furthermore, the data presented in the tidy dataset, are the means (averages) of these mean and standard deviation

- 1 tBodyAcc-mean()-X
- 2 tBodyAcc-mean()-Y
- 3 tBodyAcc-mean()-Z
- 4 tBodyAcc-std()-X
- 5 tBodyAcc-std()-Y
- 6 tBodyAcc-std()-Z
- 7 tBodyAcc-mad()-X
- 8 tBodyAcc-mad()-Y
- 9 tBodyAcc-mad()-Z
- 41 tGravityAcc-mean()-X
- 42 tGravityAcc-mean()-Y
- 43 tGravityAcc-mean()-Z
- 44 tGravityAcc-std()-X
- 45 tGravityAcc-std()-Y
- 46 tGravityAcc-std()-Z
- 81 tBodyAccJerk-mean()-X
- 82 tBodyAccJerk-mean()-Y
- 83 tBodyAccJerk-mean()-Z
- 84 tBodyAccJerk-std()-X
- 85 tBodyAccJerk-std()-Y
- 86 tBodyAccJerk-std()-Z
- 121 tBodyGyro-mean()-X
- 122 tBodyGyro-mean()-Y
- 123 tBodyGyro-mean()-Z
- 124 tBodyGyro-std()-X
- 125 tBodyGyro-std()-Y
- 126 tBodyGyro-std()-Z
- 161 tBodyGyroJerk-mean()-X
- 162 tBodyGyroJerk-mean()-Y
- 163 tBodyGyroJerk-mean()-Z
- 164 tBodyGyroJerk-std()-X
- 165 tBodyGyroJerk-std()-Y
- 166 tBodyGyroJerk-std()-Z
- 201 tBodyAccMag-mean()
- 202 tBodyAccMag-std()
- 214 tGravityAccMag-mean()
- 215 tGravityAccMag-std()
- 227 tBodyAccJerkMag-mean()
- 228 tBodyAccJerkMag-std()
- 240 tBodyGyroMag-mean()
- 241 tBodyGyroMag-std()
- 253 tBodyGyroJerkMag-mean()
- 254 tBodyGyroJerkMag-std()
- 266 fBodyAcc-mean()-X
- 267 fBodyAcc-mean()-Y
- 268 fBodyAcc-mean()-Z
- 269 fBodyAcc-std()-X
- 270 fBodyAcc-std()-Y
- 271 fBodyAcc-std()-Z
- 294 fBodyAcc-meanFreq()-X
- 295 fBodyAcc-meanFreq()-Y
- 296 fBodyAcc-meanFreq()-Z
- 345 fBodyAccJerk-mean()-X
- 346 fBodyAccJerk-mean()-Y
- 347 fBodyAccJerk-mean()-Z
- 348 fBodyAccJerk-std()-X
- 349 fBodyAccJerk-std()-Y
- 350 fBodyAccJerk-std()-Z
- 373 fBodyAccJerk-meanFreq()-X
- 374 fBodyAccJerk-meanFreq()-Y
- 375 fBodyAccJerk-meanFreq()-Z
- 424 fBodyGyro-mean()-X
- 425 fBodyGyro-mean()-Y
- 426 fBodyGyro-mean()-Z
- 427 fBodyGyro-std()-X
- 428 fBodyGyro-std()-Y
- 429 fBodyGyro-std()-Z
- 452 fBodyGyro-meanFreq()-X
- 453 fBodyGyro-meanFreq()-Y
- 454 fBodyGyro-meanFreq()-Z
- 503 fBodyAccMag-mean()
- 504 fBodyAccMag-std()
- 513 fBodyAccMag-meanFreq()
- 516 fBodyBodyAccJerkMag-mean()
- 517 fBodyBodyAccJerkMag-std()
- 526 fBodyBodyAccJerkMag-meanFreq()
- 529 fBodyBodyGyroMag-mean()
- 530 fBodyBodyGyroMag-std()
- 539 fBodyBodyGyroMag-meanFreq()
- 542 fBodyBodyGyroJerkMag-mean()
- 543 fBodyBodyGyroJerkMag-std()
- 552 fBodyBodyGyroJerkMag-meanFreq()

