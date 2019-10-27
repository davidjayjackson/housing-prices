library(tidyverse)
## Import training and test data
train <- read_csv("./train.csv")
test <-  read_csv("./test.csv")
# Pull Id and Pricing info
train <- train %>% filter(Id <=1459)%>% 
  select(SalePrice) %>% filter()
test <- test %>% select(Id)
## Calculate New Price 21%
train$SalePrice <- train$SalePrice * 1.21
housing <- cbind(train,test)
write.csv(housing,file="housing.csv",row.names = FALSE)