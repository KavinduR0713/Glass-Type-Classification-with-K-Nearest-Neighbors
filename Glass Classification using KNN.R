library(caTools) 
library(dplyr) 
library(ggplot2) 
library(caret) 
library(class) 
library(corrplot) 

dim(glass)

glass <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/glass/glass.data", col.names=c("RI" ,"Na","Mg","Al","Si","K","Ca","Ba","Fe","Type"))

View(glass)

standard.features = scale(glass[,1:9])

data = cbind(standard.features, glass[10])

View(data)

head(data)

anyNA(data)

corrplot(cor(data[,-10]))

set.seed(101)

sample = sample.split(data$Type,SplitRatio = 0.70)

train = subset(data, sample==T)
dim(train)

test = subset(data, sample==F)
dim(test)

predicted.type = knn(train[1:9],test[1:9],train$Type,k=1)

error = mean(predicted.type!=test$Type)
error

confusionMatrix(predicted.type,as.factor(test$Type))

#The above results reveal that our model achieved an accuracy of 72.31 %. Lets try different values of k and assess our model

predicted.type = NULL
error.rate = NULL

for(i in 1:10){
  predicted.type = knn(train[1:9], test[1:9], train$Type, k=i)
  error.rate[i] = mean(predicted.type!=test$Type)
}

knn.error = as.data.frame(cbind(k=1:10, error.type = error.rate))
knn.error

ggplot(knn.error, aes(k,error.type))+
  geom_point()+
  geom_line()+
  scale_x_continuous(breaks = 1:10)+
  theme_bw()+
  xlab("Value of K")+
  ylab("Error")

#The above plot reveals that error is lowest when k=3 and then jumps back high revealing that k=3 is the optimum value. Now lets build our model using k=3 and assess it. 

predicted.type= knn(train[1:9],test[1:9],train$Type,k=3)

error = mean(predicted.type!=test$Type)
error

confusionMatrix(predicted.type,as.factor(test$Type))
#Above Model gave us an accuracy of 80 %.