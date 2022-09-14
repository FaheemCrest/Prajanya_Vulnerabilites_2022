library(ggplot2)

ggplot(hadoop,aes(availabilityImpact))+geom_bar()+ggtitle("hadoop")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(spark,aes(availabilityImpact))+geom_bar()+ggtitle("spark")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(flink,aes(availabilityImpact))+geom_bar()+ggtitle("flink")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(storm,aes(availabilityImpact))+geom_bar()+ggtitle("storm")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(hive,aes(availabilityImpact))+geom_bar()+ggtitle("hive")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
#heron 1 at none
#kudu 1 at none
ggplot(presto,aes(availabilityImpact))+geom_bar()+ggtitle("presto")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")

ggplot(mysql,aes(availabilityImpact))+geom_bar()+ggtitle("mysql")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(oracle,aes(availabilityImpact))+geom_bar()+ggtitle("oracle")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(availabilityImpact))+geom_bar()+ggtitle("postgresql")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(availabilityImpact))+geom_bar()+ggtitle("microsoft sql server")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(availabilityImpact))+geom_bar()+ggtitle("mongodb")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(redis,aes(availabilityImpact))+geom_bar()+ggtitle("redis")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(availabilityImpact))+geom_bar()+ggtitle("elasticsearch")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(availabilityImpact))+geom_bar()+ggtitle("cassandra")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(availabilityImpact))+geom_bar()+ggtitle("mariadb")+
  xlab("Impact on availability by the vulnerabilities")+ylab("Total vulnerabilities")

