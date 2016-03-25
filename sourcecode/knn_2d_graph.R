knn_graph = function (label_matrix, two_dim_attrs_matrix, trainrate, cluster_num) {
  
  mixed_matrix = cbind(label_matrix, two_dim_attrs_matrix)
  mixed_matrix.df = data.frame(mixed_matrix)
  random_matrix = mixed_matrix.df[sample(nrow(mixed_matrix.df)),]
  label_matrix = random_matrix[, 1]
  col_num = ncol(random_matrix)
  two_dim_attrs_matrix = random_matrix[, 2:col_num]
  
  traindata = two_dim_attrs_matrix[1 : trunc(8123 * trainrate),]
  testdata = two_dim_attrs_matrix[(trunc(8123 * trainrate) + 1) : 8123,]
  
  trainlabel = label_matrix[1 : trunc(8123 * trainrate)]
  testlabel = label_matrix[ trunc(8123 * trainrate) + 1 : 8123]
  
  result = character(8123)
  result = data.frame(result)
  
  testlabel_knn = knn(traindata, testdata, trainlabel, cluster_num)
  
  #m1 = matrix(kc_label_clusters$cluster)
  #result$label_clusters = m1
  
  #kc_attrs_clusters = kmeans(two_dim_attrs_matrix, cluster_num, nstart = 1)
  #print(testlabel_knn)
  #print(testdata)
  #m2 = matrix(kc_attrs_clusters$cluster)
  #result$attrs_clusters = m2
  result = data.frame(testlabel_knn)
  #oo1 = nrow(result)
  #print(oo1)
  df0 = data.frame(testdata)
  #oo2 = nrow(df0)
  #print(oo2)
  df1 = data.frame(traindata)
  result$pca1 = df0$PC1
  result$pca2 = df0$PC2
  
  result1 = data.frame(trainlabel)
  result1$pca1 = df1$PC1
  result1$pca2 = df1$PC2
  
  #print(result$testlabel_knn)
  #print(testlabel)
  count = 0
  #print(ncol(testlabel))
  #print(length(result$testlabel_knn))
  for(i in 1 : length(result$testlabel_knn))
  {
    if(testlabel[i] == result$testlabel_knn[i])
      count = count + 1;
  }
  #print(count)
  print(count / (trunc(8123 * (1 - trainrate)) + 1))
  g1 = ggplot(result, aes(x = pca1, y = pca2)) + geom_point(aes(colour = factor(testlabel_knn)))
  g2 = ggplot(result1, aes(x = pca1, y = pca2)) + geom_point(aes(colour = factor(trainlabel)))
  multiplot(g2, g1, cols=2)
}