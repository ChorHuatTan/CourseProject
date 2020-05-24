Codebook.MD

This codebook describes the variables in the 2 completed tidy datasets, tidyDataset1.txt and tidyDataset2.txt.

run_analysis.R
--------------
The 'run_analysis.R' script reads the information for the following datasets to generate the 2 tidy datasets:- 

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'X_train.txt': Training set.
- 'y_train.txt': Training labels.
- 'subject_train.txt' : subjects whose data were selected in Train dataset
- 'X_test.txt': Test set.
- 'y_test.txt': Test labels.
- 'subject_test.txt : subjects whose data were selected in Test dataset

tidyDataset1.txt
----------------
The tidyDataset1.txt dataset is a subset of the resultant dataset from combining the Train and Test datasets. It contains the means and standard deviations of variables measured in the experiment. There are 79 features with the VolunteerNo and Activities. Below is the list of the variables in tidyDataset1.txt. 

1.  VolunteerNo - volunteer identifier/subject identifier
2.  Activity    - activities (walking, walking_upstairs, walking_downstairs, sitting, standing & laying)
3.  timeBodyAccMeanX' 
4.  timeBodyAccMeanY' 
5.  timeBodyAccMeanZ' 
6.  timeBodyAccStdX' 
7.  timeBodyAccStdY' 
8.  timeBodyAccStdZ' 
9.  timeGravityAccMeanX' 
10. timeGravityAccMeanY' 
11. timeGravityAccMeanZ' 
12. timeGravityAccStdX' 
13. timeGravityAccStdY' 
14. timeGravityAccStdZ' 
15. timeBodyAccJerkMeanX' 
16. timeBodyAccJerkMeanY' 
17. timeBodyAccJerkMeanZ' 
18. timeBodyAccJerkStdX' 
19. timeBodyAccJerkStdY' 
20. timeBodyAccJerkStdZ' 
21. timeBodyGyroMeanX' 
22. timeBodyGyroMeanY' 
23. timeBodyGyroMeanZ' 
24. timeBodyGyroStdX' 
25. timeBodyGyroStdY' 
26. timeBodyGyroStdZ' 
27. timeBodyGyroJerkMeanX' 
28. timeBodyGyroJerkMeanY' 
29. timeBodyGyroJerkMeanZ' 
30. timeBodyGyroJerkStdX' 
31. timeBodyGyroJerkStdY' 
32. timeBodyGyroJerkStdZ' 
33. timeBodyAccMagMean' 
34. timeBodyAccMagStd' 
35. timeGravityAccMagMean' 
36. timeGravityAccMagStd' 
37. timeBodyAccJerkMagMean' 
38. timeBodyAccJerkMagStd' 
39. timeBodyGyroMagMean' 
40. timeBodyGyroMagStd' 
41. timeBodyGyroJerkMagMean' 
42. timeBodyGyroJerkMagStd' 
43. freqBodyAccMeanX' 
44. freqBodyAccMeanY' 
45. freqBodyAccMeanZ' 
46. freqBodyAccStdX' 
47. freqBodyAccStdY' 
48. freqBodyAccStdZ' 
49. freqBodyAccMeanFreqX' 
50. freqBodyAccMeanFreqY' 
51. freqBodyAccMeanFreqZ' 
52. freqBodyAccJerkMeanX' 
53. freqBodyAccJerkMeanY' 
54. freqBodyAccJerkMeanZ' 
55. freqBodyAccJerkStdX' 
56. freqBodyAccJerkStdY' 
57. freqBodyAccJerkStdZ' 
58. freqBodyAccJerkMeanFreqX' 
59. freqBodyAccJerkMeanFreqY' 
60. freqBodyAccJerkMeanFreqZ' 
61. freqBodyGyroMeanX' 
62. freqBodyGyroMeanY' 
63. freqBodyGyroMeanZ' 
64. freqBodyGyroStdX' 
65. freqBodyGyroStdY' 
66. freqBodyGyroStdZ' 
67. freqBodyGyroMeanFreqX' 
68. freqBodyGyroMeanFreqY' 
69. freqBodyGyroMeanFreqZ' 
70. freqBodyAccMagMean' 
71. freqBodyAccMagStd' 
72. freqBodyAccMagMeanFreq' 
73. freqBodyBodyAccJerkMagMean' 
74. freqBodyBodyAccJerkMagStd' 
75. freqBodyBodyAccJerkMagMeanFreq' 
76. freqBodyBodyGyroMagMean' 
77. freqBodyBodyGyroMagStd' 
78. freqBodyBodyGyroMagMeanFreq' 
79. freqBodyBodyGyroJerkMagMean' 
80. freqBodyBodyGyroJerkMagStd' 
81. freqBodyBodyGyroJerkMagMeanFreq'


tidyDataset2.txt
----------------
tidyDataset2.txt is the average of each variable by activity and subject (Volunteers). 
The following is the variables in the dataset. Variables from column 3 through 81 are the average of each activity of every participants. The dataset is sorted by VolunteerNo (subject) and within each subject is the average values of each activity. 

