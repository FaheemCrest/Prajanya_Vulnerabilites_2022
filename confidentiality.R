library(ggplot2)

ggplot(hadoop,aes(confidentialityImpact))+geom_bar()+ggtitle("hadoop")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(spark,aes(confidentialityImpact))+geom_bar()+ggtitle("spark")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(flink,aes(confidentialityImpact))+geom_bar()+ggtitle("flink")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(storm,aes(confidentialityImpact))+geom_bar()+ggtitle("storm")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(hive,aes(confidentialityImpact))+geom_bar()+ggtitle("hive")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
#heron 1 at high
#kudu 1 at none
ggplot(presto,aes(confidentialityImpact))+geom_bar()+ggtitle("presto")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")

ggplot(mysql,aes(confidentialityImpact))+geom_bar()+ggtitle("mysql")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(oracle,aes(confidentialityImpact))+geom_bar()+ggtitle("oracle")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(confidentialityImpact))+geom_bar()+ggtitle("postgresql")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(confidentialityImpact))+geom_bar()+ggtitle("microsoft sql server")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(confidentialityImpact))+geom_bar()+ggtitle("mongodb")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(redis,aes(confidentialityImpact))+geom_bar()+ggtitle("redis")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(confidentialityImpact))+geom_bar()+ggtitle("elasticsearch")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(confidentialityImpact))+geom_bar()+ggtitle("cassandra")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(confidentialityImpact))+geom_bar()+ggtitle("mariadb")+
  xlab("Impact on confidentiality by the vulnerabilities")+ylab("Total vulnerabilities")

