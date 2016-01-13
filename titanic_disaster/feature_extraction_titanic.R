feature_extraction_titanic<-function(titanic){
titanic=titanic[,-1]
titanic=titanic[,-3]
titanic=titanic[,-9]
titanic=titanic[,-7]

titanic$Age[is.na(titanic$Age)]=mean(titanic$Age,na.rm=TRUE)
titanic$Embarked[is.na(titanic$Embarked)]="S"
titanic$Age[titanic$Age<18]=1
titanic$Age[titanic$Age>17 & titanic$Age<30]=2
titanic$Age[titanic$Age>29 & titanic$Age<40]=3
titanic$Age[titanic$Age>39 & titanic$Age<50]=4
titanic$Age[titanic$Age>49]=5

titanic$Fare[is.na(titanic$Fare)]=1
titanic$Fare[titanic$Fare<51]=1
titanic$Fare[titanic$Fare>50 & titanic$Fare<101]=2
titanic$Fare[titanic$Fare>100]=3
titanic$Fare<-as.factor(titanic$Fare)
titanic$Age<-as.factor(titanic$Age)
titanic$SibSp<-as.factor(titanic$SibSp)
titanic$Pclass<-as.factor(titanic$Pclass)
titanic$Parch<-as.factor(titanic$Parch)
titanic$Survived<-as.factor(titanic$Survived)
return(titanic)
}
