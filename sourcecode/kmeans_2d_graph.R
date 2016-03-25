
kmeans_graph = function (label_matrix, two_dim_attrs_matrix, cluster_num) {
  result = character(8123)
  result = data.frame(result)
  
  kc_label_clusters = kmeans(label_matrix, 2, nstart = 1)
  m1 = matrix(kc_label_clusters$cluster)
  result$label_clusters = m1
  
  kc_attrs_clusters = kmeans(two_dim_attrs_matrix, cluster_num, nstart = 1)
  print(kc_attrs_clusters$size)
  m2 = matrix(kc_attrs_clusters$cluster)
  result$attrs_clusters = m2
  
  df0 = data.frame(two_dim_attrs_matrix)
  result$pca1 = df0$PC1
  result$pca2 = df0$PC2
  
  ggplot(result, aes(x = pca1, y = pca2, colour = factor(attrs_clusters))) + geom_point()
}


