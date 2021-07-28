# 20210728
str(df)
## Q1) df의 행, 열의 크기 출력
dim(df)  ## 14999,10

## Q2) salary의 strings
summary(df$salary)
df$salary = factor(df$salary, levels = c('low','medium','high'))
str(df)
df$salary_New = ifelse(df$salary=='low', 1, ifelse(df$salary == 'medium',2,3))
str(df)

## Q3) salary_New = 2, left = 1 subset
summary(df$left)
Medium_left <- subset(df, salary_New==2 & left ==1)
str(Medium_left)
summary(Medium_left$time_spend_company)


## Q4) salary_New 를 sales별 time_spend_company mean 출력
library(plyr)
ddply(Medium_left,
      c('sales'), summarize,
      m_sp = mean(time_spend_company))