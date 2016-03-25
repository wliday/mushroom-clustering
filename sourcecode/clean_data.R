row = nrow(agaricus.lepiota)
col = ncol(agaricus.lepiota)
matrix = matrix(c(0), row, col)
for(i in 1:row) {
  for(j in 1:col) {
    num = as.numeric(agaricus.lepiota[i, j])
    matrix[i,j] = num
  }
}
matrix

