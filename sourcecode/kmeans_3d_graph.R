kmeans_three_dim_graph = function(label_matrix, three_dim_attrs_matrix, cluster_num) {
  result = character(8123)
  result = data.frame(result)
  
  kc_label_clusters = kmeans(label_matrix, 2, nstart = 1)
  m1 = matrix(kc_label_clusters$cluster)
  result$label = m1
  
  kc_attrs_clusters = kmeans(three_dim_attrs_matrix, cluster_num, nstart = 1)
  print(kc_attrs_clusters)
  m2 = matrix(kc_attrs_clusters$cluster)
  result$attrs = m2
  
  df0 = data.frame(three_dim_attrs_matrix)
  result$pca1 = df0$PC1
  result$pca2 = df0$PC2
  result$pca3 = df0$PC3
  
  plot3d(result$pca1, result$pca2, result$pca3, xlab="pca1", ylab="pca2", zlab="pca3", col=as.integer(result$attrs)+1)
}

