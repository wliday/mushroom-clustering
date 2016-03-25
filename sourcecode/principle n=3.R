wtrain2<-principal(temp2, nfactors=3, residuals = FALSE, rotate = "cluster")
wtrain2

qqqq=data.frame(wtrain2$scores)
result2=character(8123)
result2=data.frame(result2)
result2$pca1=qqqq$PC1
result2$pca2=qqqq$PC2
result2$pca3=qqqq$PC3
result2$label=label
plot3d(result2$pca1,result2$pca2,result2$pca3, xlab="pca1",ylab="pca2",zlab="pca3",col=as.integer(result2$label)+1)