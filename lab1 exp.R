#a
v<-seq(5,60,by=5)
cat("vector values are:",v,"\n")
filtered_vector<-v[v>15&v<45]
cat("values greater than 15 and less than 45 are:",filtered_vector,"\n")


#b
my_vector<-c(1,2,3,4,5)
my_matrix<- matrix(1:9,nrow=3,ncol=3)
my_nested_list<- list(
  sub_vector=c("a","b","c"),
  sub_number=42
)
my_list<- list(
  vector=my_vector,
  matrix=my_matrix,
  nested_list=my_nested_list
)
print(my_list)
print(names (my_list))

for(name in names(my_list)){
  element_class<- class(my_list[[name]])
  cat("Class of",name,":",element_class,"\n")
}
print("Number of objects in the said list:")
length(my_list)
print("Length of the Vector'vector'in the said list")
length(my_list[[1]])#or my_list$vector
length(my_list$vector)

#c
matrix1<- matrix(c(2,1,1,1,-1,1,1,2),nrow=3,ncol=3)
print(matrix1)
matrix2<- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
print(matrix2)
matrix1+matrix2
print("Adiition of matrix")
matrix1-matrix2
print("subtraction of matrix ")
t=matrix1%*%t(matrix2)
print(t)


print("column sum")
colSums(matrix1)
print("Means across rows")
apply(matrix1,1,mean)
print("Total sums")
sum(matrix1)
apply(matrix1,1,sum)
apply(matrix1,c(1,2),sum)
print("Matrix elements in sorted order column wise")
apply(matrix1,2,sort)