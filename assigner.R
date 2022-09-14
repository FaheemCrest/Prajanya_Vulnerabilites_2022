library(ggplot2)

ggplot(hadoop,aes(assigner))+geom_bar(fill="orange")+ggtitle("hadoop")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(spark,aes(assigner))+geom_bar(fill="orange")+ggtitle("spark")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(flink,aes(assigner))+geom_bar(fill="orange")+ggtitle("flink")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(storm,aes(assigner))+geom_bar(fill="orange")+ggtitle("storm")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(hive,aes(assigner))+geom_bar(fill="orange")+ggtitle("hive")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
#heron 1 at 2018
#kudu 1 at 2017
ggplot(presto,aes(assigner))+geom_bar(fill="orange")+ggtitle("presto")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")

ggplot(mysql,aes(assigner))+geom_bar(fill="orange")+ggtitle("mysql")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(oracle,aes(assigner))+geom_bar(fill="orange")+ggtitle("oracle")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(assigner))+geom_bar(fill="orange")+ggtitle("postgresql")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(assigner))+geom_bar(fill="orange")+ggtitle("microsoft sql server")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(assigner))+geom_bar(fill="orange")+ggtitle("mongodb")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(redis,aes(assigner))+geom_bar(fill="orange")+ggtitle("redis")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(assigner))+geom_bar(fill="orange")+ggtitle("elasticsearch")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(assigner))+geom_bar(fill="orange")+ggtitle("cassandra")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(assigner))+geom_bar(fill="orange")+ggtitle("mariadb")+
  xlab("assigner of the vulnerability")+ylab("Total vulnerabilities")