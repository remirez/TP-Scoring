library(lubridate)
library(ggplot2)
StockMarket <- read.table("StockMarket.csv", sep = ";", header=TRUE)

plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$US, xlab = "Date", ylab = "US")
plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$Tur, xlab = "Date", ylab = "Turkey")
plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$Ger, xlab = "Date", ylab = "Germany")
plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$GB, xlab = "Date", ylab = "GB")
plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$EU, xlab = "Date", ylab = "EU")
plot(parse_date_time2(StockMarket$date, orders = "dmy"), StockMarket$Bra, xlab = "Date", ylab = "Brazil")
