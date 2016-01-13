###Feature_Extraction function
feature_extraction<-function(airbnb){
  ## all the features not needed is taken out
  airbnb<-airbnb[,-1]
  airbnb<-airbnb[,-(2:4)]
  airbnb<-airbnb[,-(3:11)]
  ##feature extraction of date_account_created
  airbnb$date_account_created=month(airbnb$date_account_created)
  ##feature extraction of timestamp_first_active
  ##not needed
  ##feature extraction of age
  airbnb$age<-ceiling(airbnb$age/5)
  ##data type to factor
  airbnb$date_account_created=as.factor(airbnb$date_account_created)
  airbnb$age=as.factor(airbnb$age)
  airbnb$`newtimestamp$hour`=as.factor(airbnb$`newtimestamp$hour`)
  airbnb$`newtimestamp$mon`=as.factor(airbnb$`newtimestamp$mon`)
  return(airbnb)
}
