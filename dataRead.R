library(rjson)
nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2022.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
data<- data.frame(matrix(nrow = 0,ncol = 11))
colnames(data) <- c("desciption","year","baseScore","severity","exploitabilityScore"
                    ,"impactScore","confidentialityImpact","integrityImpact",
                    "availabilityImpact","accessVector","assigner")
data[nrow(data) + 1, ] <- c("","","","","","","","","","","") 

for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2022",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2021.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2021",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2019.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2019",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2018.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2018",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2017.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2017",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2016.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2016",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2015.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2015",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2014.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2014",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2013.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2013",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2012.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2012",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2011.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2011",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2010.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2010",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2009.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2009",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}

nvd <- fromJSON(file = "~/Documents/topics/data/nvdcve-1.1-2008.json")
nvdDataFrame <- do.call(cbind,nvd$CVE_Items) 
nvdDataFrame <- as.data.frame(nvdDataFrame)
for (i in nvdDataFrame) {
  newRow<-c(i$cve$description$description_data[[1]]$value,"2008",
            i$impact$baseMetricV2$cvssV2$baseScore,i$impact$baseMetricV2$severity,
            i$impact$baseMetricV2$exploitabilityScore,i$impact$baseMetricV2$impactScore,
            i$impact$baseMetricV3$cvssV3$confidentialityImpact,i$impact$baseMetricV3$cvssV3$integrityImpact,
            i$impact$baseMetricV3$cvssV3$availabilityImpact,
            i$impact$baseMetricV2$cvssV2$accessVector,i$cve$CVE_data_meta$ASSIGNER)
  data<-rbind(data,newRow)
}
