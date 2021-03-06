# Getting-and-cleaning-data
## Assignement week 4 

### Overview
  This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:
        1) Cleans workspace and load library
        2) Downloads the dataset if it does not already exist in the working directory
        3) Loads the activity and feature info
        4) Selects varaibles (mean and std)
        5) Loads the training and the test datasets, keeping only those columns which reflect a mean or standard deviation
        6) Merges columns in each dataset (train or test) and finally merge both datasets
        7) Uses descriptive activity names to name the activities in the data set
        8) Appropriately labels the data set with descriptive variable names, Assigns final colnames and orders by "Subject" and "Activities"
        9) Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        10) Generates final tidy dataset under Final_tidy_data.txt.
### Data
    The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
    Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
    Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. 
    The experiments have been video-recorded to label the data manually. 
    The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
    The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
    The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
    From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
  
  For more information on the data set, please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
  
  For more information about the variables, data and transformations in the CodeBook.MD file.
