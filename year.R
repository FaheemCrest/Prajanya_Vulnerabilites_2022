library(ggplot2)


year<-function(dataset, name){
    ggplot(dataset,aes(year))+geom_bar(fill="blue4")+ggtitle(name)+
    xlab("Years vulnerabilty was reported in")+ylab("Total vulnerabilities")+
    theme_bw()+
    theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))+
    theme(axis.text.x = element_text(colour = "black",size = 15),axis.text.y = element_text(colour = "black",size = 15))
}

year(hadoop,"Hadoop")
year(spark,"Spark")
year(storm,"Storm")
year(hive,"Hive")
year(mysql,"MySQL")
year(oracle,"Oracle")
year(postgresql,"PostgreSQL")
year(microsoft,"Microsoft SQL Server")
year(mongodb,"MongoDB")
year(redis,"Redis")
year(elasticsearch,"Elastic Search")
year(mariadb,"MariaDB")