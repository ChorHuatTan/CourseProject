# use the group_by, summerise and pipeline functions
library(dplyr)

# use read.table with pre-defined column names options ("col.names") to load all datasets
# reading features dataset
featuresDf<-read.table('data\\features.txt',col.names=c('No','Features'))

# reading activities dataset
activitiesDf<-read.table('data\\activity_labels.txt', col.names=c('No', 'Activities'))

# Prepare list of features as to be used as column names for measurement datasets
# convert factor to character
featureNames  <- featuresDf$Features

# make activity labels lowercase
activityNames <- tolower(activitiesDf$Activities)

# reading training datasets
trainMeasurementsDf <- read.table('data\\X_train.txt', col.names=featureNames)
trainActivitiesDf   <- read.table('data\\y_train.txt', col.names='Activity') 
trainVolunteersDf   <- read.table('data\\subject_train.txt', col.names='VolunteerNo')

# reading testing datasets
testMeasurementsDf <- read.table('data\\X_test.txt', col.names=featureNames)
testActivitiesDf   <- read.table('data\\y_test.txt', col.names='Activity')
testVolunteersDf   <- read.table('data\\subject_test.txt', col.names='VolunteerNo')


# Step 1 - merge train & test datasets into a large dataset

# combining all the associated training & testing datasets (rows) using rbind()
combinedMeasurementsDf<-rbind(trainMeasurementsDf, testMeasurementsDf)
combinedActivitiesDf <-rbind(trainActivitiesDf, testActivitiesDf)
combinedVolunteersDf <-rbind(trainVolunteersDf, testVolunteersDf)

# combining all the associated datasets (columns) into one large dataset using cbind
combinedDf<-cbind(combinedVolunteersDf, combinedActivitiesDf, combinedMeasurementsDf)

# Step 2 - extract mean & std from measurement dataset

# extract all the mean and std columns into new extractedDf per instructions
# copy VolunteerNo & Activity columns as well
extractedDf <- combinedDf[, grep('VolunteerNo|Activity|std|mean', names(combinedDf))]

# Step 3 - Uses descriptive activity names to name the activities in the data set

# make "Activity" column of combinedDf from "integer" to "factor"
extractedDf$Activity <- factor(extractedDf$Activity)

# assign the levels with activityNames
levels(extractedDf$Activity) <- activityNames

# Step 4 - Appropriately labels the data set with descriptive variable names

# the followings are ways to make the variable names more descriptive
# 1. expand variable prefixed "t" and "f" to more descriptive "time" and "freq" respectively 
# 2. remove the creptic (.-()) characters from variable names
# 3. captilise the first character of "mean" & "std" to make them more prominent and readable

# use REGEX to replace t with time & f with freq and remove ".-()"  in the variable names
featureNames<-names(extractedDf)
featureNames  %>% sub('^[t]','time', .)  %>% sub('^[f]', 'freq', .)  %>% sub('mean', 'Mean', .) %>% sub('std', 'Std', .) %>% gsub('[-|().]', '', .) -> featureNames

# update the variable names on the extractedDf
names(extractedDf) <- featureNames

# create tidy.txt file
extractedDf %>% write.table(file='data\\tidyDataset1.txt', row.names=FALSE)

# Step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# use group_by and summerise functions to compute the mean of every activity for each volunteer
extractedDf %>% group_by(VolunteerNo, Activity) %>% summarise_all(list(mean='mean')) -> tidy2Df

# create tidy.txt file
tidy2Df %>% write.table(file='data\\tidyDataset2.txt', row.names=FALSE)

