Course Project Readme 

=========================================================================
Course: Getting and Cleaning Data 
User: Edwin Tam 
Github URL: 
=========================================================================

Overview  
This course project focuses on creating a tidy dataset from 2 datasets in "Human Activity Recognition Using Smartphones Dataset".
Instructions are to:
1. Merge Train and Test datasets
2. Extract mean and std deviation measurements 
3. Describe Activity labels 
4. Label dataset variables appropriately 
5. Get the Average of each variable for each activity and each subject

Scripts
=========================================================================
Library: dplyr
1. getDataSet(type="test", x = "X_test", y = "y_test", sub = "subject_test")
Return a dataset that collates subject, activity and measurements for a Dataset type. 
The dataset also includes an "origin" column documenting the subject's original Dataset type (either Test or "Train") 

The default dataset to merge is "Test". 

2. mergeSets(trainSet, testSet) 
Takes 2 datasets and merges them into 1 super dataset.
It then subsets Mean, std dev measurements and metadata (subject, activity, and origin) from this dataset.

3. cleanLabels(allSet1)
Cleans activity labels & Column names by:
a. Removing "()"
b. Change "std" to "stdDev", "-" to "_"

4. tidyData(allSet1)
Splits the dataset by "subject, activity, origin"
Applies the Mean function to the split dataset
Combines summarised values into 1 dataset and returns it to the calling function

5. CourseProj()
Wrapper function to tidy dataset. 
Writes the tidy dataset to a CSV file.

Method
===========================================================================
The scripts are follow the instructions quite closely. 
It starts from CourseProj().
1. Read Test and Train datasets with getDataSet()
2. Merges Test and Train datasets into 1 dataset - allSet - with mergeSet()
3. Clean up variable labels in allSet dataset with cleanLabels()
4. Find the mean of allSet Dataset - categorised by "subject", "activity", "origin" - with tidyData()
5. Write tidy dataset to CSV file



