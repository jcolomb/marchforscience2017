#install.packages("rtweet")
#install.packages("twitteR")
#install.packages("rtweet")
library(rtweet)
library(tidyverse)


twitter_token <- create_token(
  app = "rtweet_m4s",
  consumer_key = "x9frdMtf1OHhC1B4CHAGuCLdH",
  consumer_secret = "grMYAu38PsigzyqkkOmsM6RmQUbrwPMkuTX78af8uFOQjjF9kB")

myfollowers =get_followers("ScienceMarchBER", n = 75000, page = "-1", parse = TRUE,
                           as_double = FALSE, token = NULL)

library(twitteR)

setup_twitter_oauth("zCZhNn3nLuq0f6M2p4zqJtNse",
                    "HRJZse5ORKXwfBSbhUEsLgKtJxBj6planABNkOJW1UjfRrYe3s",
                    "826856127140941825-sw3EqyAR6Zxu18Z3Jw0acIV647c48jn",
                    "KAPwVA8ZKyVRZKt2DuGTTw28eTgaF4cMDJXe3avFWJCVX"
)


b= myfollowers [,1]
text = "Please continue \nhave a look at that beautiful moment we had (and RT it): https://twitter.com/ScienceMarchBER/status/855768764821983233"
test= "9437692"
#text= "test"

Done=c()

todo=c(1:length(b))

Done=c(Done,i)
for (i in todo[!todo %in% Done]){
  print(i)
  test = b[i]
  name= getUser(test)
  dmSend(paste0("https://twitter.com/ScienceMarchBER/status/856468228230524932 We want to thank you for your support ",name$name), test)
  dmSend(paste0( text), test)
  #dmSend(text2, test)
  Done=c(Done,i)
}

slogan_list_Sheet1 <- read_csv("~/Downloads/slogan list - Sheet1.csv")


NSlist = c()
for (i in c(38:40)){
  ns <- updateStatus(slogan_list_Sheet1$statements[i])
  NSlist = c(NSlist,ns)
  #ns2 <- updateStatus(paste0(text, " https://twitter.com/ScienceMarchBER/status/",ns$id))
  Sys.sleep(60)
}

ÖÖÖ+
  
  ÜÜ++
  
  PPP



i= 1
ns <- updateStatus(slogan_list_Sheet1$statements[i])

text="#marchforscience,
#sciencemarchber
Saturday in #berlin https://t.co/nmzUPVp7W4
"

text="#marchforscience
& bring friends
Saturday in #berlin https://t.co/nmzUPVp7W4
"



nchar(paste0(text, " https://twitter.com/ScienceMarchBER/status/",ns$id))


# users=lookupUsers (b, includeNA=T)
# 
# us_loc<- lapply(users, function(x) c(x$name, x$location, x$statusesCount))
# us_loc <- data.frame(matrix(unlist(us_loc), ncol=3, byrow=T))
# us_loc %>% filter( "X2" == "Berlin, Germany" )
# 
# 
# source("http://biostat.jhsph.edu/~jleek/code/twitterMap.R") #- See more at: http://simplystatistics.tumblr.com/post/14568185310/an-r-function-to-map-your-twitter-followers#sthash.98kXZ8V6.dpuf
# twitterMap("sciencemarchber",fileName="twitterMap.pdf",nMax = 1000,plotType=c("followers")) 


b= search_tweets("#marchforscience", n= 18000, include_rts = FALSE)

a2 = a %>% arrange(desc(retweet_count))

b= search_tweets("#marchforscience", n= 100000, retryonratelimit = TRUE, include_rts = FALSE)
c= search_tweets("#marchforscience", n= 5, retryonratelimit = F, include_rts = FALSE, maxid= "856169976717291521")



c= search_tweets("#sciencemarchber", n= 18000)