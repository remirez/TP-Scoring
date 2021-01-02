library(ggplot2)
PimaIndiansDiabetes <- read.table("PimaIndiansDiabetes.csv", sep = ";", header=TRUE)
ggplot(data=PimaIndiansDiabetes, aes(x=age, y=diabetes)) +
  geom_bar(stat="identity")
plot
