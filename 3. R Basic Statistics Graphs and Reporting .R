setwd("D:/Google Drive/Training/Datasets")
#Taking a random sample 
Retail_data <- read.csv("./Online_Retail_Sales_Data/Online Retail.csv")
dim(Retail_data)

#Sample size 10000
Sample_set <- Retail_data[sample(1:nrow(Retail_data),10000), ]
dim(Sample_set)


#LAB: Sampling in R
Income  <- read.csv("./Census Income Data/Income_data.csv")
dim(Income)

#Sample size 5000
Sample_income <- Income[sample(1:nrow(Income),5000), ]
dim(Sample_income)

#Mean and Median on R
Income  <- read.csv("./Census Income Data/Income_data.csv")
names(Income)

mean(Income$capital.gain)
median(Income$capital.gain)

#LAB: Mean and Median on R
Retail_data <- read.csv("./Online Retail Sales Data/Online Retail.csv")
dim(Retail_data)
names(Retail_data)

mean(Retail_data$UnitPrice)
median(Retail_data$UnitPrice)

mean(Retail_data$Quantity)
median(Retail_data$Quantity)

#Variance and Standard deviation in R
table(Income$native.country)

#Creating USA and Other data
usa_income<-Income[(Income$native.country==" United-States"), ] 
other_income<-Income[!(Income$native.country==" United-States"),]

#Var and SD for USA
var(usa_income$education.num)
sd(usa_income$education.num)

#Var and SD for Other
var(other_income$education.num)
sd(other_income$education.num)

#LAB: Variance and Standard deviation

var(Retail_data$UnitPrice)
sd(Retail_data$UnitPrice)
var(Retail_data$Quantity)
sd(Retail_data$Quantity)

#Percentiles & Quartiles in R
summary(Income$capital.gain)

#Percentiles
quantile(Income$capital.gain, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 
quantile(Income$capital.loss, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 

quantile(Income$hours.per.week, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 

#LAB: Percentiles
bank<-read.csv("./Bank Tele Marketing/bank_market.csv")

summary(bank$balance)
quantile(bank$balance, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 

summary(bank$age)
quantile(bank$age, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 

#Box Plot
boxplot(usa_income$capital.gain)
quantile(Income$capital.gain, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9,0.93, 0.96, 0.98, 1)) 

boxplot(usa_income$education.num)
quantile(Income$education.num, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1)) 

#LAB: Box plots and outlier detection
boxplot(bank$balance)
summary(bank$balance)
quantile(bank$balance, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9,0.93, 0.96, 0.98, 1)) 


boxplot(bank$age)
summary(bank$age)
quantile(bank$age, c(0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9,1)) 


################Creating Graphs 
##Scatter Plot:
data()
cars

plot(cars$speed, cars$dist)

sports_data<-read.csv("./Sporting_goods_sales/Sporting_goods_sales.csv")
head(sports_data)
plot(sports_data$Average_Income,sports_data$Sales)
plot(sports_data$Under35_Population_pect,sports_data$Sales)


##Bar Chart
data()
mtcars
bar_table<-table(mtcars$cyl)
barplot(bar_table, main="Cars Data Details", 	xlab="Cylinders", ylab="Cars Count")

bar_table_gear<-table(mtcars$gear)
barplot(bar_table_gear, main="Cars Data Details", 	xlab="gears", ylab="Cars Count" , col = 4)

#LAB: ##Bar Chart

head(sports_data)
family_table<-table(sports_data$Avg_family_size)
barplot(family_table, main="Sports Data", 	xlab="Avg_family_size")


#####Trend Chart

data()
AirPassengers
plot(AirPassengers)

#LAB
data()
UKgas
plot(UKgas)

plot(JohnsonJohnson)

#GGplot
library(ggplot2)
qplot(speed, dist,data=cars, colour = I("red"), size=I(5))

qplot(sports_data$Average_Income,sports_data$Sales, colour = I("blue"), size=I(5))
qplot(sports_data$Under35_Population_pect,sports_data$Sales,colour = I("purple"), size=I(5)) 









