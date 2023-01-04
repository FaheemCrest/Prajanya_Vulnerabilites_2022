library(ggplot2)

score <- function(dataset, name){
  common<-cbind(dataset$impactScore,rep("Impact Score"))
  common<-rbind(common,(cbind(dataset$exploitabilityScore,rep("Exploitability Score"))))
  common<-rbind(common,(cbind(dataset$baseScore,rep("Base Score"))))
  plotData<-as.data.frame(table(data.frame(common)))
  plotData$X1 <- factor(plotData$X1 , levels=1:10)
  colnames(plotData)<-c("X1","CVSS","Freq")
  ggplot(plotData,aes(x=X1, y=Freq, group=CVSS, color=CVSS,shape=CVSS))+geom_line(size=1.2)+ggtitle(name)+
    xlab("Score")+ylab("Total vulnerabilities")+scale_fill_discrete(name=NULL)+theme_bw()+geom_point(size=2.5) +
    theme(axis.text.x = element_text(colour = "black",size = 15),axis.text.y = element_text(colour = "black",size = 15),legend.position="top", legend.text = element_text(size = 15))
}

score(hadoop,"Hadoop")
score(spark,"Spark")
score(storm,"Storm")
score(hive,"Hive")
score(mysql,"MySQL")
score(oracle,"Oracle")
score(postgresql,"PostgreSQL")
score(microsoft,"Microsoft SQL Server")
score(mongodb,"MongoDB")
score(redis,"Redis")
score(elasticsearch,"Elastic Search")
score(mariadb,"MariaDB")