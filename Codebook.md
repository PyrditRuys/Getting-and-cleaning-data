### Code Book

    This code book includes information about the source data, the transformations performed after collecting the data and some information about the variables of the resulting data sets.
    The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
    Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
    Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz, were captured. 
    The experiments have been video-recorded to label the data manually. 
    The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
    The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
    The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
    From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Study Design

    The source data was collected from the UCI Machine Learning Repository to complete an assignment for a Coursera course "Getting and Cleaning Data" instructed by Jeff Leek and Roger Peng, John Hopkins University. 
    The assignment involved working with the data set and producing tidy data, according to Hadley Wickam gold rules. Hereunder, is a list of the achieved steps to do so.

    1) Clean up workspace, loading of usefull package
    2) Create the folders and files, load and unzip the files from Internet
    3) Extract only the measurements on the mean and standard deviation for each measurement (use "Grep" and tools from "Base")
    4) Merge the training and the test sets to create one data set (first by column ("cbind"), then by row ("rbind"))
    5) Use descriptive activity names to name the activities in the data set (Use "factor" and then use levels and labels)
    6) Appropriately label the data set with descriptive variable names (reshaping by "gsub" in a for loop)
    7) Reshaping, ordering of the data (use dplyr package, "arrange" function)
    8) From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject (Use dplyr package, with"group_by" and "summerize" functions)

### Variables list

    "1" "SubjectIndex" (1:30 listed persons)
    "2" "ActivityIndex" (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
    "3" "TimeBodyAccelerationMean-X"
    "4" "TimeBodyAccelerationMean-Y"
    "5" "TimeBodyAccelerationMean-Z"
    "6" "TimeBodyAccelerationStd-X"
    "7" "TimeBodyAccelerationStd-Y"
    "8" "TimeBodyAccelerationStd-Z"
    "9" "TimeGravityAccelerationMean-X"
    "10" "TimeGravityAccelerationMean-Y"
    "11" "TimeGravityAccelerationMean-Z"
    "12" "TimeGravityAccelerationStd-X"
    "13" "TimeGravityAccelerationStd-Y"
    "14" "TimeGravityAccelerationStd-Z"
    "15" "TimeBodyAccelerationJerkMean-X"
    "16" "TimeBodyAccelerationJerkMean-Y"
    "17" "TimeBodyAccelerationJerkMean-Z"
    "18" "TimeBodyAccelerationJerkStd-X"
    "19" "TimeBodyAccelerationJerkStd-Y"
    "20" "TimeBodyAccelerationJerkStd-Z"
    "21" "TimeBodyGyroMean-X"
    "22" "TimeBodyGyroMean-Y"
    "23" "TimeBodyGyroMean-Z"
    "24" "TimeBodyGyroStd-X"
    "25" "TimeBodyGyroStd-Y"
    "26" "TimeBodyGyroStd-Z"
    "27" "TimeBodyGyroJerkMean-X"
    "28" "TimeBodyGyroJerkMean-Y"
    "29" "TimeBodyGyroJerkMean-Z"
    "30" "TimeBodyGyroJerkStd-X"
    "31" "TimeBodyGyroJerkStd-Y"
    "32" "TimeBodyGyroJerkStd-Z"
    "33" "TimeBodyAccelerationMagnitudeMean"
    "34" "TimeBodyAccelerationMagnitudeStd"
    "35" "TimeGravityAccelerationMagnitudeMean"
    "36" "TimeGravityAccelerationMagnitudeStd"
    "37" "TimeBodyAccelerationJerkMagnitudeMean"
    "38" "TimeBodyAccelerationJerkMagnitudeStd"
    "39" "TimeBodyGyroMagnitudeMean"
    "40" "TimeBodyGyroMagnitudeStd"
    "41" "TimeBodyGyroJerkMagnitudeMean"
    "42" "TimeBodyGyroJerkMagnitudeStd"
    "43" "FrequencyBodyAccelerationMean-X"
    "44" "FrequencyBodyAccelerationMean-Y"
    "45" "FrequencyBodyAccelerationMean-Z"
    "46" "FrequencyBodyAccelerationStd-X"
    "47" "FrequencyBodyAccelerationStd-Y"
    "48" "FrequencyBodyAccelerationStd-Z"
    "49" "FrequencyBodyAccelerationMeanFreq-X"
    "50" "FrequencyBodyAccelerationMeanFreq-Y"
    "51" "FrequencyBodyAccelerationMeanFreq-Z"
    "52" "FrequencyBodyAccelerationJerkMean-X"
    "53" "FrequencyBodyAccelerationJerkMean-Y"
    "54" "FrequencyBodyAccelerationJerkMean-Z"
    "55" "FrequencyBodyAccelerationJerkStd-X"
    "56" "FrequencyBodyAccelerationJerkStd-Y"
    "57" "FrequencyBodyAccelerationJerkStd-Z"
    "58" "FrequencyBodyAccelerationJerkMeanFreq-X"
    "59" "FrequencyBodyAccelerationJerkMeanFreq-Y"
    "60" "FrequencyBodyAccelerationJerkMeanFreq-Z"
    "61" "FrequencyBodyGyroMean-X"
    "62" "FrequencyBodyGyroMean-Y"
    "63" "FrequencyBodyGyroMean-Z"
    "64" "FrequencyBodyGyroStd-X"
    "65" "FrequencyBodyGyroStd-Y"
    "66" "FrequencyBodyGyroStd-Z"
    "67" "FrequencyBodyGyroMeanFreq-X"
    "68" "FrequencyBodyGyroMeanFreq-Y"
    "69" "FrequencyBodyGyroMeanFreq-Z"
    "70" "FrequencyBodyAccelerationMagnitudeMean"
    "71" "FrequencyBodyAccelerationMagnitudeStd"
    "72" "FrequencyBodyAccelerationMagnitudeMeanFreq"
    "73" "FrequencyBodyBodyAccelerationJerkMagnitudeMean"
    "74" "FrequencyBodyBodyAccelerationJerkMagnitudeStd"
    "75" "FrequencyBodyBodyAccelerationJerkMagnitudeMeanFreq"
    "76" "FrequencyBodyBodyGyroMagnitudeMean"
    "77" "FrequencyBodyBodyGyroMagnitudeStd"
    "78" "FrequencyBodyBodyGyroMagnitudeMeanFreq"
    "79" "FrequencyBodyBodyGyroJerkMagnitudeMean"
    "80" "FrequencyBodyBodyGyroJerkMagnitudeStd"
    "81" "FrequencyBodyBodyGyroJerkMagnitudeMeanFreq"
    "82" "angle(tBodyAccelerationMean,Gravity)"
    "83" "angle(tBodyAccelerationJerkMean),GravityMean)"
    "84" "angle(tBodyGyroMean,GravityMean)"
    "85" "angle(tBodyGyroJerkMean,GravityMean)"
    "86" "angle(X,GravityMean)"
    "87" "angle(Y,GravityMean)"
    "88" "angle(Z,GravityMean)"
    
### Variables units

      Activity = factor
      Subject = integer 
      Other = numeric
