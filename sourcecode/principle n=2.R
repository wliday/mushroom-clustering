wtrain<-principal(temp2, nfactors=2, residuals = FALSE, rotate = "cluster")
wtrain

qqq=data.frame(wtrain$scores)
result=character(8123)
result=data.frame(result)
result$pca1=qqq$PC1
result$pca2=qqq$PC2
result$label=label
ggplot(result,aes(x=pca1, y=pca2, colour=factor(label)))+geom_point()