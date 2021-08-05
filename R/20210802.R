# R 6장
getwd()
setwd('C:/Users/DNI_210702/Documents/self_study/R_data/script')

library(dplyr)
library(reshape)
library(plyr)

hr = read.csv('C:/Users/DNI_210702/Documents/self_study/R_data/HR_comma_sep.csv')

str(hr)
hr[1]

colnames(hr[1])
colnames(hr)[1]


for(i in 1:2){
  print(paste(colnames(hr[i]), ":",mean(hr[,i])))
}

apply(hr[,1:2],2,mean)

colMeans(hr[,1:2])

