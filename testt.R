col<-c('green','green','red','red','yellow','green')
fact_color<-factor(col)
print(fact_color)
print(nlevels(fact_color))

bmi<-data.frame(
  gender=c("MAle","Male","Female"),
  heigt=c(153,65,180),
  weight=c(50,15,65),
  age=c(19,2,52)
)
bmi

anusha<-c(3,6,9)
anusha
print(ls())
rm(anusha)
anusha

a<-"Hellow"
b<-"Saar"
paste(a,b)
paste(a,b,sep="-")

c<-c("hi","hola","hello")
d<-c("eng","esp","eng")
paste(c,d,sep="_",collapse="")


c<-c("hi","hola","hello")
d<-c("eng","esp","eng")
paste(c,d,sep="_",collapse=NULL)