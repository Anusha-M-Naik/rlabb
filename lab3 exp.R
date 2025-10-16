s<- readline(prompt="Enter the name")
str_operation=function(v){
  char_total=nchar(v)
  upper_case=toupper(v)
  s=nchar(v)+1
  mid_char=substring(v,s%/%2,(s+1)%/%2)
  cat("\n Total number of character in string: \n",char_total)
  cat("\n Upper case string:" ,upper_case)
  cat("\n middle character",mid_char)
}

str_operation(s)



a<-readline(prompt="String name")
b<- substring(a,1:nchar(a),1:nchar(a))
print(b)
str<-paste(b,sep = "",collapse="")
print(str)
rev_str<- paste(rev(b),sep="",collapse = "")
if(str==rev_str)
  cat(str,"is palindrome")else
    cat(str,"is not palindrome")

.libPaths()

search()
library()




