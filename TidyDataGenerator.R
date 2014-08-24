#Step 1, set the working directory
setwd("~/Desktop/R/UCI HAR Dataset/getdata006-CourseProject")

#Step 2, read test files into r
setwd(paste(getwd(),"/test",sep=""))

#Step 3, read the X and Y test files into a dataframe
#Note, the dimensions of this file are 2947 x 561 with too
#many elements to table - this is the primary data file
df1 <- read.table("X_test.txt", sep="",header=FALSE)
#Note, the dimensions of this file are 2947 x 1 
#the table break this into 6 buckets - these are the activity types
df2 <- read.table("y_test.txt", sep="",header=FALSE)
#Note, the dimensions are 2947 x 1
#the table breaks into 9 buckets - integers under 31
#these are the study participant IDs
df3 <- read.table("subject_test.txt", sep="",header=FALSE)
#The instructions have stated that data should be
#ordered as data, then subject, then activity
df_master <- data.frame(df1,df3,df2)

#Repeat this step for training data
#Move up a directory
setwd("../")
#Then repeat the data acquisition steps as above
setwd(paste(getwd(),"/train",sep=""))
#Note, the dimensions of this file are 7352 x 561 
#many elements to table - this is the primary data file
df1 <- read.table("X_train.txt", sep="",header=FALSE)
#Note, the dimensions of this file are 7352 x 1 
#the table break this into 6 buckets - these are the activity types
df2 <- read.table("y_train.txt", sep="",header=FALSE)
#Note, the dimensions are 7352 x 1
#the table breaks into 21 buckets - integers under 31
#these are the study participant IDs
df3 <- read.table("subject_train.txt", sep="",header=FALSE)
temp <- data.frame(df1,df3,df2)
#now bind test and train together
df_master <- rbind(df_master,temp)

#Now get the features labels
setwd("../")
features <- read.table("features.txt", sep="",header=FALSE)
features <- as.character(features$V2)
names(df_master) <- c(features,"Subject","Activity")
subSetter <- grep("mean|std",features)
dfM1 <- df_master[,c(subSetter,562,563)]

#Hadley Wickham is my hero
require(reshape2)
dfM1 <- melt(dfM1, 
             id.vars = c("Subject", "Activity")
             )

#Now assign descriptive names to activities
dfM1$Activity = factor(dfM1$Activity)
dfM1$Activity = factor(dfM1$Activity,
                       labels=c("Walking",
                                "Walking Upstairs",
                                "Walking Downstairs",
                                "Sitting","Standing",
                                "Laying Down"))
require(dplyr)

#tidy <- ddply(dfM1, c("Subject", "Activity"), summarise,
      #mean = mean(value))
output <- group_by(dfM1, Subject, Activity, variable)
tidy <- summarise(output, value = mean(value))

write.table(tidy, file = "tidy_data.txt",row.name=FALSE)
