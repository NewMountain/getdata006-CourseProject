#Project codebook
==================

The variables in the tidy data set are:

1. Subject - The subjects involved in the study. These subjects are identified by number from 1 to 30 as there were a total of 30 participants in the study
2. Activity - There were six activities in the study ranging from walking, walking upstairs, walking downstairs, sitting, standing and laying down
3. Variable - The variables in the list are a subset of the original data from the UCI study. In order to arrive at these values, the original UCI dataset was read into r. All columns reporting the standard deviation or mean were retained. These values were then subset, using `dplyr()` by a three layer subset grouping Subject>Activity>Variable, `group_by(dfM1, Subject, Activity, variable)`. The values of these variables, (means and standard deviations from the original dataset), were averaged using the `mean()` function in r. Mean values for each Subject>Activity>Variable group for variables related to means and standard deviations, are presented in the tidy data set.

For further information on the methodology of data collection, please refer to the original file describing the data, features.txt and features_info.txt, which have been included in this repo for user convenience. 

For additional details on the steps taken in the r program, please refer to the readme.md file in this repository.

For a full view of the code, the original file, with detailed commenting, has been included in this repository.
