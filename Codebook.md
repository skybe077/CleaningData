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

| Label | **subject**  | **activity** | **origin** |
| ------------- | ------------- | ------------- | ------------- |
| **Description** | unique IDs for volunteers   | Activity done by volunteer | Subject source dataset | 
| **Type** | Number | Character | Character | 
| **Value** | Starts from 1   | walking; walking_upstairs; walking_downstairs; sitting; standing; laying  | test; train | 



####Measurements (66)####
Averages of all Means and Std Dev measurements from the originating datasets. 

The data is based on accelerometer (tAcc) and gyroscope (tGyro) signals. These signals are then divided into body and gravity acceleration signals (tBodyAcc and tGravityAcc)of which Jerk signals (tBodyAccJerk, tBodyGyroJerk) are derived alongside these magnitude (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). A Fast Fourier Transform was applied and derived these variables (fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag).

**Naming conventions** 

1. _mean_ - Mean measurement
2. _stdDev_ - Standard Deviation measurement
3. _XYZ - Measurements in the corresponding direction
4. t - time set
5. f - Fast Fourier Transform set 

| **Label** | **tBodyAcc_mean_XYZ**  | **tGravityAcc_mean_XYZ** | | 
|:------------- | ------------- | ------------- |
| **Description** | Time set for average Body Linear Acceleration. Individual axis measurements (e.g. _X, _Y, _Z).  | Time set for mean Gravity Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). |  | 
| **Type** | Double | Double | Double | 


| **Label** | **tBodyAccJerk_mean_XYZ**  | **tBodyGyro_mean_XYZ** | **tBodyGyroJerk_mean_XYZ** |
|:------------- | ------------- | ------------- | ------------- |
| **Description** | Time set for mean Body Acceleration Jerk. Individual axis measurements (e.g. _X, _Y, _Z).  | Time set for mean Body Gyroscope. Individual axis measurements (e.g. _X, _Y, _Z). | Time set for mean Body Gyroscope Jerk. Individual axis measurements (e.g. _X, _Y, _Z). | 
| **Type** | Double | Double | Double | 


| **Label** | **tBodyAccMag_mean**  | **tGravityAccMag_mean** | **tBodyAccJerkMag_mean** |
|:------------- | ------------- | ------------- | ------------- |
| **Description** | Time set for mean Body Acceleration Magnitude.  | Time set for mean Gravity Acceleration Magnitude.  | Time set for mean Body Acceleration Jerk Magnitude. | 
| **Type** | Double | Double | Double | 

| **Label** | **tBodyGyroMag_mean**  | **tBodyGyroJerkMag_mean** |  
|:------------- | ------------- | ------------- | ------------- | 
| **Description** | Time set for mean Body Gyroscope Magnitude.  | Time set for mean Body Gyroscope Jerk Magnitude.  |  
| **Type** | Double | Double | 




**fBodyAcc_mean_XYZ**
Fast Fourier Time set for mean Body Acceleration in XYZ axis.

*values*
Double 

**fBodyAccJerk_mean_XYZ**
Fast Fourier Time set for mean Body Acceleration Jerk in XYZ axis.

*values*
Double 

**fBodyGyro_mean_XYZ**
Fast Fourier Time set for mean Body Gyroscope in XYZ axis.

*values*
Double 

**fBodyAccMag_mean**
Fast Fourier Time set for mean Body Acceleration magnitude.

*values*
Double 

**fBodyBodyAccJerkMag_mean**
Fast Fourier Time set for mean Body Acceleration Jerk magnitude.

*values*
Double 

**fBodyBodyGyroMag_mean**
Fast Fourier Time set for mean Body Gyroscope magnitude.

*values*
Double 

**fBodyBodyGyroJerkMag_mean**
Fast Fourier Time set for mean Body Gyroscope Jerk magnitude.

*values*
Double 


| **Label** | **tBodyAcc_stdDev_XYZ** | **tGravityAcc_stdDev_XYZ** | | 
|:------------- | ------------- | ------------- | ------------- |
| **Description** | Time set for standard deviation Body Linear Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). | Time set for standard deviation Gravity Acceleration. Individual axis measurements (e.g. _X, _Y, _Z). |  | 
| **Type** | Double | Double | Double | 


| **Label** | **tBodyAccJerk_stdDev_XYZ**  | **tBodyGyro_stdDev_XYZ** | **tBodyGyroJerk_stdDev_XYZ** |
|:------------- | ------------- | ------------- | ------------- |
| **Description** | Time set for standard deviation Body Acceleration Jerk. Individual axis measurements (e.g. _X, _Y, _Z).  | Time set for standard deviation Body Gyroscope. Individual axis measurements (e.g. _X, _Y, _Z). | Time set for standard deviation Body Gyroscope Jerk. Individual axis measurements (e.g. _X, _Y, _Z). | 
| **Type** | Double | Double | Double | 

| **Label** | **tBodyAccMag_stdDev** | **tGravityAccMag_stdDev** | **tBodyAccJerkMag_stdDev** |
|:------------- | ------------- | ------------- | ------------- |
| **Description** | Time set for standard deviation Body Acceleration magnitude. Individual axis measurements (e.g. _X, _Y, _Z).  | Time set for standard deviation Gravity Acceleration magnitude. Individual axis measurements (e.g. _X, _Y, _Z). | Time set for standard deviation Body Acceleration Jerk magnitude. Individual axis measurements (e.g. _X, _Y, _Z). | 
| **Type** | Double | Double | Double | 




**tBodyGyroMag_stdDev**
Time set for standard deviation Body Gyroscope magnitude. 

*values*
Double 

**tBodyGyroJerkMag_stdDev**
Time set for standard deviation Body Gyroscope Jerk magnitude. 

*values*
Double 

**fBodyAcc_stdDev_XYZ**
Fast Fourier Time set for standard deviation Body Acceleration in XYZ axis. 

*values*
Double 

**fBodyAccJerk_stdDev_XYZ**
Fast Fourier Time set for standard deviation Body Acceleration Jerk in XYZ axis. 

*values*
Double 

**fBodyGyro_stdDev_XYZ**
Fast Fourier Time set for standard deviation Body Gyroscope in XYZ axis. 

*values*
Double 

**fBodyAccMag_stdDev**
Fast Fourier Time set for standard deviation Body Acceleration magnitude. 

*values*
Double 

**fBodyBodyAccJerkMag_stdDev**
Fast Fourier Time set for standard deviation Body Acceleration Jerk magnitude. 

*values*
Double 

**fBodyBodyGyroMag_stdDev**
Fast Fourier Time set for standard deviation Body Gyroscope magnitude. 

*values*
Double 

**fBodyBodyGyroJerkMag_stdDev**
Fast Fourier Time set for standard deviation Body Gyroscope Jerk magnitude. 

*values*
Double 
