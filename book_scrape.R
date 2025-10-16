library(rvest)
url<-"http://books.toscrape.com/"
html_content<- read_html(url)
html_content
title_xpath<-'//*[@class="product_pod"]/h3/a'

price_xpath<-'//*[@class="product_pod"]/div[2]/p[1]'
title<-html_content %>% html_nodes(xpath=title_xpath)%>%html_text()%>%trimws()
print(title)
price<-html_content %>% html_nodes(xpath=price_xpath)%>%html_text()%>%trimws()
print(price)
book_data<- data.frame(Title=title,Price=price)
book_data