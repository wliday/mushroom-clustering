d3kmed2=pam(pca3,2)

matr = character(8123)
matr = data.frame(matr)

matr$label= matrix(d3kmed2$cluster)

df0 = data.frame(d3kmed2)
matr$pca1 = df0$PC1
matr$pca2 = df0$PC2
matr$pca3 = df0$PC3

write.csv(matr,"~/Documents/d3kmed2.csv")