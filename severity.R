library(ggplot2)

par(mfrow= c(3,3))
ggplot(hadoop,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("hadoop")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(spark,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("spark")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(flink,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("flink")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(storm,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("storm")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(hive,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("hive")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
#heron 1 at high
#kudu 1 at medium
ggplot(presto,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("presto")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")

par(mfrow = c(3,3))
ggplot(mysql,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("mysql")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(oracle,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("oracle")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("postgresql")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("microsoft sql server")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("mongodb")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(redis,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("redis")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("elasticsearch")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("cassandra")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(severity))+geom_bar(fill="darkslategray3")+ggtitle("mariadb")+
  xlab("Severity of the vulnerabilities")+ylab("Total vulnerabilities")

