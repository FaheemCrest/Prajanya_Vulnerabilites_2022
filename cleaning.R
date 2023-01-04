library(stringr)
library(dplyr)
library(naniar)

data <- data[-1,]
data$desciption <- tolower(data$desciption[1:length(data$desciption)])
dataProcessing <- c("hadoop", "spark", "flink", "storm","hive","heron","kudu","presto","samza")
dataStorage <- c("mysql","oracle","postgresql","microsoft sql server", "mongodb","redis"
                 ,"elasticsearch","cassandra","mariadb","ibmdb2")
data$baseScore<-as.integer(data$baseScore)
data$impactScore<-as.integer(data$impactScore)
data$exploitabilityScore<-as.integer(data$exploitabilityScore)
data$confidentialityImpact[!(data$confidentialityImpact == "HIGH" | data$confidentialityImpact == "LOW" |data$confidentialityImpact =="NONE") ] <- NA
data$integrityImpact[!(data$integrityImpact == "HIGH" | data$integrityImpact == "LOW" |data$integrityImpact =="NONE") ] <- NA
data$availabilityImpact[!(data$availabilityImpact == "HIGH" | data$availabilityImpact == "LOW" |data$availabilityImpact =="NONE") ] <- NA
data$severity[data$severity == "2022"] <- NA
data$impactScore[data$impactScore > 10] <- NA
data$accessVector[!(data$accessVector == "HIGH" | data$accessVector == "LOCAL"   | data$accessVector== "LOW" | data$accessVector == "NETWORK"  | data$accessVector ==  "NONE")]<-NA
data$assigner <- gsub("@(.+)$", "\\1", data$assigner)
data$assigner <- gsub(".com", "\\1", data$assigner)
data$assigner <- gsub(".org", "\\1", data$assigner)
data$assigner <- gsub(".or", "\\1", data$assigner)
data$assigner <- gsub(".co", "\\1", data$assigner)
data$assigner <- gsub(".ne", "\\1", data$assigner)
data$assigner[nchar(data$assigner) < 5] <- NA



hadoop<- data %>% filter(str_detect(data$desciption,"hadoop"))

spark<-data %>% filter(str_detect(data$desciption,"spark"))

flink<-data %>% filter(str_detect(data$desciption,"flink"))

storm<-data %>% filter(str_detect(data$desciption,"storm"))

hive<-data %>% filter(str_detect(data$desciption,"hive"))

heron<-data %>% filter(str_detect(data$desciption,"heron"))

kudu<-data %>% filter(str_detect(data$desciption,"kudu"))

presto<-data %>% filter(str_detect(data$desciption,"presto"))

samza<-data %>% filter(str_detect(data$desciption,"samza"))

mysql<-data %>% filter(str_detect(data$desciption,"mysql"))

oracle<-data %>% filter(str_detect(data$desciption,"oracle"))

postgresql<-data %>% filter(str_detect(data$desciption,"postgresql"))

microsoft<-data %>% filter(str_detect(data$desciption,"microsoft"))

mongodb<-data %>% filter(str_detect(data$desciption,"mongodb"))

redis<-data %>% filter(str_detect(data$desciption,"redis"))

elasticsearch<-data %>% filter(str_detect(data$desciption,"elasticsearch"))

cassandra<-data %>% filter(str_detect(data$desciption,"cassandra"))

mariadb<-data %>% filter(str_detect(data$desciption,"mariadb"))

ibmdb2<-data %>% filter(str_detect(data$desciption,"ibmdb2"))

cve<-c(nrow(hadoop),nrow(spark),nrow(flink),nrow(storm),nrow(hive),nrow(heron),
       nrow(kudu),nrow(presto),nrow(samza),nrow(mysql),nrow(oracle),
       nrow(postgresql),nrow(microsoft),nrow(mongodb),nrow(redis),
       nrow(elasticsearch),nrow(cassandra),nrow(mariadb),nrow(ibmdb2))
count <- data.frame(c(dataProcessing,dataStorage), cve)
colnames(count)<-c("Big Data sytems","Total Vulnerabilities")


