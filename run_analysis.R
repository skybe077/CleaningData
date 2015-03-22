library(dplyr)


CourseProj <- function () {
  
  # Get test and train sets 
  testSet <- getDataSet()
  trainSet <- getDataSet(type="train", x = "X_train", y = "y_train", sub = "subject_train")

  # merge both datasets into 1 by "appendage-ing" 
  # Calls CleanLabel to clean up activity labels & Column names
  # Remove (), change std to stdDev, - to _, leave the rest  
  allSet1 <- mergeSets(trainSet, testSet)
      
  # factor out Subject + activity, average values   
  allSet2 <- tidyData(allSet1)
  write.table(allSet2, file="tidyData_ET.txt", row.names = FALSE)
  
  allSet2
}


# factor out Subbject + activity, average values 
tidyData <- function(allSet1){
  allSet2 <- aggregate(allSet1, by=list(allSet1$subject, allSet1$activity, allSet1$origin), FUN=mean)
  
  allSet2$activity = NULL
  allSet2$subject = NULL
  allSet2$origin = NULL
  
  colnames(allSet2)[1:3] <- c("subject", "activity", "origin")

  allSet2
}

# Clean up activity labels & Column names
# Remove (), change std to stdDev, - to _, leave the rest  
cleanLabels <- function(colT, allSet1){
  allSet1$activity <- tolower(allSet1$activity)
    
  colT<- gsub("[^[:alnum:][:blank:]+?&/\\-]", "", colT)
  colT<- gsub("-", "_", colT)
  colT<- gsub("std", "stdDev", colT)
  
  colnames(allSet1) <-  colT

  allSet1
}

# merge both datasets into 1 by "appendage-ing" 
mergeSets <- function(trainSet, testSet){
  allSet <- rbind(trainSet, testSet)  
  
  # Extract mean & std dev measurements for each data set
  meanT <- grep("mean()", colnames(allSet), value=TRUE, fixed=TRUE)
  stdT <- grep("std()", colnames(allSet), value=TRUE, fixed=TRUE)
  colT = c(meanT, stdT, "activity", "subject", "origin")
  
  allSet1<- allSet[, colT]
  
  allSet1<- cleanLabels(colT, allSet1)
  
  allSet1
}

# Get & merge data sets
# Default to test set. 
getDataSet <- function (type="test", x = "X_test", y = "y_test", sub = "subject_test"){
  
  x_file = paste(type, "/", x, ".txt", sep="")
  y_file = paste(type, "/", y, ".txt", sep="")
  sub_file = paste(type, "/", sub, ".txt", sep="")
  
  #read in X_test
  x_set <- read.table(x_file)
  
  #read in activity_test
  activity_set <- read.table(y_file)
  
  #read in subject_test
  sub_set <- read.table(sub_file)
  
  #check rows - why?
  
  #read in features & activities labels
  features <- read.table("UCI HAR Dataset/features.txt")
  labels <- read.table("UCI HAR Dataset/activity_labels.txt")
  
  #merge activities and labels data frames to get names 
  activity_set<-inner_join(activity_set, labels, by="V1")
  #activity_test<-activity_test[2]
  
  #change colnames of x_test 
  colnames(x_set)<-features$V2
  colnames(activity_set) <-c("v1","activity")
  colnames(sub_set) <-"subject"
  
  #merge all into 1 dataset. Show Origin
  all_set <- cbind(x_set, activity_set, sub_set)
  all_set$origin <- type
  
  all_set
}
