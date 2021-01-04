library(ggplot2)
PimaIndiansDiabetes <- read.table("PimaIndiansDiabetes.csv", sep = ";", header=TRUE)

cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$insulin) # 0.130548
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$pregnant) # 0.2218982
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$pressure) # 0.06506836
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$glucose) # 0.4665814
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$triceps) # 0.07475223
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$mass) # 0.2926947
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$pedigree) # 0.1738441
cor(PimaIndiansDiabetes$diabetes, PimaIndiansDiabetes$age) # 0.238356

lin_reg <- lm(diabetes ~ ., data=PimaIndiansDiabetes)
summary(lin_reg)$r.squared
plot(lin_reg, which=1)
plot(PimaIndiansDiabetes$diabetes, predict(lin_reg), xlab="observed", ylab="predicted")

log_reg <- glm(diabetes ~ ., data=PimaIndiansDiabetes, family="binomial")
coef(log_reg)
summary(log_reg)
