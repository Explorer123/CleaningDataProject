  #Read features i.e. measurements from the gyroscope and acceleration & activity labels i.e Sitting, Walking etc.  
      features<-read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
      dim(features)
      activity<-read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
      
  #Read training data, assign feature names to the columns/attributes of training data
      train<-read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
      dim(train) #Training Data dimension
      colnames(train)<-features$V2  

  #Read training activity numbers corresponding to the activities walking,sitting etc. 
      train_act<-read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
      dim(train_act)
      colnames(train_act)<-"activity"
  
  #Read training subjects
      train_sub<-read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
      dim(train_sub)
      colnames(train_sub)<-"subject" 

  #Bind subjects, activity to training data set; 7352 observations of 563 variables
      train<-cbind(train, train_sub,train_act)
      dim(train)

  #Read test data, assign feature names to the columns/attributes of train data
      test<-read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
      dim(test)
      colnames(test)<-features$V2

  #Read test activity numbers corresponding to the activities walking,sitting etc. 
      test_act<-read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
      colnames(test_act)<-"activity"
      dim(test_act)

  #Read test subjects
      test_sub<-read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
      colnames(test_sub)<-"subject"
      dim(test_sub)

  #Bind subjects, activity to training data set; 2947 observations of 563 variables
      test<-cbind(test, test_sub,test_act)
      dim(test)

  #Q1:Merge test and train data to create one data set all_data
      #yields 10299(2947 training data,7352 test data) 
      #of 563 variables; 561 attributes,  subject identifier, activity lablel 
      
      all_data<-rbind(train,test)
      dim(all_data)
      

  #Q2:Extract only the measurements on the mean and standard deviation for each measurement.
       #Identify columns that have std/mean in the colname, extract only those columns in a new dataframe
      
      mean_std_cols<-grep("-mean()|-std()|subject|activity",ignore.case=TRUE,colnames(all_data))
      mean_std_df<-all_data[,mean_std_cols]  

  #Q3:Descriptive activity names to name the activities in the data set obtained from #Q2
      
      mean_std_df$activity<-as.factor(mean_std_df$activity)
      levels(mean_std_df$activity)<-activity$V2  ##activity$V2 has the descriptive activity names
     
  #Q4:Label the data set with descriptive variable names
      #Ref: https://class.coursera.org/getdata-009/forum/thread?thread_id=179
      #Check for duplicates. 
      #Keep as camel case i.e.first letter of measurement, attribute or aggregate (std,mean) is uppercase
      #Remove (), -

      which(duplicated(colnames(mean_std_df))) #list of duplicates in the data. 

      colnames(mean_std_df)<-gsub("mean","Mean",colnames(mean_std_df),ignore.case=FALSE)
      colnames(mean_std_df)<-gsub("std","Std",colnames(mean_std_df),ignore.case=FALSE)
      colnames(mean_std_df)<-gsub("-","",colnames(mean_std_df),ignore.case=FALSE)
      colnames(mean_std_df)<-gsub("\\()","",colnames(mean_std_df),ignore.case=FALSE)

  #Q5:Tidy data set with the average of each variable for each activity and each subject.
      #Ref: Tidy Data paper:http://vita.had.co.nz/papers/tidy-data.pdf
      #Ref: http://stackoverflow.com/questions/1407449/for-each-group-summarise-means-for-all-variables-in-dataframe-ddply-split
      #Melt is used on the dataframe containing mean and std to reshape the dataframe to group measurements by activity first and them subject
      #Cast is used to calculate mean for the measurements grouped by activity and subject
      #load library(reshape) for melt and cast functions; Ref:http://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them
      
      if (!require(reshape)){ 
        install.packages("reshape") 
        library(reshape)
      } 
      
      melt1<-melt(mean_std_df,id.vars=c("activity","subject"))
      tidy<-cast(activity+subject~variable,data=melt1, fun=mean)

  #Q5:Save Tidy data and View Data; 180 rows with 81 columns (Activity, Subject, 79 measurements)
      #Ref: https://class.coursera.org/getdata-009/forum/thread?thread_id=58
      
      write.table(tidy,"tidy.txt",row.names=FALSE)
      tidy_data<-read.table("tidy.txt",header=TRUE)
      View(tidy_data)
