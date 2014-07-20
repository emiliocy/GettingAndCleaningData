###Getting And Cleaning Data Assignment


The purpose of this project is to merge two datasets and show a cleaned and tidy dataset. The final file with the tidy
data set is called tidy.csv

This file relates to the following article
```r
One of the most exciting areas in all of data science right now is wearable computing - see for example  this article . Companies like Fitbit, 
Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent
data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
```

This file will install the R the data.table package 

To run this process, you will need to download the data sets to be merge and then modify and then run the R script run_analysis.R

##Step by Step Instructions

1. Download the dataset 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the file, make sure the file is unziped preserving its directory structure
3. Verify the following directories are created and contain files:
	1) UCI HAR Dataset/test
	2) UCI HAR Dataset/train
	3) UCI HAR Dataset/activity_labels.txt
	4) UCI HAR Dataset/features.txt
4) Open the file run_analysis.R from the GitHub repository
	https://github.com/emiliocy/GettingAndCleaningData	
5) Edit the file using R-Studio or other text editor
6) Edit line 8 and change it to the directory where you unzipped the data set on step 2 above
	  setwd('<UNZIP DIRECTORY>\\UCI HAR Dataset')
7) Source the file run_analysis.R and run it.
8) The output file will be located in the <UNZIP DIRECTORY>\\tidy.csv
