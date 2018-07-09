# Add the experiments numbers that you wish to load.
number <- c(35)
# What experiments are run
shortName <- c("TH","HC","CC")
# Select some loading.
anotherTypeFolder <- c("000W","025W","050W","075W","100W","125W")
titles <- character()
for (i in 1:length(number)) {
  filePath=file.path(path="data",number[i])
  if (file.exists(filePath)) {
    for(j in 1:length(number)){
      for(k in 1:length(shortName)) {
		filePathCurves=file.path(path="data",number[i],shortName[j],
		anotherTypeFolder[k])
        if(file.exists(filePathCurves)){
          name <- paste("Number:",number[i]," shortName:",shortName[j]," 
		  methode:",anotherTypeFolder[k], sep="")
          titles <- c(titles, name)          
        }  
      }
    }
    print(titles)
  } else {
    print("Can't find the experiment folder")
  }
}
