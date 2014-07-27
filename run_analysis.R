#----------------------------------------------------
#Clean up environment------
#----------------------------------------------------
rm(list = ls())
#install.packages("reshape2")
library(reshape2)


#----------------------------------------------------
#Load Data ------
#----------------------------------------------------
setwd("C:/Google Drive/71) Education/43) Coursera/Data Science - Johns Hopkins University/03 Getting and Cleaning Data/Project/")
colnames <- c("key","labels")
activity.labels <- read.table("activity_labels.txt",col.names=colnames,stringsAsFactors=FALSE)
colnames <- c("key","labels")
features.labels <- read.table("features.txt",col.names=colnames,stringsAsFactors=FALSE)

setwd("C:/Google Drive/71) Education/43) Coursera/Data Science - Johns Hopkins University/03 Getting and Cleaning Data/Project/test")
colnames <- c("subject")
subject.test <- read.table("subject_test.txt",col.names=colnames,stringsAsFactors=FALSE)
colnames <- features.labels$labels
measure.test <- read.table("X_test.txt",col.names=colnames,stringsAsFactors=FALSE)
colnames <- c("activity")
activity.test <- read.table("y_test.txt",col.names=colnames,stringsAsFactors=FALSE)
activity.test.text <- activity.test
for (i in 1:6){activity.test.text$activity[which(activity.test==activity.labels$key[i])] <- activity.labels$labels[i]}
features.test <- cbind(subject.test,activity.test.text,measure.test)

setwd("C:/Google Drive/71) Education/43) Coursera/Data Science - Johns Hopkins University/03 Getting and Cleaning Data/Project/train")
colnames <- c("subject")
subject.train <- read.table("subject_train.txt",col.names=colnames,stringsAsFactors=FALSE)
colnames <- features.labels$labels
measure.train <- read.table("X_train.txt",col.names=colnames,stringsAsFactors=FALSE)
colnames <- c("activity")
activity.train <- read.table("y_train.txt",col.names=colnames,stringsAsFactors=FALSE)
activity.train.text <- activity.train
for (i in 1:6){activity.train.text$activity[which(activity.train==activity.labels$key[i])] <- activity.labels$labels[i]}
features.train <- cbind(subject.train,activity.train.text,measure.train)

features.total <- rbind(features.test,features.train)

#-----------------------------------------------------
#Extract Data ------
#-----------------------------------------------------
extract.col <- c(1,2,3:8,43:48,83:88,123:128,163:168,203,204,216,217,229,230,242,243,255,256,268:273,347:352,426:431,505,506,518,519,531,532,544,545)
features.extract <- features.total[,extract.col]

#-----------------------------------------------------
#Reshape Data -------
#-----------------------------------------------------

features.melt <- melt(features.extract,id.vars=c("subject","activity"))
features.cast <- dcast(features.melt,subject + activity ~ variable, fun.aggregate=mean)

setwd("C:/Google Drive/71) Education/43) Coursera/Data Science - Johns Hopkins University/03 Getting and Cleaning Data/Project/")
write.csv(features.cast,file="FeaturesExtraction.txt",row.names=FALSE)
