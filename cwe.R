library(stringr)
cwe <- function(nvdData,systemB){
  newData <- c()
  for (i in nvdData) {
     if(str_detect(tolower(i$cve$description$description_data[[1]]$value),systemB) == TRUE){
        newData<-append(newData,i$cve$problemtype$problemtype_data[[1]]$description[[1]]$value)
     }
  }
  return (newData)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2022.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- cwe(nvdDataFrame,"oracle")

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2021.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2019.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2018.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2017.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2016.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2015.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2014.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2013.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2012.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2011.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2010.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2009.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2008.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
res2 <- append(res2,cwe(nvdDataFrame,"oracle"))

oracle$cwe<-res2
