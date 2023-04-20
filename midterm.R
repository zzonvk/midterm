install.packages("graphics")
install.packages("MASS")
install.packages("psych")
install.packages("cluster")
install.packages("factoextra")
library(graphics);
library(MASS);
library(psych);
library(cluster);
library(factoextra);

data("USArrests")
a <- head(USArrests)
a
df = data.frame(a) 
df
#행 이름 추출
foo <- names(df)
foo
#Assault열 추출
bar <- df[2]
bar
#foo와 bar 결합
foobar <- merge(foo,bar)
foobar
#wordcloud 설치
install.packages("wordcloud")
library(wordcloud)
wordcloud(words =foobar$x , freq = foobar$Assault)
#foobar 데이터프레임 저장
write.csv(foobar,file="foobar.csv")
#foo,bar삭제
rm(foo)
foo
rm(bar)
bar
rm(a)
a
rm(foobar)
foobar
