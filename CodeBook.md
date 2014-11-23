### Codebook for Getting and Cleaning Data Project
========================================================

The original data set [see License section below]  consists of accelerometer and the gyroscope measurements from the samsung galaxy phone that each of the 30 subjects were carrying while thery were performing each of the 6 activities of Walking, Sitting, Walking_upstairs, Laying, Standing, Walking_downstairs  There are 561 columns in the original data set, which are measurements and  functions applied on these measurements  such as Mean, Standard Deviation, Max, Min etc. 

The tidy data which is described in detail, below consists of only the Mean and Standard Deviation of the accelerometer and Gyroscope measurements of   the 30 subjects from the original data set, each of whom performed 6 activities Walking, Sitting, Walking_upstairs, Laying, Standing, Walking_downstairs (30*6 =180 rows) .The data set has the average for each Standard deviation/Mean measurement, by activity and subject. 

Following transformations were done to the variables from the original data set

-Replaced mean, std with Mean, Std respectively

-Removed () and -  


The format of the measurements in the tidy data is as follows and is in camel case i.e combination of upper and lower case. Each component of the measurement and the aggregate function (Mean, Std) starts with uppercase

-time domain or fourier tranform  t/f,  followed by the 

-Acceleration measurement BodyAcc or GravityAcc  from Accelerometer or Body acceleration component from the gyroscope i.e. t/fBodyAcc,t/fGravityAcc,t/fBodyGyro 

-body linear acceleration or angular velocity  jerk signals for the body acceleration components .e.g. t/fBodyAccJerk,t/fBodyGyroJerk

-maginitude of the signals measured in Eucledian form e.g. t/fBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag. 

-Mean or Std 

-XYZ directional components as applicable

The variables in the data set are as follows: A few of them have been described based on the naming convention above

1 activity                     	Activity label i.e. Walking, Sitting, Walking_upstairs, Laying, Standing, Walking_downstairs

2	subject                      	1 to 30

3	tBodyAccMeanX                 	Mean of the time domain Body Acceleration signal along the X direction

4	tBodyAccMeanY                  	Mean of the time domain Body Acceleration signal along the Y direction

5	tBodyAccMeanZ                 	Mean of the time domain Body Acceleration signal along the Z direction

6	tBodyAccStdX                   	Standard Deviation of the time domain Body Acceleration signal along the X direction

7	tBodyAccStdY                   	Standard Deviation of the time domain Body Acceleration signal along the Y direction

8	tBodyAccStdZ                   	Standard Deviation of the time domain Body Acceleration signal along the Z direction

9	tGravityAccMeanX               	Mean of the time domain Gravity Acceleration signal along the X direction

10	tGravityAccMeanY              	Mean of the time domain Gravity Acceleration signal along the Y direction

11	tGravityAccMeanZ               	Mean of the time domain Gravity Acceleration signal along the Z direction

12	tGravityAccStdX                	Standard Deviation of the time domain Gravity Acceleration signal along the X direction

13	tGravityAccStdY              	  Standard Deviation of the time domain Gravity Acceleration signal along the Y direction

14	tGravityAccStdZ              	  Standard Deviation of the time domain Gravity Acceleration signal along the Z direction

15	tBodyAccJerkMeanX           	  Mean of the time domain Body Acceleration Jerk signal along the X direction

16	tBodyAccJerkMeanY             	Mean of the time domain Body Acceleration Jerk signal along the Ydirection

17	tBodyAccJerkMeanZ              	Mean of the time domain Body Acceleration Jerk signal along the Z direction

18	tBodyAccJerkStdX               	Standard Deviation of the time domain Body Acceleration Jerk signal along the X direction

19	tBodyAccJerkStdY               	Standard Deviation of the time domain Body Acceleration Jerk signal along the Y direction

20	tBodyAccJerkStdZ              	Standard Deviation of the time domain Body Acceleration Jerk signal along the Z direction

21	tBodyGyroMeanX                 	
22	tBodyGyroMeanY               	
23	tBodyGyroMeanZ               	
24	tBodyGyroStdX                	
25	tBodyGyroStdY               	
26	tBodyGyroStdZ                	
27	tBodyGyroJerkMeanX           	
28	tBodyGyroJerkMeanY           	
29	tBodyGyroJerkMeanZ           	
30	tBodyGyroJerkStdX           	
31	tBodyGyroJerkStdY            	
32	tBodyGyroJerkStdZ            	
33	tBodyAccMagMean              	
34	tBodyAccMagStd               	
35	tGravityAccMagMean          	
36	tGravityAccMagStd            	
37	tBodyAccJerkMagMean          	
38	tBodyAccJerkMagStd           	
39	tBodyGyroMagMean             	
40	tBodyGyroMagStd             	
41	tBodyGyroJerkMagMean         	
42	tBodyGyroJerkMagStd          	
43	fBodyAccMeanX                  	Mean of the Fourier transform applied to the  Body Acceleration signal along the X direction

44	fBodyAccMeanY                	  Mean of the  Fourier transform applied to Body Acceleration signal along the Y direction

45	fBodyAccMeanZ               	  Mean of the  Fourier transform applied to Body Acceleration signal along the Z direction

46	fBodyAccStdX                 	  Standard Deviation of the  Fourier transform applied to Body Acceleration signal along the X direction

47	fBodyAccStdY                 	  Standard Deviation of the  Fourier transform applied to Body Acceleration signal along the Y direction

48	fBodyAccStdZ                 	  Standard Deviation of the  Fourier transform applied to Body Acceleration signal along the Z direction

49	fBodyAccMeanFreqX            	
50	fBodyAccMeanFreqY           	
51	fBodyAccMeanFreqZ            	
52	fBodyAccJerkMeanX            	
53	fBodyAccJerkMeanY            	
54	fBodyAccJerkMeanZ            	
55	fBodyAccJerkStdX            	
56	fBodyAccJerkStdY             	
57	fBodyAccJerkStdZ             	
58	fBodyAccJerkMeanFreqX        	
59	fBodyAccJerkMeanFreqY        	
60	fBodyAccJerkMeanFreqZ       	
61	fBodyGyroMeanX               	
62	fBodyGyroMeanY               	
63	fBodyGyroMeanZ               	
64	fBodyGyroStdX                	
65	fBodyGyroStdY               	
66	fBodyGyroStdZ                	
67	fBodyGyroMeanFreqX           	
68	fBodyGyroMeanFreqY           	
69	fBodyGyroMeanFreqZ           	
70	fBodyAccMagMean             	
71	fBodyAccMagStd               	
72	fBodyAccMagMeanFreq          	
73	fBodyBodyAccJerkMagMean      	
74	fBodyBodyAccJerkMagStd       	
75	fBodyBodyAccJerkMagMeanFreq 	
76	fBodyBodyGyroMagMean         	
77	fBodyBodyGyroMagStd          	
78	fBodyBodyGyroMagMeanFreq     	
79	fBodyBodyGyroJerkMagMean     	
80	fBodyBodyGyroJerkMagStd     	
81	fBodyBodyGyroJerkMagMeanFreq	

### Reference:
Are separate code books required for each data set:https://class.coursera.org/getdata-009/forum/thread?thread_id=212
Sample Code book:https://class.coursera.org/getdata-009/forum/thread?thread_id=89

### License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
