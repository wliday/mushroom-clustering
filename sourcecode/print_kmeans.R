print_two_dim_matrix = function(two_dim_attrs_matrix, cluster_num) {
  #result = character(8123)
  #result = data.frame(result)
  
  kc_attrs_clusters = kmeans(two_dim_attrs_matrix, cluster_num, nstart = 1)
  print(kc_attrs_clusters)
  m2 = matrix(kc_attrs_clusters$cluster)
  
  df0 = data.frame(two_dim_attrs_matrix)
  df0$label = m2
  
  write.csv(df0,"/Users/wei/Dropbox/Study/Big Data & Analytics/Project 2/Matrix/7means_two_pca_attrs_matrix.csv")
}