VolunteerNo Activity               'timeBodyAccMeanX_mean    ....   'freqBodyBodyGyroJerkMagMeanFreq_mean'
      1     walking    
      1     walking_upstairs
      1     walking_downstairs
      1     sitting
      1     standing
      1     laying     
      2     walking    
      2     walking_upstairs
      2     walking_downstairs
      2     sitting
      2     standing
      2     laying
      .
      .
      .
     30     walking    
     30     walking_upstairs
     30     walking_downstairs
     30     sitting
     30     standing
     30     laying


Below are the variables in the tidyDataset2.txt.

1.  VolunteerNo - volunteer identifier/subject identifier
2.  Activity    - activities (walking, walking_upstairs, walking_downstairs, sitting, standing & laying)
3.  timeBodyAccMeanX_mean 
4.  timeBodyAccMeanY_mean 
5.  timeBodyAccMeanZ_mean 
6.  timeBodyAccStdX_mean 
7.  timeBodyAccStdY_mean 
8.  timeBodyAccStdZ_mean 
9.  timeGravityAccMeanX_mean 
10. timeGravityAccMeanY_mean 
11. timeGravityAccMeanZ_mean 
12. timeGravityAccStdX_mean 
13. timeGravityAccStdY_mean 
14. timeGravityAccStdZ_mean 
15. timeBodyAccJerkMeanX_mean 
16. timeBodyAccJerkMeanY_mean 
17. timeBodyAccJerkMeanZ_mean 
18. timeBodyAccJerkStdX_mean 
19. timeBodyAccJerkStdY_mean 
20. timeBodyAccJerkStdZ_mean 
21. timeBodyGyroMeanX_mean 
22. timeBodyGyroMeanY_mean 
23. timeBodyGyroMeanZ_mean 
24. timeBodyGyroStdX_mean 
25. timeBodyGyroStdY_mean 
26. timeBodyGyroStdZ_mean 
27. timeBodyGyroJerkMeanX_mean 
28. timeBodyGyroJerkMeanY_mean 
29. timeBodyGyroJerkMeanZ_mean 
30. timeBodyGyroJerkStdX_mean 
31. timeBodyGyroJerkStdY_mean 
32. timeBodyGyroJerkStdZ_mean 
33. timeBodyAccMagMean_mean 
34. timeBodyAccMagStd_mean 
35. timeGravityAccMagMean_mean 
36. timeGravityAccMagStd_mean 
37. timeBodyAccJerkMagMean_mean 
38. timeBodyAccJerkMagStd_mean 
39. timeBodyGyroMagMean_mean 
40. timeBodyGyroMagStd_mean 
41. timeBodyGyroJerkMagMean_mean 
42. timeBodyGyroJerkMagStd_mean 
43. freqBodyAccMeanX_mean 
44. freqBodyAccMeanY_mean 
45. freqBodyAccMeanZ_mean 
46. freqBodyAccStdX_mean 
47. freqBodyAccStdY_mean 
48. freqBodyAccStdZ_mean 
49. freqBodyAccMeanFreqX_mean 
50. freqBodyAccMeanFreqY_mean 
51. freqBodyAccMeanFreqZ_mean 
52. freqBodyAccJerkMeanX_mean 
53. freqBodyAccJerkMeanY_mean 
54. freqBodyAccJerkMeanZ_mean 
55. freqBodyAccJerkStdX_mean 
56. freqBodyAccJerkStdY_mean 
57. freqBodyAccJerkStdZ_mean 
58. freqBodyAccJerkMeanFreqX_mean 
59. freqBodyAccJerkMeanFreqY_mean 
60. freqBodyAccJerkMeanFreqZ_mean 
61. freqBodyGyroMeanX_mean 
62. freqBodyGyroMeanY_mean 
63. freqBodyGyroMeanZ_mean 
64. freqBodyGyroStdX_mean 
65. freqBodyGyroStdY_mean 
66. freqBodyGyroStdZ_mean 
67. freqBodyGyroMeanFreqX_mean 
68. freqBodyGyroMeanFreqY_mean 
69. freqBodyGyroMeanFreqZ_mean 
70. freqBodyAccMagMean_mean 
71. freqBodyAccMagStd_mean 
72. freqBodyAccMagMeanFreq_mean 
73. freqBodyBodyAccJerkMagMean_mean 
74. freqBodyBodyAccJerkMagStd_mean 
75. freqBodyBodyAccJerkMagMeanFreq_mean 
76. freqBodyBodyGyroMagMean_mean 
77. freqBodyBodyGyroMagStd_mean 
78. freqBodyBodyGyroMagMeanFreq_mean 
79. freqBodyBodyGyroJerkMagMean_mean 
80. freqBodyBodyGyroJerkMagStd_mean 
81. freqBodyBodyGyroJerkMagMeanFreq_mean
