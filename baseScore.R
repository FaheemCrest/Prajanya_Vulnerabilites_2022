library(ggplot2)
library(dplyr)

ggplot(hadoop,aes(baseScore))+geom_bar(fill="coral")+ggtitle("hadoop")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(spark,aes(baseScore))+geom_bar(fill="coral")+ggtitle("spark")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(flink,aes(baseScore))+geom_bar(fill="coral")+ggtitle("flink")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(storm,aes(baseScore))+geom_bar(fill="coral")+ggtitle("storm")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(hive,aes(baseScore))+geom_bar(fill="coral")+ggtitle("hive")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
#heron 1 at 7
#kudu 1 at 4
#presto 1 at 4,5,6

ggplot(mysql,aes(baseScore))+geom_bar(fill="coral")+ggtitle("mysql")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(oracle,aes(baseScore))+geom_bar(fill="coral")+ggtitle("oracle")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(postgresql,aes(baseScore))+geom_bar(fill="coral")+ggtitle("postgresql")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(microsoft,aes(baseScore))+geom_bar(fill="coral")+ggtitle("microsoft sql server")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(mongodb,aes(baseScore))+geom_bar(fill="coral")+ggtitle("mongodb")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(redis,aes(baseScore))+geom_bar(fill="coral")+ggtitle("redis")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(elasticsearch,aes(baseScore))+geom_bar(fill="coral")+ggtitle("elasticsearch")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(cassandra,aes(baseScore))+geom_bar(fill="coral")+ggtitle("cassandra")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))
ggplot(mariadb,aes(baseScore))+geom_bar(fill="coral")+ggtitle("mariadb")+
  xlab("Base score for the vulnerabilities")+ylab("Total vulnerabilities")+
  scale_x_continuous(breaks=seq(0,10,1))

