des <- function(description){
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
title<-c("confidentiality","integrity","availability","nonrepudiation",
         "authentication","authorization")
ret <- data.frame(title,counts)
return (ret)
}

res<-des(hadoop$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("hadoop")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(spark$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("spark")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(storm$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("storm")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(hive$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("hive")+
  xlab("Security Property")+ylab("Total vulnerabilities")
#flink none
#presto 1 availabiltiy
#heron none 
#kudu i authorisation 

res<-des(mysql$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("mysql")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(oracle$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("oracle")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(postgresql$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("postgresql")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(microsoft$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("microsoft")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(mongodb$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("mongodb")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(redis$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("redis")+
  xlab("Security Property")+ylab("Total vulnerabilities")

res<-des(elasticsearch$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("elasticsearch")+
  xlab("Security Property")+ylab("Total vulnerabilities")

#cassandra none

res<-des(mariadb$desciption)
ggplot(res,aes(x=title, y= counts))+geom_bar(stat = "identity",fill="darkred")+ggtitle("mariadb")+
  xlab("Security Property")+ylab("Total vulnerabilities")

