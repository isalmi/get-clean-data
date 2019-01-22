# run_analysis.R -- isalmi -- Getting & Cleaning Data Assignment

The purpose of this script is to convert the Human Activity Recognition Using
Smartphones Dataset (ARUSD) into a tidy dataset that summarizes means and standard
deviations for each participant in each activity.


## Key Assumptions and Files
It is assumed that when the script is run, the working directory contains a 
folder entitled "data", which contains the files avaialable from ARUSD in their
provided directory structure:
  * activity_labels.txt
  * features.txt
  * features_info.txt
  * README.txt
  * test, a folder
  * train, a folder
The "test" and "train" folders each contain their repsective "subject_", "X_",
and "y_" .txt files. 

The dplyr package must be installed in local directory. 


## Script Procedure
When the script is run, it will generate file "tidyData.csv" in the "data" 
directory, with variables as described in the codebook. The script executes the
following steps:

1. Reads in the subject_train, X_train, and y_train files. X_ represents all the 
data variables collected, with 7352 observations of 561 variables. The subject_
file contains the subject ids for each observation, with 7352 observations of 
onevariable. The y_ file contains the activity factors that denote the activity
undertaken by the subject when the observation was made. Thus, the three data
frames are joined using cbind() such that subject_ becomes the first column, 
labled "subject", y_ the second, labeled "activity", and the columns from X_
following, retaining their numbered variable names. 

2. The same process is repeated for the _test files, which contain 2947 
observations of the same variables as the _train files.

3. The train and test data frames are combined using rbind to create all_data,
a data frame containing 10299 observations of 68 variables. 

4. A new data frame final_data is created by selecting only the variables from
all_data that represent means and standard deviations of each measurement, along
with the identifier variables subject and activity. The variables from 
the original codebook ending in mean() and std() (sometimes followed by -X, -Y, 
or -Z) are kept, as they represent the results when mean and standard deviation
functions were called on the raw data. 

5. The activity variable is refactored using descriptive character strings, guided
by the designations in activity_labels.txt.

6. The measure variables are all renamed with descriptive character strings,
guided by the original codebook. 

8. 








