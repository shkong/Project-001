### Begin R Script ###
# Assignment 1

# 0.
# First Name
print("Shuya")
#Last Name
print("Kong")
# Student ID
print("1505077")

# 1.
# STATA file
library(foreign)
df.dta <- read.dta(
  file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_dta.dta"
  )

# CSV file
df.csv <- read.csv(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_CSV.csv"),header=TRUE)

# tab deliniated
df.td <- read.table(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt"), header=TRUE, sep="\t")

# RData
load(url("https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_RData.RData"))
# name
print("NHIS_2007_RData")

# 2.

print("the dta file is 189KB, the csv file and the txt file are both 139KB, the RData file is 46KB")
print("the RData file is the smallest")

# 3.
df.rdata <- NHIS_2007_RData
typeof(df.rdata)
class(df.rdata)
print("typeof is list, and class is data.frame")

length(df.rdata)
# report result:
print("9")

dim(df.rdata)
# report result:
print("4785  9")

nrow(df.rdata)
# report result:
print("4785")

ncol(df.rdata)
#report result:
print("9")

summary(df.rdata)
print("the summary function gives the min, 1st quartile, median, mean, 3rd quartile, and max of each variable")



# 4.
# load data
df <- read.dta(file = "https://github.com/EconomiCurtis/econ294_2015/raw/master/data/org_example.dta")
# apply str
str(df)
# report
print("1119754 observations and 30 variables")
# min mean median max 1st and 3rd quartiles NA's
summary(df)
# report
print("rw: min=1.8, mean=19.8, median=15.9, max=354.8, 1st quartile=10.7, 3rd quartile=24.4, 521279 NA's")

# 5.
v <- c(1,2,3,4,5,6,7,4,NULL,NA)
length(v)
# report result
print("length is 9")
print("the number is different because the NULL is not counted")

# mean
mean(v, na.rm=TRUE)
print("the mean ignoring NA is 4")

# 6.
# create matrix x
x <- matrix(
  c(1,4,7,2,5,8,3,6,9),
  nrow=3,
  ncol=3
)

# transpose
t(x)

# eigenvalues & eigenvectors
eigen(x)

# create matrix y
y <- matrix(
  c(1,2,3,2,2,3,3,1,0),
  nrow=3,
  ncol=3
)

# inverse of y
solve(y)

# matrix multiplication
solve(y) %*% y
# answer
print("identity matrix")

# 7.
# create data frame
carat <- c(5,2,0.5,1.5,5,NA,3)

cut <- c("fair","good","very good","good","fair","Ideal","fair")

clarity <- c("SI1","I1","VI1","VS1","IF","VVS2",NA)

price <- c(850,450,450,NULL=FALSE,750,980,420)

diamonds <- data.frame(carat, cut, clarity, price)

# mean price
mean(price)
# result
print("mean price = 557.1429")

# mean price of cut "fair"
mean(price[cut=="fair"])
# result
print("mean price of cut'fair'=673.3333")

# mean price of cut "good", "very good", and "Ideal"
mean(price[cut!="fair"])
# result
print("mean price of cut 'good', 'very good', and 'Ideal' = 470")

# median price
median(price[carat>2 & cut=="very good"| cut=="Ideal"])
# result
print("the median price under such condition is 980")

#### End R Script ###


