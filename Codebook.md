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
---
The originating datasets (Test, Train) had the following issues:
1. Not merged with subject and activity datasets
2. Activity datasets used code instead of descriptive info
3. Labels were somewhat messy normalised 
4. Measurements were not collapsed into (subject, activity) pairs

See readMe.txt	--> *Usage* section for steps that merged, transformed and tidied these datasets into the final dataset.

##Variables##
---
Describes variable labels and what goes into each label. There are 69 labels. 
These labels are divided into 2 categories: Metadata (3) & Measurements (66) 

####Metadata (3)####
Information about the volunteers and activities that they took part in. It also includes information about the originating dataset. 


| **Label** | **Description** |  **Type** | **Value** |
| :------------- | :------------- | :------------- | :------------- |
subject  | unique IDs for volunteers   | Number | Starts from 1   |
activity | Activity done by volunteer | Character |   walking; walking_upstairs; walking_downstairs; sitting; standing; laying  |
origin | Subject source dataset | Character | test; train | 



####Measurements (66)####
Averages of all Means and Std Dev measurements from the originating datasets. 

The data is based on accelerometer (tAcc) and gyroscope (tGyro) signals. These signals are then divided into body and gravity acceleration signals (tBodyAcc and tGravityAcc)of which Jerk signals (tBodyAccJerk, tBodyGyroJerk) are derived alongside these magnitude (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform was applied and derived these variables (fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag).

**Naming conventions** 

1. mean - Mean measurement
2. stdDev - Standard Deviation measurement
3. _XYZ - Measurements in the corresponding direction
4. t - time set
5. f - Fast Fourier Transform set 

#####Time Set#####
**Mean**

| **Label** | **Description** |  **Type** |
|:------------- | :------------- | :------------- | 
tBodyAcc_mean_XYZ | Body Linear Acceleration. Individual axis measurements (e.g. _X, _Y, _Z).  | Double | 
tGravityAcc_mean_XYZ | Gravity Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). |   Double |
tBodyAccJerk_mean_XYZ  | Body Acceleration Jerk. Individual axis measurements (e.g. _X, _Y, _Z).  | Double |
tBodyGyro_mean_XYZ | Body Gyroscope. Individual axis measurements (e.g. _X, _Y, _Z). | Double |
tBodyGyroJerk_mean_XYZ |Body Gyroscope Jerk. Individual axis measurements (e.g. _X, _Y, _Z). | Double |
tBodyAccMag_mean  | Body Acceleration Magnitude.  | Double |
tGravityAccMag_mean | Gravity Acceleration Magnitude.  | Double |
tBodyAccJerkMag_mean | Body Acceleration Jerk Magnitude. | Double |
tBodyGyroMag_mean  | Body Gyroscope Magnitude.  | Double |
tBodyGyroJerkMag_mean | Body Gyroscope Jerk Magnitude.  |  Double |

**Standard Deviation**
 
| **Label** | **Description** |  **Type** |
|:------------- | :------------- | :------------- | 
tBodyAcc_stdDev_XYZ | Body Linear Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). | Double |
tGravityAcc_stdDev_XYZ | Gravity Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). | Double | 
tBodyAccJerk_stdDev_XYZ  | Body Acceleration Jerk. Individual axis measurements (e.g. _X, _Y, _Z).  | Double | 
tBodyGyro_stdDev_XYZ | Body Gyroscope. Individual axis measurements (e.g. _X, _Y, _Z). | Double | 
tBodyGyroJerk_stdDev_XYZ | Body Gyroscope Jerk. Individual axis measurements (e.g. _X, _Y, _Z). | Double | 
tBodyAccMag_stdDev | Body Acceleration magnitude. |Double | 
tGravityAccMag_stdDev | Gravity Acceleration magnitude.  | Double | 
tBodyAccJerkMag_stdDev | Body Acceleration Jerk magnitude. |Double | 
tBodyGyroMag_stdDev | Body Gyroscope magnitude. |Double | 
tBodyGyroJerkMag_stdDev | Body Gyroscope Jerk magnitude. |Double | 

####Fast Fourier Time Set####
**Mean**

| **Label** | **Description** |  **Type** |
|:------------- | :------------- | :------------- | 
fBodyAcc_mean_XYZ | Body Acceleration in XYZ axis. Individual axis measurements (e.g. _X, _Y, _Z).  | Double | 
fBodyAccJerk_mean_XYZ | Body Acceleration Jerk in XYZ axis. Individual axis measurements (e.g. _X, _Y, _Z).  | Double |
fBodyGyro_mean_XYZ | Body Gyroscope in XYZ axis. Individual axis measurements (e.g. _X, _Y, _Z).  | Double |
fBodyAccMag_mean | Body Acceleration magnitude. | Double |
fBodyBodyAccJerkMag_mean | Body Acceleration Jerk magnitude. | Double | 
fBodyBodyGyroMag_mean | Body Gyroscope magnitude. | Double | 
fBodyBodyGyroJerkMag_mean | Body Gyroscope Jerk magnitude. | Double | 

**Standard Deviation**

| **Label** | **Description** |  **Type** |
|:------------- | :------------- | :------------- | 
fBodyAcc_stdDev_XYZ |  Body Acceleration in XYZ axis. Individual axis measurements (e.g. _X, _Y, _Z).  |  Double |
fBodyAccJerk_stdDev_XYZ | Body Acceleration Jerk. Individual axis measurements (e.g. _X, _Y, _Z).  |  Double |
fBodyGyro_stdDev_XYZ | Body Gyroscope. Individual axis measurements (e.g. _X, _Y, _Z). |  Double |
fBodyAccMag_stdDev | Body Acceleration magnitude.  |  Double |
fBodyBodyAccJerkMag_stdDev | Body Acceleration Jerk magnitude. |  Double |
fBodyBodyGyroMag_stdDev | Body Gyroscope magnitude. | Double |
fBodyBodyGyroJerkMag_stdDev | Body Gyroscope Jerk magnitude. |   Double |

