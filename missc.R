.libPaths()
library()
search()

fruits<-c("appl","banana","mango")
count<-c(10,20,400)
barplot(count,names.arg=fruits)

x<-c(1,3,6,9)
y<-c(9,6,3,1)
plot(x,y,main="Skatter Plot",xlab="X",ylab="Y",col="lightblue",pch=65)

plot(x,y,type="l",main="Lain Plot",xlab="X",ylab="Y",col="lightgreen")

pie(x,labels=y,main = "Pai Chart",col=rainbow(7))

heatmap(matrix(rnorm(49),nrow = 7),main = "Heet Map")

getwd()