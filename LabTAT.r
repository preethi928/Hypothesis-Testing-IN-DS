library(ggplot2)
#install.packages(ggpubr)
library(ggpubr)
#install.packages(tidyverse)
library(tidyverse)
#install.packages("broom")
library(broom)
#install.packages(AICcmodavg)
library(AICcmodavg)
# i have read the data and ploted all of the variables in the data to check 
#for their normality.
lab<-read.csv("C:\\Data_science\\EXCLER\\My Assignments\\Hypothesis testing\\LabTAT.csv")
summary(lab)
view(lab)
hist(lab$Laboratory.1)
hist(lab$Laboratory.2)
hist(lab$Laboratory.3)
hist(lab$Laboratory.4)

# I have used anove model due to the presence of more than 2 variables in the data
#hence we are supposed to compare the Turn around time for the report to get released in
#all the laborarty.

# There fore ill compare the first lab results with the rest lab results 
Model<-aov(Laboratory.1 ~ Laboratory.2+Laboratory.3+Laboratory.4,data = lab)
summary(Model)

# according to the testing what i assumed atleast one lab TAT may differ , but we can 
# conclude this only by checking the P values.

#P value for all the 3 labs TAT is 
#Lab2:0.166
#Lab3:0.277
#Lab4:0.215`

# hence  if p < 0.05 we are supposed to reject H0 and consider Ha
#all of the p values are >0.05 there fore we are not rejecting null hypothesis and we 
# say that all the Labs TAT time is similar .`