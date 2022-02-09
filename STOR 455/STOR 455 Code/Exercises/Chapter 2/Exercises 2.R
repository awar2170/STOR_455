## Practice TExtbook Exercises 
# 9/7/2021

rm(list = ls())

setwd("C:/Users/adeve/Desktop/Chapel Hill/Fall21/STOR 455/STOR 455 Code/Exercises/Chapter 2/chapter2csv/chapter_2/CSV Data Set Files by Descriptive Title - Chapter 2")

cereal <- read.csv("Cereal.csv")

# Trying to predict calories using the sugar context; sugar = x, calories = y 
names(cereal)

mod1 <- lm(Calories~Sugar, cereal)
summary(mod1)
# THe slope is 2.4808.  This means for every additional gram of sugar added, we can expect the calories to increase by 2.4 calories. 
confint(mod1, level=0.95)
# We are 95% confident that the true value of the calories based on sugar content are between 76.9 calories and 97.97 calories.

####17abcd####
# Tehre are 2 types of Dementia: Lewy Bodies and ALzheimer's. 
dement <- read.csv("LewyDLBad.csv")
names(dement)
head(dement)
mod2 <- lm(MMSE~APC, dement)
summary(mod2)
## I need to run a 1-sample t-test to test for significance 