titanic_data <- read.csv("train.csv")


titanic_male <- subset(titanic_data, Sex == "male")
titanic_male <- subset(titanic_male, select = -Sex)
titanic_remaining <- subset(titanic_male, Pclass == 2)
titanic_remaining <- subset(titanic_remaining, select = -Pclass)
titanic_remaining <- subset(titanic_remaining, select = -Name)
titanic_remaining <- subset(titanic_remaining, select = - PassengerId)

#Passenger is 95% most likely to survive if the person is a female or if he didnot travel in Pclass 2 or if he didn't embark from station "Q"
(sum(subset(titanic_data, Sex == "female")$Survived) + sum(subset(titanic_male, Pclass != 2)$Survived)+sum(subset(titanic_remaining,Embarked != "Q")$Survived))/sum(titanic_data$Survived)