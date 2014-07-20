  #install the data.table package to help merge and clean up data sets
  install.packages("data.table")

  #change this path to the directory which has your data sets after unziping the file
  #https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  #the directory below should have the train and test sub directories directories under it
  
  setwd('C:\\Users\\emilio\\Documents\\UCI HAR Dataset')
  
  #load data set features, set the columns 1 and 2 as id and label
  featureLabels <- read.table('features.txt', col.names = c('id','label'))
  
  #only select mean and standard deviation data elements per assignment instructions
  selectedMeasures <- subset(featureLabels, grepl('-(std|mean)\\(', featureLabels$label))
  
  #load activity labels, set the columns 1 and 2 as id and label
  activityLabels <- read.table('activity_labels.txt', col.names = c('id', 'label'))
  
  # Load test data files
  test.df <- read.table("test/X_test.txt")[,selectedMeasures$id]
  # Load test activty labels
  activityLabelsValues <- read.table("test/y_test.txt")[,1]
  # Load test subject data files
  subjectValues <- read.table("test/subject_test.txt")[,1]
  
  #set variable names for ease of use
  names(test.df) <- selectedMeasures$label
  test.df$subject <- factor(subjectValues)
  test.df$label <- factor(activityLabelsValues, levels=activityLabels$id, labels=activityLabels$label)
          
  # Load training data files
  training.df <- read.table("train/X_train.txt")[,selectedMeasures$id]
  # Load training activty labels
  activityLabelsValues <- read.table("train/y_train.txt")[,1]
  # Load training subject labels
  subjectValues <- read.table("train/subject_train.txt")[,1]
  
  #set variable names for ease of use
  names(training.df) <- selectedMeasures$label
  training.df$subject <- factor(subjectValues)
  training.df$label <- factor(activityLabelsValues, levels=activityLabels$id, labels=activityLabels$label)
    
  # Merge training and test data sets
  merged.df <- rbind(test.df,training.df)
  
  #convert to data table for easy filtering
  merged.dt <- data.table(merged.df)
    
  #get the average for each data set value
  tidy.dt <- merged.dt[, lapply(.SD, mean), by=list(label,subject)]
  
  # Tidy variable names
  tidy.dt.names <- names(tidy.dt)
  tidy.dt.names <- gsub('-mean', 'Mean', tidy.dt.names)
  tidy.dt.names <- gsub('-std', 'Std', tidy.dt.names)
  setnames(tidy.dt, tidy.dt.names)
  
  #set saving directory to one level above where data sets are
  setwd('..')
  
  # Save datasets
  write.csv(merged.dt, file = 'tidy.csv', row.names = FALSE)
  write.csv(tidy.dt,file = 'tidy.csv',  row.names = FALSE, quote = FALSE)
  
  final<-paste(getwd() , "/tidy.csv")
  
  print("Finished, file writen to directory:")
  print(final)
