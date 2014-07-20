#Getting and Cleaning Data
##Assignment Project Code Book 

###How to run
Please refer to the https://github.com/emiliocy/GettingAndCleaningData/blob/master/README.md for details on 
how to run the program

##Summary
This project takes a series of data sets obtain from fitness mobile devices and it merges the data sets into a single
tidy data set. For more information about the original data set please look at the article below:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

[Original Article](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
[Data Source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

This project takes a the data from a training and testing data sets. It merges the values and labels for each data set, then it 
joins both the training and test data sets in a single data set. Only mean and standard deviation measures are used for this
project. The final ~tidy~ data set contains proper column headings, row headings and values.

##Process Description
The following processes are executed against the data set in order to create the tidy data set for this project:

1. Read the test data sets X_test.txt, y_test.txt, subject_test.txt
2. Read the training data sets X_train.txt, y_train.txt, subject_train.txt
3. Join the data sets for training and test
4. Read the features.txt data set and extract only the measurements for the mean and standard deviations
5. Read the activity_labels.txt data sets and store them in a variable called activityLabels
6. Clean the column names to make them more readable

##Program Variables Used:

* featureLabels - loads the features.txt file with columns id and label
* selectedMeasures - loads only the std|mean features from the featureLabels variable
* activityLabels - loads the activity_labels.txt file  with columns id and label
* test.df - data frame for test data X_test.txt
* training.df - data frame for training data X_train.txt
* activityLabelsValues - value id's for the activity labels for the y_train.txt and y_test.txt
* subjectValues - value of the subject_train.txt and subject_test.txt files
* merged.df - merged data frame of the training.df and test.df data frames
* tidy.dt - final tidy data frame with clean names and values along with clean format

##Output Data Set Variables:
~~~
subject	
tBodyAccMeanX	
tBodyAccMeanY	
tBodyAccMeanZ	
tBodyAccStdX	
tBodyAccStdY	
tBodyAccStdZ	
tGravityAccMeanX	
tGravityAccMeanY	
tGravityAccMeanZ	
tGravityAccStdX	
tGravityAccStdY	
tGravityAccStdZ	
tBodyAccJerkMeanX	
tBodyAccJerkMeanY	
tBodyAccJerkMeanZ	
tBodyAccJerkStdX	
tBodyAccJerkStdY	
tBodyAccJerkStdZ	
tBodyGyroMeanX	
tBodyGyroMeanY	
tBodyGyroMeanZ	
tBodyGyroStdX	
tBodyGyroStdY	
tBodyGyroStdZ	
tBodyGyroJerkMeanX	
tBodyGyroJerkMeanY	
tBodyGyroJerkMeanZ	
tBodyGyroJerkStdX	
tBodyGyroJerkStdY	
tBodyGyroJerkStdZ	
tBodyAccMagMean	
tBodyAccMagStd	
tGravityAccMagMean	
tGravityAccMagStd	
tBodyAccJerkMagMean	
tBodyAccJerkMagStd	
tBodyGyroMagMean	
tBodyGyroMagStd	
tBodyGyroJerkMagMean	
tBodyGyroJerkMagStd	
fBodyAccMeanX	
fBodyAccMeanY	
fBodyAccMeanZ	
fBodyAccStdX	
fBodyAccStdY	
fBodyAccStdZ	
fBodyAccJerkMeanX	
fBodyAccJerkMeanY	
fBodyAccJerkMeanZ	
fBodyAccJerkStdX	
fBodyAccJerkStdY	
fBodyAccJerkStdZ	
fBodyGyroMeanX	
fBodyGyroMeanY	
fBodyGyroMeanZ	
fBodyGyroStdX	
fBodyGyroStdY	
fBodyGyroStdZ	
fBodyAccMagMean	
fBodyAccMagStd	
fBodyAccJerkMagMean	
fBodyAccJerkMagStd	
fBodyGyroMagMean	
fBodyGyroMagStd	
fBodyGyroJerkMagMean	
fBodyGyroJerkMagStd
~~~
