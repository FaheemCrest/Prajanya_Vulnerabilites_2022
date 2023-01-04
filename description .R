library(stringr)
description <- function(description){
counts<-c()
check <- str_detect(description,"confidentiality")
counts[1] <- sum(check, na.rm = TRUE)

check <- str_detect(description,"integrity")
counts[2] <- sum(check, na.rm = TRUE)

check <- str_detect(description,"availability")
counts[3] <- sum(check, na.rm = TRUE)

check <- str_detect(description,"nonrepudiation")
counts[4] <- sum(check, na.rm = TRUE)

check <- str_detect(description,"authentication")
counts[5] <- sum(check, na.rm = TRUE)

check <- str_detect(description,"authorization")
counts[6] <- sum(check, na.rm = TRUE)
title<-c("Confidentiality","Integrity","Availability","Nonrepudiation",
         "Authentication","Authorization")
ret <- data.frame(title,counts)
return (ret)
}

des<-function(dataset, name){
    res<-description(dataset$desciption)
    ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle(name)+
    xlab("Security Property")+ylab("Total vulnerabilities")+theme_bw()+
    theme(axis.text.x = element_text(colour = "black",size = 13),axis.text.y = element_text(colour = "black",size = 15))
}

des(hadoop,"Hadoop")
des(spark,"Spark")
des(storm,"Storm")
des(hive,"Hive")
des(mysql,"MySQL")
des(oracle,"Oracle")
des(postgresql,"PostgreSQL")
des(microsoft,"Microsoft SQL Server")
des(mongodb,"MongoDB")
des(redis,"Redis")
des(elasticsearch,"Elastic Search")
des(mariadb,"MariaDB")