library(ggplot2)

ggplot(hadoop,aes(integrityImpact))+geom_bar()+ggtitle("hadoop")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(spark,aes(integrityImpact))+geom_bar()+ggtitle("spark")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(flink,aes(integrityImpact))+geom_bar()+ggtitle("flink")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(storm,aes(integrityImpact))+geom_bar()+ggtitle("storm")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(hive,aes(integrityImpact))+geom_bar()+ggtitle("hive")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
#heron 1 at high
#kudu 1 at none
ggplot(presto,aes(integrityImpact))+geom_bar()+ggtitle("presto")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")

ggplot(mysql,aes(integrityImpact))+geom_bar()+ggtitle("mysql")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(oracle,aes(integrityImpact))+geom_bar()+ggtitle("oracle")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(integrityImpact))+geom_bar()+ggtitle("postgresql")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(integrityImpact))+geom_bar()+ggtitle("microsoft sql server")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(integrityImpact))+geom_bar()+ggtitle("mongodb")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(redis,aes(integrityImpact))+geom_bar()+ggtitle("redis")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(integrityImpact))+geom_bar()+ggtitle("elasticsearch")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(integrityImpact))+geom_bar()+ggtitle("cassandra")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(integrityImpact))+geom_bar()+ggtitle("mariadb")+
  xlab("Impact on integrity by the vulnerabilities")+ylab("Total vulnerabilities")

