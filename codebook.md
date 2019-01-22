# run_analysis.R Output Code Book

1. `subject` - numbered subject id, 1-30                     
2. `activity` - indicates the type of activity done when data was collected

3 - 68 are all assembled using the following formula:

* `time` indicates a time domain signal
* `freq` indicates a frequency domain signal, generated using Fast Fourier Transform
* `BodyAcc` indicates body accelerometer signals 
* `GravityAcc` indicates gravity accelerometer signals
* `BodyGyro` indicates body gyroscope signals
* `Jerk` indicates jerk signals, derived from liner acceleration and angular velocity
* `Mag` indicates the magnitude of a jerk signal, calculated using the Euclidean norm
* `mean` indicates that this is the mean value of the measure
* `std` indicates that this is the standard deviation of the measure
* `X`, `Y`, and `Z` indicate one direction in the 3-axial plane

3. `timeBodyAccMeanX`
4. `timeBodyAccMeanY`
5. `timeBodyAccMeanZ`
6. `timeBodyAccStdX `
7. `timeBodyAccStdY`
8. `timeBodyAccStdZ`
9. `timeGravityAccMeanX`
10. `timeGravityAccMeanY`
11. `timeGravityAccMeanZ`
12. `timeGravityAccStdX`
13. `timeGravityAccStdY`
14. `timeGravityAccStdZ`
15. `timeBodyAccJerkMeanX`
16. `timeBodyAccJerkMeanY`
17. `timeBodyAccJerkMeanZ`
18. `timeBodyAccJerkStdX`
19. `timeBodyAccJerkStdY`
20. `timeBodyAccJerkStdZ`
21. `timeBodyGyroMeanX`
22. `timeBodyGyroMeanY`
23. `timeBodyGyroMeanZ`
24. `timeBodyGyroStdX`
25. `timeBodyGyroStdY`
26. `timeBodyGyroStdZ`
27. `timeBodyGyroJerkMeanX`
28. `timeBodyGyroJerkMeanY`
29. `timeBodyGyroJerkMeanZ`
30. `timeBodyGyroJerkStdX`
31. `timeBodyGyroJerkStdY`
32. `timeBodyGyroJerkStdZ`
33. `timeBodyAccMagMean`
34. `timeBodyAccMagStd`
35. `timeGravityAccMagMean`
36. `timeGravityAccMagStd`
37. `timeBodyAccJerkMagMean`
38. `timeBodyAccJerkMagStd`
39. `timeBodyGyroMagMean`
40. `timeBodyGyroMagStd`
41. `timeBodyGyroJerkMagMean`
42. `timeBodyGyroJerkMagStd`
43. `freqBodyAccMeanX`
44. `freqBodyAccMeanY`
45. `freqBodyAccMeanZ`
46. `freqBodyAccStdX`
47. `freqBodyAccStdY`
48. `freqBodyAccStdZ`
49. `freqBodyAccJerkMeanX`
50. `freqBodyAccJerkMeanY`
51. `freqBodyAccJerkMeanZ`
52. `freqBodyAccJerkStdX`
53. `freqBodyAccJerkStdY`
54. `freqBodyAccJerkStdZ`
55. `freqBodyGyroMeanX`
56. `freqBodyGyroMeanY`
57. `freqBodyGyroMeanZ`
58. `freqBodyGyroStdX`
59. `freqBodyGyroStdY`
60. `freqBodyGyroStdZ`
61. `freqBodyAccMagMean`
62. `freqBodyAccMagStd`
63. `freqBodyBodyAccJerkMagMean`
64. `freqBodyBodyAccJerkMagStd`
65. `freqBodyBodyGyroMagMean`
66. `freqBodyBodyGyroMagStd`
67. `freqBodyBodyGyroJerkMagMean`
68. `freqBodyBodyGyroJerkMagStd`