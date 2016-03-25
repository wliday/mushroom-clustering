library("psych")
attrs_matrix = attrs_matrix[, -16]
wtrain2 = principal(attrs_matrix, nfactors = 2, residuals = FALSE, rotate = "cluster")
two_dim_attrs_matrix = wtrain2$scores

wtrain3 = principal(attrs_matrix, nfactors = 3, residuals = FALSE, rotate = "cluster")
three_dim_attrs_matrix = wtrain3$scores

