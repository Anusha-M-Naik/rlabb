library(dplyr)
data<-data.frame(
  ID=c(1,2,3,4,5,6,7,8),
  Salary=c(40754,39040,65043,
            45000,69000,25896,
           45222,33669)
)
res<-data%>%filter(Salary>50000)
print(res)
write.csv(data,"Salary.csv",row.names = FALSE)

data1<-data.frame(
  ID=c(1,2,3,4,5,6,7),
  Name=c("Annh","Bob","Charlie","Denny","Jessica","Flora","Evan"),
  Department=c("IT","Tech","Sales","HR","Marketing","IT","Tech"),
  Age=c(24,33,26,42,22,30,25),
  Gender=c("Female","Male","Female","Male","Female","Female","Male")
)
data1
write.csv(data1,"Employee.csv",row.names= FALSE)