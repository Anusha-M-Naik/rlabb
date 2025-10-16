library(dplyr)
dataset1<- read.csv("Salary.csv")
dataset2<- read.csv("Employee.csv")
dataset1
dataset2
merged<- merge(dataset1,dataset2,by="ID")
print("Merged_data:")
print(merged)


aggregated<- merged%>% group_by(Gender)%>% summarise(
  total_salary=sum(Salary),average_age=mean(Age),
  count=n()
)
print("Aggregated data")
print(aggregated)

filtered<-merged%>%filter(Age>25)
print("Filtered data")
print(filtered)

transformed<- merged%>%
  mutate(Double_salary=Salary*2,Seniority=ifelse(Age>35,"Senior","Junior"))
transformed
