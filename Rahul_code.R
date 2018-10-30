library(tidyverse)

# Reading the data set from within the zip file

okc <- read.table(unz("profiles.csv.zip", "profiles.csv"), header=T, quote="\"", sep=",", stringsAsFactors = FALSE)

# Beginning EDA

ggplot(data=okc, aes(x=age)) + geom_line(stat="bin")
summary(okc)

boxplot(okc$age)

ggplot(okc, aes(age, color=sex)) + geom_density(size=2)
