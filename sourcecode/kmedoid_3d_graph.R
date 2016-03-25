kmedoid_3d_graph = function(three_dim_attrs_matrix, cluster_num) {
  result = character(8123)
  result = data.frame(result)
  
  kmed3 = pam(three_dim_attrs_matrix, cluster_num)
  result$result = matrix(kmed3$cluster)
  
  df0 = data.frame(three_dim_attrs_matrix)
  result$pca1 = df0$PC1
  result$pca2 = df0$PC2
  result$pca3 = df0$PC3
  plot3d(result$pca1, result$pca2, result$pca3, xlab="pca1", ylab="pca2", zlab="pca3", col=as.numeric(result$result)+1)
}


