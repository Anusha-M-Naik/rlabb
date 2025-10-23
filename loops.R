c<-c(3,2433,345,532)
for(i in c)
  print(i)
v<-c(2,3,1,5)
for(x in v)
  print(4^x)
y<-1
sum<-0
repeat{
  sum<-(sum+y)
  y<-(y+1)
  if(y>10){
    break
  }
}
print(sum)
i<-0
while(i<31){
  if((i%%5)!=0){
    print(i)
  }
  i<-(i+1)
}