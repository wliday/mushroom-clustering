get_edible_and_unsure_and_po_matrixs = function(label_matrix, two_dim_attrs_matrix) {
    label_and_two_dim_attrs_matrix = cbind(label_matrix, two_dim_attrs_matrix)
    label_and_two_dim_attrs_matrix.df = data.frame(label_and_two_dim_attrs_matrix)
    label_and_uns_and_po_matrix = subset(label_and_two_dim_attrs_matrix.df, V1 == 2)
    label_and_edible_matrix = subset(label_and_two_dim_attrs_matrix.df, V1 == 1)
    
    edible_matrix = label_and_edible_matrix[, 2:3]
    uns_and_po_matrix = label_and_uns_and_po_matrix[, 2:3]
    
    result = list(edible_matrix, uns_and_po_matrix)
    return (result)
}

get_revised_label_matrix = function(label_matrix, two_dim_attrs_matrix) {
  edible_and_unsure_and_po_matrixs = get_edible_and_unsure_and_po_matrixs(label_matrix, two_dim_attrs_matrix)
  
  edible_matrix = data.frame(edible_and_unsure_and_po_matrixs[1])
  uns_po_matrix = data.frame(edible_and_unsure_and_po_matrixs[2])
  
  
  kc_edible_matrix = kmeans(edible_matrix, 1, nstart = 1)
  edible_clusters = kc_edible_matrix$cluster
  
  add_one = function(x) {return (x + 1)}
  kc_uns_po_matrix = kmeans(uns_po_matrix, 2, nstart = 1)
  uns_and_p_clusters = lapply(kc_uns_po_matrix$cluster, add_one)
  
  x = c(edible_clusters, uns_and_p_clusters) # get list with 1, 2, 3
  y = data.frame(x) # convert list to dataframe
  z = t(y) #
  result = z[ order(as.numeric(names(x))),] # sort by rownames
  
  result = matrix(result)
  return (result)
}

