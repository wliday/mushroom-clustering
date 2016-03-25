# Mushroom Clustering

### Data Set
The problem is to determine what makes a mushroom edible or not-edible. This data set includes descriptions of hypothetical samples corresponding to 23 species of gilled mushrooms in the Agaricus and Lepiota Family (pp. 500-525). Each species is identified as definitely edible, definitely poisonous, or of unknown edibility and not recommended. This latter class was combined with the poisonous one. The Guide clearly states that there is no simple rule for determining the edibility of a mushroom; no rule like ``leaflets three, let it be'' for Poisonous Oak and Ivy.### Objective: 
As noted in the writeup, there are edible, poisonous and unsure mushroom samples. Unsure samples have been labeled as poisonous in the data set. Your job is to analyze the mushroom data set and see if you can’t find the subset of poisonous samples which correspond to unsure class. You will need samples marked both edible and poisonous to make this determination.### Solutions:
Step 1: Clean data, convert all letters to numbers.

Step 2: Normalization, normalize all numbers to a small scale.

Step 3: Data reduction in with Principal Component Analysis (PCA) Method. Descend 22 attributes to 2 and 3 attributes.

Step 4.1: Cluster with k-means algorithm.

Step 4.2: Cluster with k-medoids algorithm.

Step 4.3: Classify with k-nearest neighbor algorithm.

### Results:
Original classification
| edible | poisonous |
|--------|-----------|
| 4208   | 3915      |We use three algorithms to find out the unsure proportion in mushroom data; the result is as following.##### K-meansFor the k-means algorithm, we can use two kinds of PCA features to cluster original data. Then, we can get a cluster table which contains each class number in different k of k-means. Clusters with k-means in 2, 3, 5, 7.
|                    | 2         | 3              | 5                        | 7                                  |
|--------------------|-----------|----------------|--------------------------|------------------------------------|
| k-means pcanew-2d  | 1869 6254 | 3669 2581 1873 | 1459 632 3212 1737 1083  | 1744 594 1378 2239 661 826  681    |
| k-means pcanew-3d | 3040 5083 | 3555 3013 1555 | 1372 271 3431 1901 1148  | 1739 210 1329 1911 614 991 1329    |
| k-means pcaold-2d  | 1966 6157 | 3844 2241 2038 | 1880 1541 1016 2059 1627 | 872 1562 1002  958 1282 1824  623  |
| k-means pcaold-2d  | 1970 6153 | 2038 2264 3821 | 1613 1878 1103 1475 2054 | 1558  585 1233  765 1453 1882  647 |

##### K-medoids
The result with k-medoids algorithms.

|              | 2         | 3              | 5                        | 7                               |
|--------------|-----------|----------------|--------------------------|---------------------------------|
| k-medoids-2d | 6239 1884 | 3601 2659 1863 | 3135 1134 694 1420 1740  | 863 748 678 2276 586 1233 1739  |
| k-medoids-3d | 6264 1859 | 4466 1748 1909 | 1744 1072 2065 1360 1882 | 907 1077 934 1940 1315 1740 210 |

##### K-nearest neighbor 
Accuracies with KNN algorithm, the ratio of the training set and test set tries 5:5, 6:4, 7:3.

Accuracies With two attributes after dimension reduction algorithm.

|     | 05:05  | 06:04  | 07:03  |
|-----|--------|--------|--------|
| 2   | 92.74% | 92.64% | 92.67% |
| 3   | 93.18% | 93.47% | 92.86% |
| 5   | 93.65% | 94.58% | 93.84% |
| 7   | 93.97% | 93.72% | 94.41% |
| AVG | 93.39% | 93.60% | 93.45% |
Accuracies With two attributes after dimension-reduction algorithm.

|     | 05:05  | 06:04  | 07:03  |
|-----|--------|--------|--------|
| 2   | 98.28% | 98.21% | 98.52% |
| 3   | 98.55% | 98.83% | 98.93% |
| 5   | 98.28% | 98.33% | 98.65% |
| 7   | 98.57% | 98.22% | 98.40% |
| AVG | 98.42% | 94.40% | 98.63% |

#### Plots
#####k-means:
![3means-2d][3means-2d]

#####k-medoids:
![3medoids-2d][3medoids-2d]

#####k-nearest neighbor:
![3nn-0.6][3nn-0.6]
### Members
[@Hongqiao Li](https://github.com/Hongqiao-Li)
[@Wei Li](https://github.com/wliday)
@Tianhang Qiang
@Yang Yang

### Update Note
> #### V0.9   03/25/2015
Initialize projects, provide rough results.

[3means-2d]: https://github.com/wliday/mushroom-clustering/blob/master/screenshot/kmeans/2d/3means-2d.png
[3medoids-2d]: https://github.com/wliday/mushroom-clustering/blob/master/screenshot/kmedoids/2d/k_med_3.png
[3nn-0.6]: https://github.com/wliday/mushroom-clustering/blob/master/screenshot/knn/2d-0.6/3nn-0.6.png

