#Course Project Readme#
---

Course: Getting and Cleaning Data 

User: Edwin Tam 

Github URL: https://github.com/skybe077/CleaningData

Coursera profile: https://www.coursera.org/user/i/85db0de11cdecf496c46ca1f28de7d6a

---

##Overview##
---  
This course project focuses on creating a tidy dataset from 2 datasets in "Human Activity Recognition Using Smartphones Dataset".

Instructions are to:

1. Merge Train and Test datasets
2. Extract mean and std deviation measurements 
3. Describe Activity labels 
4. Label dataset variables appropriately 
5. Get the Average of each variable for each activity and each subject


This Readme describes the files, usage and functions to fulfil above instructions. 

##Files##
---
**1. Project.R**
R file that contains wrapper and helper functions used to merge, transform and clean the original datasets
URL: https://github.com/skybe077/CleaningData/blob/master/Project.R

**2. tidyData_ET.csv**
Tidied dataset for evaluation. There are 69 fields with 180 observations. 
Metadata fields (3): subject, activity, origin.
Data fields (66): The average of Mean and Standard Deviation measurements 
URL: https://github.com/skybe077/CleaningData/blob/master/tidyData_ET.csv

**3. Codebook.md** 
Explanation of variables and data in tidyData_ET dataset.
URL: https://github.com/skybe077/CleaningData/blob/master/Codebook.md

**4. Readme.md**
Overview of what's going on. You're reading me now! 

##Usage##
---

1. Run wrapper function to execute  
	Function: CourseProj()
2. Read Test and Train datasets. Merges each dataset with their respective subject and activity dataset
	Function: getDataSet(...)
3. Merge Test and Train datasets into 1 big dataset - allSet. Extract Mean and Std Dev measurements from this dataset.
	Function: mergeSet()
4. Clean up variable labels in allSet dataset. 
	Function: cleanLabels()
5. Find the average of measurements in allSet Dataset. Categorise observations with metadata: "subject", "activity", "origin" 
	Function: tidyData()
6. Write tidy dataset to CSV file. Return tidied dataset to calling environment

##Functions##
---
Library: dplyr

**1. getDataSet(type="test", x = "X_test", y = "y_test", sub = "subject_test")**
Return a dataset that collates subject, activity and measurements for a Dataset type. 
The dataset also includes an "origin" column documenting the subject's original Dataset type (either Test or "Train") 
This function assumes that the datasets are stored in your current working directory. Default dataset to merge is "Test". 

Parameters 
type		the type of dataset - either Test or Train 
x, y, sub  	filenames to read data into R

Returns
1 data frame of all measurements with this metadata: subject, activity, origin

**2. mergeSets(trainSet, testSet)** 
Takes 2 datasets and merges them into 1 super dataset.
It then subsets Mean, Std Dev measuremtents and metadata (subject, activity, and origin) from this dataset.

Parameters 
trainSet	Data Frame of training database
testSet		Data Frame of test database

Returns
1 merged data frame containing only Mean and Std Dev measurements.

3. cleanLabels(allSet1)
Cleans activity labels & Column names by:
a. Removing "()"
b. Change "std" to "stdDev", "-" to "_"
It returns a vector of column names.

Parameters 
allSet1		Data Frame of merged data

Returns
Vector of column names

4. tidyData(allSet1)
Splits the dataset by "subject, activity, origin"
Applies the Mean function to the split dataset
Combines summarised averages into 1 dataset and returns it to the calling function

Parameters 
allSet1		Data Frame of merged data

Returns
1 data frame with averaged values of measurements. 

5. CourseProj()
Wrapper function to execute instructions. 
Writes the tidy dataset to a CSV file.

Returns
1 data frame of tidied data



