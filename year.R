library(ggplot2)

ggplot(hadoop,aes(year))+geom_bar(fill="blue4")+ggtitle("hadoop")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(spark,aes(year))+geom_bar(fill="blue4")+ggtitle("spark")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(flink,aes(year))+geom_bar(fill="blue4")+ggtitle("flink")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(storm,aes(year))+geom_bar(fill="blue4")+ggtitle("storm")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(hive,aes(year))+geom_bar(fill="blue4")+ggtitle("hive")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
#heron 1 at 2018
#kudu 1 at 2017
ggplot(presto,aes(year))+geom_bar(fill="blue4")+ggtitle("presto")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")

ggplot(mysql,aes(year))+geom_bar(fill="blue4")+ggtitle("mysql")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(oracle,aes(year))+geom_bar(fill="blue4")+ggtitle("oracle")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(year))+geom_bar(fill="blue4")+ggtitle("postgresql")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(year))+geom_bar(fill="blue4")+ggtitle("microsoft sql server")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(year))+geom_bar(fill="blue4")+ggtitle("mongodb")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(redis,aes(year))+geom_bar(fill="blue4")+ggtitle("redis")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(year))+geom_bar(fill="blue4")+ggtitle("elasticsearch")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(year))+geom_bar(fill="blue4")+ggtitle("cassandra")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(year))+geom_bar(fill="blue4")+ggtitle("mariadb")+
  xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")