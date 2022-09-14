library(ggplot2)

ggplot(hadoop,aes(impactScore))+geom_bar(fill="coral")+ggtitle("hadoop")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(spark,aes(impactScore))+geom_bar(fill="coral")+ggtitle("spark")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(flink,aes(impactScore))+geom_bar(fill="coral")+ggtitle("flink")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(storm,aes(impactScore))+geom_bar(fill="coral")+ggtitle("storm")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(hive,aes(impactScore))+geom_bar(fill="coral")+ggtitle("hive")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
#heron 1 at 6
#kudu 1 at 2
ggplot(presto,aes(impactScore))+geom_bar(fill="coral")+ggtitle("presto")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")

ggplot(mysql,aes(impactScore))+geom_bar(fill="coral")+ggtitle("mysql")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(oracle,aes(impactScore))+geom_bar(fill="coral")+ggtitle("oracle")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(postgresql,aes(impactScore))+geom_bar(fill="coral")+ggtitle("postgresql")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(microsoft,aes(impactScore))+geom_bar(fill="coral")+ggtitle("microsoft sql server")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mongodb,aes(impactScore))+geom_bar(fill="coral")+ggtitle("mongodb")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(redis,aes(impactScore))+geom_bar(fill="coral")+ggtitle("redis")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(elasticsearch,aes(impactScore))+geom_bar(fill="coral")+ggtitle("elasticsearch")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(cassandra,aes(impactScore))+geom_bar(fill="coral")+ggtitle("cassandra")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")
ggplot(mariadb,aes(impactScore))+geom_bar(fill="coral")+ggtitle("mariadb")+
  xlab("Score for the Impact of the vulnerabilities")+ylab("Total vulnerabilities")

