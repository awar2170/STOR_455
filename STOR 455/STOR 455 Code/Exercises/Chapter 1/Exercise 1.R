# POLI 281 Homework 4
# Name: Alyssa Warnock 

rm(list = ls())

setwd("C:/Users/adeve/Desktop/STOR 455 Code/Exercises/Chapter 1")

# Exercise "https://www.macmillanlearning.com/studentresources/college/collegebridgepage/stat22e.html"

leaf <-read.csv("ex01-15LeafW.csv")
# Fit the regression of Width on Year 
names(leaf)
fit1 <- lm(Width ~ Year, data =  leaf)
fit1
plot(fit1, 1:2)
head(leaf)
# Year is teh year the sample was collected 
# y = -0.01756x+37.72309
-0.01756*(1966)+37.72309
# Predicted width = 3.20013 measure 

#### 1.17 ####
setwd("C:/Users/adeve/Desktop/Chapel Hill/Fall21/STOR 455/STOR 455 Code/Exercises/Chapter 1/chapter1csv/chapter_1/CSV Data Set Files by Descriptive Title - Chapter 1")

faces <- read.csv("Faces.csv")
#Grip = measured in kg
fit2 <- lm(MaxGripStrength~Attractive, faces)
fit2
# y = 4.705x+36.160
# Attractiveness in this context is how good looking a female college student percieves the 38 male subjects in this experiment 
# Predict 
predict <- 4.705*(3)+36.160
predict2
#50.275

#### 1.19 ####
cereal <- read.csv("Cereal.csv")
names(cereal)
fit3 <- lm(Calories~Sugar, cereal)
fit3
# line: y = 2.481x + 87.428
plot(fit3)
plot(cereal)
# NOTE: I DONT KNOW HOW TO JUST MAKE A SCATTERPLOT OF THE DATA 
# The slope in context means that if we had a cereal with 0 surgar in it, we predict that cereal would on average have a base calories of 87.428 per serving.


#### 1.21 ####
2.481*(10)+87.428
#112.238 calories 
x <- (110-87.428)/2.481
x
x-1
# The residual is 8.097944
# Based on this test, it seems a little off
fit5 <- lm(Calories~Sugar, cereal)
# I would say its the best 

#### 1.23 ####
sparrow <- read.csv("Sparrows.csv")
fit5 <- lm(sparrow$Weight~sparrow$WingLength, sparrow)
abline(fit5)
fit5
fit6 <- plot(Weight~WingLength, sparrow)
abline(fit6)