library(rvest)
url<-"https://quotes.toscrape.com/"
html_content<- read_html(url)
html_content

quote_xpath<-'//*[@class="quote"]/span[1]'
author_xpath<-'//*[@class="quote"]/span[2]/small'

quotes<-html_content%>%html_nodes(xpath=quote_xpath)%>%html_text()%>%trimws()
print(quotes)
author<-html_content%>%html_nodes(xpath=author_xpath)%>%html_text()%>%trimws()
print(author)
quote_data<- data.frame(Quote=quotes,Author=author)
print(quote_data)
write.csv(quote_data,"Quotes.csv",row.names=FALSE)

