library(dplyr)

## read in train files and compile into a single data set
x_train <- read.table("data/train/X_train.txt")
y_train <- read.table("data/train/y_train.txt")
names(y_train) <- ("activity")
subject_train <- read.table("data/train/subject_train.txt")
names(subject_train) <- ("subject")
train_data <- cbind(subject_train, y_train, x_train)

## read in test files and compile into a single data set
x_test <- read.table("data/test/X_test.txt")
y_test <- read.table("data/test/y_test.txt")
names(y_test) <- ("activity")
subject_test <- read.table("data/test/subject_test.txt")
names(subject_test) <- ("subject")
test_data <- cbind(subject_test, y_test, x_test)

## bind train and test data together
all_data <- rbind(train_data, test_data)

## select only mean and std columns along with our subject, activity, and phase labels
final_data <- select(all_data, subject, activity, V1, V2, V3, V4, 
                        V5, V6, V41, V42, V43, V44, V45, V46, V81, 
                        V82, V83, V84, V85, V86, V121, V122, V123, 
                        V124, V125, V126, V161, V162, V163, V164, V165, 
                        V166, V201, V202, V214, V215, V227, V228, V240, 
                        V241, V253, V254, V266, V267, V268, V269, V270, 
                        V271, V345, V346, V347, V348, V349, V350, V424, 
                        V425, V426, V427, V428, V429, V503, V504, V516, 
                        V517, V529, V530, V542, V543)

## rename activity labels to match the string values provided by the dataset
final_data$activity <- recode(final_data$activity, 
                                 `1` = "walking", 
                                 `2` = "walking_upstairs", 
                                 `3` = "walking_downstairs", 
                                 `4` = "sitting", 
                                 `5` = "standing", 
                                 `6` = "laying")

## rename all columns, using the dataset's features info as a guide
names(final_data) <- c("subject", "activity", "timeBodyAccMeanX", 
                       "timeBodyAccMeanY", "timeBodyAccMeanZ", 
                       "timeBodyAccStdX", "timeBodyAccStdY",
                       "timeBodyAccStdZ", "timeGravityAccMeanX",
                       "timeGravityAccMeanY", "timeGravityAccMeanZ",
                       "timeGravityAccStdX", "timeGravityAccStdY", 
                       "timeGravityAccStdZ", "timeBodyAccJerkMeanX", 
                       "timeBodyAccJerkMeanY", "timeBodyAccJerkMeanZ", 
                       "timeBodyAccJerkStdX", "timeBodyAccJerkStdY",
                       "timeBodyAccJerkStdZ", "timeBodyGyroMeanX", 
                       "timeBodyGyroMeanY", "timeBodyGyroMeanZ",
                       "timeBodyGyroStdX", "timeBodyGyroStdY",
                       "timeBodyGyroStdZ", "timeBodyGyroJerkMeanX", 
                       "timeBodyGyroJerkMeanY", "timeBodyGyroJerkMeanZ",
                       "timeBodyGyroJerkStdX", "timeBodyGyroJerkStdY", 
                       "timeBodyGyroJerkStdZ", 
                       "timeBodyAccMagMean", "timeBodyAccMagStd", 
                       "timeGravityAccMagMean", "timeGravityAccMagStd",
                       "timeBodyAccJerkMagMean", "timeBodyAccJerkMagStd",
                       "timeBodyGyroMagMean", "timeBodyGyroMagStd",
                       "timeBodyGyroJerkMagMean", "timeBodyGyroJerkMagStd",
                       "freqBodyAccMeanX", "freqBodyAccMeanY",
                       "freqBodyAccMeanZ", "freqBodyAccStdX",
                       "freqBodyAccStdY", "freqBodyAccStdZ",
                       "freqBodyAccJerkMeanX", "freqBodyAccJerkMeanY",
                       "freqBodyAccJerkMeanZ", "freqBodyAccJerkStdX",
                       "freqBodyAccJerkStdY", "freqBodyAccJerkStdZ",
                       "freqBodyGyroMeanX", "freqBodyGyroMeanY",
                       "freqBodyGyroMeanZ", "freqBodyGyroStdX",
                       "freqBodyGyroStdY", "freqBodyGyroStdZ",
                       "freqBodyAccMagMean", "freqBodyAccMagStd",
                       "freqBodyBodyAccJerkMagMean", "freqBodyBodyAccJerkMagStd",
                       "freqBodyBodyGyroMagMean", "freqBodyBodyGyroMagStd",
                       "freqBodyBodyGyroJerkMagMean", "freqBodyBodyGyroJerkMagStd")


## group data set by subject, then activity and then take mean over all other variables
by_subject <- final_data %>% group_by(subject, activity) %>% summarize_all(funs(mean))

## save data table into a file in the data folder
write.table(by_subject, "data/tidyDataBySubjects.txt", row.name=FALSE)