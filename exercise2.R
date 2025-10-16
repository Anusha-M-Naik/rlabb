col<- c('green','yellow','black','green','red','blue','green')
fact_color<- factor(col)
print(fact_color)
print(nlevels(fact_color))

BMI<- data.frame(
  gender = c('Male','Female','Male','Female'),
  height = c(150,142,160,140 ),
  weight = c(55,42,65,50),
  Age = c(25,20,35,18)
)
print(BMI)

Anusha<- c(2,3,4)
print(ls())
rm(Anusha)
print(Anusha)

a<-"Hello"
b<-"How"
c<-"are you?"
print(paste(a,b,c))
print(paste(a,b,c,sep="-")) 

a<-c('A','B','C')
b<- c("X","Y","Z")
paste(a,b,sep='-',collapse = "")


a<-c('A','B','C')
b<- c("X","Y","Z")
paste(a,b,sep='-',collapse = NULL)




