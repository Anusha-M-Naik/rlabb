#a->>>
library(dplyr)
library(ggplot2)
titanic<-read.csv("Titanic_train.csv")
print(titanic)
summary_stats<-summary(titanic)

histo<-ggplot(titanic,aes(x=Age))+
  geom_histogram(binwidth=5,fill="black",color="white")+
  labs(title="Distribution of Age on Titanic",x="Age",y="Frequency")
print(histo)
missing_values<-colSums(is.na(titanic))
print(missing_values)

#b->>
duplicated(titanic)
titanic<-distinct(titanic)
titanic

#removing duplicates
titanic$Age[is.na(titanic$Age)] <-mean(titanic$Age,na.rm=TRUE)
titanic
missing_values<-colSums(is.na(titanic))
print(missing_values)


#c->>>>>
adult_passengers<-filter(titanic,Age>18)
adult_passengers
sorted_titanic<-arrange(titanic,desc(Fare))
sorted_titanic

#d->>>
print(boxplot(Age~Survived,data=titanic,col=c("green","blue"),main="Boxplot of Age by Survived"))

t_test_result<-t.test(Age~Survived,data=titanic)
t_test_result

correlation_coefficient<-cor(titanic$Age,titanic$Fare)
print(correlation_coefficient)
