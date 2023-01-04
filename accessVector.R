library(ggplot2)

access<-function(dataset, name){
  ggplot(dataset,aes(accessVector))+geom_bar(fill="cyan3")+ggtitle(name)+
    xlab("Access required to exploit the vulnerability")+ylab("Total vulnerabilities")+theme_bw()+
    theme(axis.text.x = element_text(colour = "black",size = 15),axis.text.y = element_text(colour = "black",size = 15))+
    scale_x_discrete(limits = c("HIGH","LOW","LOCAL","NETWORK","NONE",NA))

}

access(hadoop,"Hadoop")
access(spark,"Spark")
access(storm,"Storm")
access(hive,"Hive")
access(mysql,"MySQL")
access(oracle,"Oracle")
access(postgresql,"PostgreSQL")
access(microsoft,"Microsoft SQL Server")
access(mongodb,"MongoDB")
access(redis,"Redis")
access(elasticsearch,"Elastic Search")
access(mariadb,"MariaDB")