PCApart <- function(input, threshold = 0.9)
{
	count = 1
	inputpca = prcomp(input)
	inputsummary = summary(inputpca)
	colnumber = ncol(inputsummary$importance)
	tmp = 0
	for(i in 1 : colnumber)
	{
		tmp = tmp + inputsummary$importance[2, i]
		if(tmp >= threshold)
			break
		count = count + 1
	}
	#print(inputsummary$importance)
	#print(count)
	return(inputsummary$x[, 1 : count])
}

