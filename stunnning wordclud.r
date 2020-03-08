modi<-readLines("C:/Users/PRIYANSHU/Desktop/word file/modi speech at Red fort.txt")
modi
library(tm)
modi_corpus<-Corpus(VectorSource(modi))
inspect(modi_corpus)

##cleaning the text
modi_clean_corpus<-tm_map(modi_corpus,tolower)
modi_clean_corpus<-tm_map(modi_corpus,removeNumbers)
modi_clean_corpus<-tm_map(modi_corpus,removePunctuation)
modi_clean_corpus<-tm_map(modi_corpus,stripWhitespace)
modi_clean_corpus<-tm_map(modi_corpus,removeWords,stopwords())
modi_clean_corpus<-tm_map(modi_corpus,stemDocument)
inspect(modi_clean_corpus[1:40])
library(wordcloud)
wordcloud(modi_clean_corpus,min.freq = 3)
wordcloud(modi_clean_corpus,min.freq = 3,colors=brewer.pal(8,"Set2"),random.order = F,rot.per = .50)



