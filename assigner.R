library(ggplot2)
library(dplyr)

as.data.frame((table(data$assigner)))%>%
  arrange(desc(Freq)) %>%
  slice(1:10) 
