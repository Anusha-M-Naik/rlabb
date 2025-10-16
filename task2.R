col<-(readline(prompt="Enter the color"))
y<-switch(
  col,
  red="stop",
  yellow="wait",
  green="go",
  "Please enter valid signal color"
)
print(y)
  



result<-format(23.123456789,digits=5)
print(result)

result<-format(c(6,13.14258),scentific=TRUE)
print(result)

result<-format(23.47,nsmall=9)
print(result)

result<-format(13.7,width=10)
print(result)

result<-format("Hello",width=8,justify="none")
print(result)

result<-format("Hello",width=6,justify="c")
print(result)

result<-format(6)
print(result)

