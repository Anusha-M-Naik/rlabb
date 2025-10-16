a<- c(4,7,1,0)
b<-c(2,5,1,8)
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%%b)
print(a%/%b)
print(a^b)
print(a>b)
print(a<b)
print(a==b)

v<- c(71,1,TRUE,2+4i)
t<- c(9,0,FALSE,5+3i)
print(v&t)
print(v|t)
print(!v)

y<-10
x<-8:19
print(y%in%x)

M=matrix(c(2,3,5,8,0,1),nrow = 2,ncol = 3,byrow = TRUE)
t=M%*%t(M)
print(t)



