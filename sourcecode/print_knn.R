print_knn = function (label_matrix, two_dim_attrs_matrix, trainrate, cluster_num) {
  traindata = two_dim_attrs_matrix[1 : trunc(8123 * trainrate),]
  testdata = two_dim_attrs_matrix[(trunc(8123 * trainrate) + 1) : 8123,]
  
  trainlabel = label_matrix[1 : trunc(8123 * trainrate)]
  testlabel = label_matrix[ trunc(8123 * trainrate) + 1 : 8123]
  
  #result = character(8123)
  #result = data.frame(result)
  
  testlabel_knn = knn(traindata, testdata, trainlabel, cluster_num)
  
  result = data.frame(testlabel_knn)
  df0 = data.frame(testdata)
  df1 = data.frame(traindata)
  result$pca1 = df0$PC1
  result$pca2 = df0$PC2
  
  result1 = data.frame(trainlabel)
  result1$pca1 = df1$PC1
  result1$pca2 = df1$PC2
  
  #count = 0
  
  #for(i in 1 : length(result$testlabel_knn))
  #{
  #  if(testlabel[i] == result$testlabel_knn[i])
  #    count = count + 1;
  #}
  write.csv(result1,"~/Documents/big data/Project 2/nn2_train_70_2D.csv")
  write.csv(result,"~/Documents/big data/Project 2/nn2_test_70_2D.csv")
  #print(count / (trunc(8123 * trainrate) + 1))
  #g1 = ggplot(result, aes(x = pca1, y = pca2)) + geom_point(aes(colour = factor(testlabel_knn)))
  #g2 = ggplot(result1, aes(x = pca1, y = pca2)) + geom_point(aes(colour = factor(trainlabel)))
  #multiplot(g2, g1, cols=2)
}