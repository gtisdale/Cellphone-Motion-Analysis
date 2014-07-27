==============================================
Mean and Standard Deviation Extraction for
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==============================================


#### OVERVIEW
The original experiments for this data set were conducted at the Non Linear Complex Systems Laboatory of DITEN - Universita degli Studi de Genova by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio and Luca Oneto.

The goal of this work is to create a classification algorithm which can determine the activity in which a cellphone user is engaged by examining readings from the cellphone's accelerometer and gyroscope.  To create the data set, 30 subjects have been engaged in 6 specific activities while wearing their cellphones.  The accelromeer and gyroscope tracks were then analyzed to create a signature for each activity.  The data was then divided into training and test sets, the training set was used to train the algorithm and then the algorithm was used to identify activities from the test set.

#### EXPERIMENTAL DETAILS
The experimental details are described in the original README.txt file attached to the original data set.  Essentially 30 subjects were equipped with cellphones which they wore while performing 6 different activities.  The accelerometer and gyroscope readings were then analyzed to create signatures for each activity

#### DATA SET
The data from this experiment consists of accelerometer and gyroscope data for each of the 30 subjects.  The subects were engaged in each of the following six activies:

LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS

The data set exhibited here is a derivation of the orignal data set.  It include data for all 30 subjects performing each of the six activities. The variables include:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyBodyAccJerkMag
fBodyBodyGyroMag
fBodyBodyGyroJerkMag

Only the mean and standard deviation have been retained for each variable.  A detailed description of each variable may be found in CodeBook.txt.

The data is provided in tidy data form with each row representing a subject and activity and the columns representing the associated measurements on each subject and activity.

#### DESCRIPTION OF PROCESSING ALGORITHM
The algorithm for preparing the data is called run_analysis.R.  This algorithm is divided into for sections:
#1) Clean up environment 
   Cleans up the environment and loads libraries.
#2) Load Data
   Loads the data.  First paragraph loads the activity and feature labels.  
   Second paragraph loads the test data and relabels the activities with text labels.
   Third paragraph load the train data and relabels the activities with text labels.
#3)Extract Data
   Extracts the specific data for this data set using the column numbers for the appropriate variables.
#4) Reshape Data
   Reshapes the data and creates tidy data form and then writes the output file


#### CITATION FOR ORIGINAL RESEARCH

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

