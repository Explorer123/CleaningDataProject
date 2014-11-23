## README file for Getting and Cleaning Data Project

 
### Raw Data:

The data for this project comes from the experiments that were carried out with a group of 30 volunteers[19-48 years]. 
30% of data was randomly selected for test data and 70 % for training data set.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The embedded accelerometer and gyroscope were used to get the measurements that were then processed to get the 561 features that this data set comprises.
 

Samsung Data is available at UCI HAR Dataset folder in the same folder as this README file

Copy the UCI HAR Dataset to your current working directory, if not already available

The samsung data as provided for the assignment will be available in the following directory structure under the UCI HAR Data set folder. 

test:Has test data along with activity and subject data/numbers that performed the activity

train:Has training data along with activity and subject numbers that performed the activities

The activity labels(Walking, Sitting etc) corresponding to the activity numbers and the 561 feature names are available in the main UCI HAR Dataset folder



### Running the analysis
The script was developed in Windows 7, and compiled with RStudio Version 0.98.105/R version
2.15.2

From either the R studio/R Console, execute the following command..

source('run_analysis.R', echo=TRUE)


The script run_Analysis.R
1.reads the training and test set measurement data, binds the training and testing subjects and activity numbers to the respective data sets and merges them first to combine a complete data set of test and training Data. [using cbind and rbind]

2.extracts only the measurements on the mean and standard deviation for each measurement[using grep command on the column names]

3.Replaces activity numbers with descriptive activity names to name the activities in the data set[by adjusting factor levels]

4.Provides descriptive variable names for features/measurements by 
      #Checking for duplicates. 
      #Keeping as camel case i.e.first letter of measurement, attribute or aggregate (std,mean) is uppercase
      #Removing () and  -

5.Reshapes the data from step 4 with subject, activity, variable( i.e measurement), value ( i,e. measurement value). Next, average  of each variable for each activity and each subject is calculated and tidy dataset is created. melt and cast functions are used to do this operation


Note: If you have not installed library(reshape), this script will install reshape package.If there are issues in installing reshape from R Studio, pls try from R console or download directly from CRAN to your R library folder. 

UCI HAR Dataset needs to be in the current working directory


### Tidy data Output


If running from RStudio, data should available in the "tidy_data" tab. If "htm" not found message comes up, please  use the "Show in new Window Icon" in the tab ribbon and the tidy data will show up in the new window. 

If running from R console, the tidy data will appear in the console

### References:
Descriptive Variable name thread: https://class.coursera.org/getdata-009/forum/thread?thread_id=179
Tidy Data paper:http://vita.had.co.nz/papers/tidy-data.pdf
http://stackoverflow.com/questions/1407449/for-each-group-summarise-means-for-all-variables-in-dataframe-ddply-split
David's Project FAQ: https://class.coursera.org/getdata-009/forum/thread?thread_id=58
Tidy data and the assignment:https://class.coursera.org/getdata-009/forum/thread?thread_id=192
      
