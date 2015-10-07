library(rpart)
data("solder")


#80% traning data , 20%test data
indx = sample(1:nrow(solder) , 0.2*nrow(solder))
length(indx)
train = solder[indx,]
print(train)
test= solder[-indx,]
print(test)
str(solder)
print(train)
fit_sold <- rpart(Solder ~ Opening + Mask + PadType + Panel + skips , data = train, parms = list(split="information"))

#important values for tree construction
print("Important values of Tree for data - solder")
printcp(fit_sold)
plot(fit_sold,margin = 0.05); text(fit_sold,use.n = TRUE )

# cp chosen for which xerror is minimum
print("best parameter")
print("value of cp for min xerror")
print(fit_sold$cptable)
#par(mar = rep(1,4))

#pruning tree with obtained cp
temp <- which.min(fit_sold$cptable[,"xerror"])
cpp <- fit_sold$cptable[temp,"CP"]
ptree<- prune(fit_sold, cp= cpp)
plot(ptree,margin = 0.05); text(ptree,use.n = TRUE)
predited <- predict(ptree , test , type = c("class"))

#getting accuracy of test data from pruned tree
accuracy = sum(predited == test$Solder)/nrow(test)
print(" Accuracy of the pruned tree is:")
print(accuracy)


#90% traning data , 10%test data
indx = sample(1:nrow(solder) , 0.1*nrow(solder))
length(indx)
train = solder[indx,]
print(train)
test= solder[-indx,]
print(test)
str(solder)
print(train)
fit_sold <- rpart(Solder ~ Opening + Mask + PadType + Panel + skips , data = train, parms = list(split="information"))

#important values for tree construction
print("Important values of Tree for data - solder")
printcp(fit_sold)
plot(fit_sold,margin = 0.05); text(fit_sold,use.n = TRUE )

# cp chosen for which xerror is minimum
print("best parameter")
print("value of cp for min xerror")
print(fit_sold$cptable)
#par(mar = rep(1,4))

#pruning tree with obtained cp
temp <- which.min(fit_sold$cptable[,"xerror"])
cpp <- fit_sold$cptable[temp,"CP"]
ptree<- prune(fit_sold, cp= cpp)
plot(ptree,margin = 0.05); text(ptree,use.n = TRUE)
predited <- predict(ptree , test , type = c("class"))

#getting accuracy of test data from pruned tree
accuracy = sum(predited == test$Solder)/nrow(test)
print(" Accuracy of the pruned tree is:")
print(accuracy)
