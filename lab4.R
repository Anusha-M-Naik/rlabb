library(ggplot2)
library(dplyr)
library(plotly)

titanic<-read.csv("Titanic_train.csv")
print(titanic)

titanic$Survived <-factor(titanic$Survived, levels= c("0","1"))
nlevels(titanic$Survived)
bar_chart <-ggplot(titanic,aes(x=factor(Pclass),fill=factor(Survived))) +
  geom_bar(position= "dodge") +
  labs(title = "Survivors by Passenger class",x="Passenger Class",y="Count",fill="Survived")
scale_fill_manual(values = c("0"="red","1"="black"))
print(bar_chart)
interactive_bar_chart<-ggplotly(bar_chart)
print(interactive_bar_chart)

density_plot<-ggplot(titanic,aes(x=Age,y=..density..))+
  geom_density(fill="yellow",alpha=0.5)+
  labs(title = "Age Distribution of Passengers ",x="age",y="density")
print(density_plot)
interactive_density_chart<-ggplotly(line_chart)
interactive_density_chart

scatter_plot<-ggplot(titanic,aes(x=Age,y=Fare,color=factor(Survived)))+
  geom_point()+
  labs(title = "fare vs Age",x="Age",y="fare")+
scale_color_manual(values=c("0"="red","1"="blue"))
print(scatter_plot)

heatmap<-ggplot(titanic,aes(x=Pclass,y=Survived))+
  stat_bin_2d(bins=10,aes(fill=..count..))+
  labs(title ="titanic Survived heatmap",x="pclass",y="Survived",fill="Frequency")+
  scale_fill_continuous(name="Frequency",low="black",high="blue")+
  theme_minimal()
print(heatmap)
