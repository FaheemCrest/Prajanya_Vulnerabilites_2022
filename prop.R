library(ggplot2)
library(ggpattern)

prop <- function(dataset, name){
  common<-cbind(dataset$availabilityImpact,rep("Availability"))
  common<-rbind(common,(cbind(dataset$integrityImpact,rep("Integrity"))))
  common<-rbind(common,(cbind(dataset$confidentialityImpact,rep("Confidentiality"))))
  plotData<-as.data.frame(table(data.frame(common)))
  #barplot(height = plotData,beside = TRUE)
  ggplot(plotData,aes(fill=X2,y=Freq,x=X1,pattern = X2))+
    geom_bar_pattern(stat = "identity",position = "dodge",color="Black",pattern_density = 0.1,
                     pattern_spacing = 0.03)+ggtitle(name)+
    xlab("Imapct of CIA by the vulnerabilities")+ylab("Total vulnerabilities")+
    labs(pattern = "CIA")+
    scale_fill_manual(values=c("cyan3", "cornsilk3", "aquamarine3"), name="CIA")+theme_bw()+
    theme(legend.position="top")+
   theme(axis.text.x = element_text(colour = "black",size = 15),axis.text.y = element_text(colour = "black",size = 15),legend.text = element_text(size = 15))
}

prop(hadoop,"Hadoop")
prop(spark,"Spark")
prop(storm,"Storm")
prop(hive,"Hive")
prop(mysql,"MySQL")
prop(oracle,"Oracle")
prop(postgresql,"PostgreSQL")
prop(microsoft,"Microsoft SQL Server")
prop(mongodb,"MongoDB")
prop(redis,"Redis")
prop(elasticsearch,"Elastic Search")
prop(mariadb,"MariaDB")