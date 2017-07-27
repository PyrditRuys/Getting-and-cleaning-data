## Clean up workspace
  rm(list=ls())
  
## Loading of usefull package
  library(dplyr)

## Creates the folders and files
  ##assign first file object
    loadingfile<- "assignement_getting_data.zip"

  ##Check if file already exists, download url to file
    if(!file.exists(loadingfile)) {
      url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(url, loadingfile, method = "auto")
    }

  ##Check if final folder is already present, if not unzip file from previous
    if (!file.exists("UCI HAR Dataset")){
      unzip(loadingfile)
    }
  
## 1 Extracts only the measurements on the mean and standard deviation for each measurement. 
      ## Load the relevant files present inside the unzipped folder and select the desired info
      ## Note: Add colnames for easiest reading
      ## Note: In order to limit data handling, select usefull variables asap, so... start with selecting them from "Features"
      ## Note: as grep and gsub will be used, transform to character the selected activity | features

          ##Activities and features
            Activity<- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityIndex", "ActivityLabels"))
            Activity_chr<- as.character(Activity[ ,2])
            Features<- read.table("UCI HAR Dataset/features.txt", col.names = c("FeatureIndex", "FeatureLabels"))
            Features_chr<- as.character(Features[ ,2])

          ## Select only on mean and std
          ## Note: as we do not know if capital and/or minimal letters are used, ignore.case = TRUE
            Selected_Features_chr<- grep("mean|std", Features_chr, ignore.case = TRUE)

          ##Generates vector name for variables         
            Selected_Features_chr_names<- Features[Selected_Features_chr,2]
            
          ## Load datasets related to Train and test situations; restrict to usefull variables; add colnames 
            ## For Train
              X_train<- read.table("UCI HAR Dataset/train/X_train.txt")[ , Selected_Features_chr]
              colnames(X_train)<- Selected_Features_chr_names
              Y_train<- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "ActivityIndex") 
              subject_train<- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectIndex")
  
            ## For Test
              X_test<- read.table("UCI HAR Dataset/test/X_test.txt")[ , Selected_Features_chr]
              colnames(X_test)<- Selected_Features_chr_names
              Y_test<- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "ActivityIndex")
              subject_test<- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectIndex")

## 2 Merges the training and the test sets to create one data set. 
  ## Group tables inside test and train
    train_group<- cbind(subject_train, Y_train, X_train)
    test_group<- cbind(subject_test, Y_test, X_test)

  ## merge all datasets
    merge_group<- rbind(train_group, test_group)

## 3 Uses descriptive activity names to name the activities in the data set
  merge_group_labels<-factor(merge_group$ActivityIndex, levels = Activity[ ,1], labels = Activity[ ,2])
  merge_group[ ,2]<- merge_group_labels

## 4 Appropriately labels the data set with descriptive variable names. 
  X<- colnames(merge_group)

    ##reshapind and "final" tidying. Here, I took advantage of the already existing "structure": first letter in capital, use long names 
      for(i in 1:length(X)){
        X[i]<-gsub("\\()","",X[i])
        X[i]<-gsub("-mean", "Mean",X[i])
        X[i]<-gsub("-std", "Std",X[i])
        X[i]<-gsub("^(t)", "Time",X[i])
        X[i]<-gsub("^(f)", "Frequency",X[i])
        X[i]<-gsub("([Gg]ravity)","Gravity",X[i])
        X[i]<-gsub("(Acc)","Acceleration",X[i])
        X[i]<-gsub("(Mag)","Magnitude",X[i])
      }
    ## Assigning final colnames
      colnames(merge_group)<-X
    
    ## Ordering
      merge_group<-arrange(merge_group, SubjectIndex, ActivityIndex)

## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
      Final_tidy_data <- merge_group %>% group_by(SubjectIndex, ActivityIndex) %>% summarize_each(funs(mean))
      write.table(Final_tidy_data, file = "./UCI HAR Dataset/Final_tidy_data.txt", row.names = FALSE)
