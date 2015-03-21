#Course Project CodeBook#

1. Problems with originating datasets 
 - variable names 
 - data representations 
 
 2. Variable labels, and data explanations 
 - 69 columns!!!! Hmmm....
 
 3. Source material

##Codebook Overview##
==========================================
Codebook based on data extracted and transformed from "Human Activity Recognition Using Smartphones Dataset" training and test datasets.
The spreadsheet (tidyData_ET.csv) contains 180 observations - one observation per (subject, activity, origin) metadata set.
Each observation has 66 measurements (e.g. tBodyAcc_mean_X, tGravityAcc_mean_Y etc) averaged from the originating dataset. 

##Transformation##
-----------------------------------------
The originating datasets (Test, Train) had the following issues:
1. Not merged with subject and activity datasets
2. Activity datasets used code instead of descriptive info
3. Labels were somewhat messy normalised 
4. Measurements were not collapsed into (subject, activity) pairs

See readMe.txt	--> *Usage* section for steps that merged, transformed and tidied these datasets into the final dataset.

##Variables##
==========================================
Describes variable labels and what goes into each label.
These labels are divided into 2 categories: Metadata & Measurements 

###Metadata###
Information about the volunteers and activities that they took part in. It also includes the originating dataset. 

**subject**
unique IDs for volunteers 

*values*
Number 

Starts from 1 

**activity**
The type of activity that the volunteer is doing 

*values*
Character 

1. walking
2. walking_upstairs
3. walking_downstairs 
4. sitting
5. standing
6. laying

**origin**
Subject source dataset

*values*
Character 

1. test
2. train


###Measurements###
Averages of all Means and Std Dev measurements from the originating datasets. 

The data is based on accelerometer (tAcc) and gyroscope (tGyro) signals. These signals are then divided into body and gravity acceleration signals (tBodyAcc and tGravityAcc)of which Jerk signals (tBodyAccJerk, tBodyGyroJerk) are derived alongside these magnitude (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform was applied and derived these variables (fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag).

**Naming conventions** 
1. _mean_ - Mean measurement
2. _stdDev_ - Standard Deviation measurement
3. _XYZ - Measurements in the corresponding direction
4. t - time set
5. f - Fast Fourier Transform set 

**tBodyAcc_mean_XYZ**
3 measurements of a Time set for average Body Linear Acceleration in XYZ axis.
Double 

**tBodyAcc_stdDev_XYZ**
3 measurements of a Time set for standard deviation Body Linear Acceleration in XYZ axis. 
Double 
	
**tGravityAcc_mean_XYZ**
3 measurements of a Time set for mean Gravity Acceleration in XYZ axis. 
Double 

tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
Time set for mean Body Acceleration Jerk in XYZ axis. 
Double 

tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
Time set for mean Body Gyroscope in XYZ axis. 
Double 

tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
Time set for mean Body Gyroscope Jerk in XYZ axis. 
Double 

tBodyAccMag_mean
Time set for mean Body Acceleration Magnitude.
Double 

tGravityAccMag_mean
Time set for mean Gravity Acceleration Magnitude. 
Double 

tBodyAccJerkMag_mean
Time set for mean Body Acceleration Jerk Magnitude. 
Double 

tBodyGyroMag_mean
Time set for mean Body Gyroscope Magnitude. 
Double 

tBodyGyroJerkMag_mean
Time set for mean Body Gyroscope Jerk Magnitude.
Double 

fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
Fast Fourier Time set for mean Body Acceleration in XYZ axis.
Double 

fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
Fast Fourier Time set for mean Body Acceleration Jerk in XYZ axis.
Double 

fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
Fast Fourier Time set for mean Body Gyroscope in XYZ axis.
Double 

fBodyAccMag_mean
Fast Fourier Time set for mean Body Acceleration magnitude.
Double 

fBodyBodyAccJerkMag_mean
Fast Fourier Time set for mean Body Acceleration Jerk magnitude.
Double 

fBodyBodyGyroMag_mean
Fast Fourier Time set for mean Body Gyroscope magnitude.
Double 

fBodyBodyGyroJerkMag_mean
Fast Fourier Time set for mean Body Gyroscope Jerk magnitude.
Double 

tGravityAcc_stdDev_X
tGravityAcc_stdDev_Y
tGravityAcc_stdDev_Z
Time set for standard deviation Gravity Acceleration in XYZ axis. 
Double 

tBodyAccJerk_stdDev_X
tBodyAccJerk_stdDev_Y
tBodyAccJerk_stdDev_Z
Time set for standard deviation Body Acceleration Jerk in XYZ axis. 
Double 

tBodyGyro_stdDev_X
tBodyGyro_stdDev_Y
tBodyGyro_stdDev_Z
Time set for standard deviation Body Gyroscope in XYZ axis. 
Double 

tBodyGyroJerk_stdDev_X
tBodyGyroJerk_stdDev_Y
tBodyGyroJerk_stdDev_Z
Time set for standard deviation Body Gyroscope Jerk in XYZ axis. 
Double 

tBodyAccMag_stdDev
Time set for standard deviation Body Acceleration magnitude. 
Double 

tGravityAccMag_stdDev
Time set for standard deviation Gravity Acceleration magnitude. 
Double 

tBodyAccJerkMag_stdDev
Time set for standard deviation Body Acceleration Jerk magnitude. 
Double 

tBodyGyroMag_stdDev
Time set for standard deviation Body Gyroscope magnitude. 
Double 

tBodyGyroJerkMag_stdDev
Time set for standard deviation Body Gyroscope Jerk magnitude. 
Double 

fBodyAcc_stdDev_X
fBodyAcc_stdDev_Y
fBodyAcc_stdDev_Z
Fast Fourier Time set for standard deviation Body Acceleration in XYZ axis. 
Double 

fBodyAccJerk_stdDev_X
fBodyAccJerk_stdDev_Y
fBodyAccJerk_stdDev_Z
Fast Fourier Time set for standard deviation Body Acceleration Jerk in XYZ axis. 
Double 

fBodyGyro_stdDev_X
fBodyGyro_stdDev_Y
fBodyGyro_stdDev_Z
Fast Fourier Time set for standard deviation Body Gyroscope in XYZ axis. 
Double 

fBodyAccMag_stdDev
Fast Fourier Time set for standard deviation Body Acceleration magnitude. 
Double 

fBodyBodyAccJerkMag_stdDev
Fast Fourier Time set for standard deviation Body Acceleration Jerk magnitude. 
Double 

fBodyBodyGyroMag_stdDev
Fast Fourier Time set for standard deviation Body Gyroscope magnitude. 
Double 

fBodyBodyGyroJerkMag_stdDev
Fast Fourier Time set for standard deviation Body Gyroscope Jerk magnitude. 
Double 
